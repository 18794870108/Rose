#include "TcpServer.h"
#include "Logger.h"
#include "TcpConnection.h"

#include <strings.h>
#include <sys/socket.h>

EventLoop *checkLoopNotNull(EventLoop *loop)
{
    if (loop == nullptr)
    {
        LOG_FATAL("mainLoop is null");
    }
    return loop;
}

TcpServer::TcpServer(EventLoop *loop, InetAddress &listenaddr, const std::string &nameArg, Option op)
    : m_loop(checkLoopNotNull(loop)),
      m_ipPort(listenaddr.toIpPort()),
      m_name(nameArg),
      m_acceptor(new Acceptor(loop, listenaddr, op = kReusePort)),
      m_threadPool(new EventLoopThreadPool(loop, m_name)),
      m_connectioncallback(),
      m_messageCallback(),
      m_nextId(1)
{
    m_acceptor->setNewConnectionCallback(std::bind(&TcpServer::newConnection, this,
                                                   std::placeholders::_1, std::placeholders::_2)); // new user wanna connect ,this cb will be executed
}

TcpServer::~TcpServer()
{
    for(auto & item:m_connections)
    {
        TcpConnectionPtr conn(item.second);
        item.second.reset();
        conn->getLoop()->runInLoop(std::bind(&TcpConnection::connectDestoryed,conn));
    }
}

void TcpServer::newConnection(int sockfd, const InetAddress &peeraddr)
{
    EventLoop *ioLoop = m_threadPool->getNextLoop();
    char buf[32] = {0};
    snprintf(buf, sizeof(buf), "-%s#%d", m_ipPort.c_str(), m_nextId);
    ++m_nextId;
    const std::string connName = m_name + buf;
    LOG_INFO("TcpServer::newConnection");
    sockaddr_in local;
    bzero(&local, sizeof local);
    socklen_t addrlen = sizeof(local);
    if (getsockname(sockfd, (sockaddr *)&local, &addrlen) < 0)
    {
        LOG_ERROR("socket getsockname error");
    }
    const InetAddress localAddr(local);
    TcpConnectionPtr conn(new TcpConnection(ioLoop, connName, sockfd, localAddr, peeraddr));
    m_connections[connName] = conn;
    conn->setConnectionCallback(m_connectioncallback);
    conn->setMessageCallback(m_messageCallback);
    conn->setWriteCompleteCallback(m_writeCompleteCallback);
    conn->setCloseCallback(std::bind(&TcpServer::removeConnection, this, std::placeholders::_1));
    ioLoop->runInLoop(std::bind(&TcpConnection::connectionEstablished, conn));
}

void TcpServer::setThreadNum(int numThreads)
{
    m_threadPool->setThreadPoolNumber(numThreads);
}

void TcpServer::start()
{
    if (m_started++ == 0)
    {
        m_threadPool->start(m_ThreadInitCallback);
        m_loop->runInLoop(std::bind(&Acceptor::listen, m_acceptor.get()));
    }
}

void TcpServer::removeConnection(const TcpConnectionPtr &conn)
{
    m_loop->runInLoop(std::bind(&TcpServer::removeConnectionInLoop,this,conn));
}

void TcpServer::removeConnectionInLoop(const TcpConnectionPtr &conn)
{
    LOG_INFO("TcpServer::removeConnectionInLoop");
    m_connections.erase(conn->name());
    EventLoop* ioLoop = conn->getLoop();
    ioLoop->queueInLoop(std::bind(&TcpConnection::connectDestoryed,conn));
}