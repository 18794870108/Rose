#include "TcpServer.h"
#include "Logger.h"

EventLoop* checkLoopNotNull(EventLoop* loop)
{
    if(loop==nullptr)
    {
        LOG_FATAL("mainLoop is null");
    }
    return loop;
}

TcpServer::TcpServer(EventLoop* loop,InetAddress& listenaddr,const std::string& nameArg,Option op)
    :m_loop(checkLoopNotNull(loop)),
    m_ipPort(listenaddr.toIpPort()),
    m_name(nameArg),
    m_acceptor(new Acceptor(loop,listenaddr,op = kReusePort)),
    m_threadPool(new EventLoopThreadPool(loop,m_name)),
    m_nextId(1)
{
    m_acceptor->setNewConnectionCallback(std::bind(&TcpServer::newConnection,this,
            std::placeholders::_1,std::placeholders::_2));//new user wanna connect ,this cb will be executed

}

TcpServer:: ~TcpServer()
{

}

void TcpServer::newConnection(int sockfd,const InetAddress& peeraddr)
{

}

void TcpServer::setThreadNum(int numThreads)
{
    m_threadPool->setThreadPoolNumber(numThreads);
}

void TcpServer::start()
{
    if(m_started++==0)
    {
        m_threadPool->start(m_ThreadInitCallback);
        m_loop->runInLoop(std::bind(&Acceptor::listen,m_acceptor.get()));
    }
}