#include "TcpConnection.h"
#include "Logger.h"

#include <functional>

static EventLoop* checkLoopNotNull(EventLoop* loop)
{
    if(loop==nullptr)
    {
        LOG_FATAL("Tcpconnection loop is null");
    }
    return loop;
}

TcpConnection::TcpConnection(EventLoop* loop,
                const std::string& name,
                int sockfd,
                const InetAddress& localaddress,
                const InetAddress& peeraddress):
    m_loop(checkLoopNotNull(loop)),
    m_name(name),
    m_state(Connecting),
    is_reading(true),
    m_socket(new Socket(sockfd)),
    m_channel(new Channel(loop,sockfd)),
    m_localAddr(localaddress),
    m_peerAddr(peeraddress),
    m_highWaterMark(64*1024*1024)
{
    m_channel->setReadCallback(std::bind(&TcpConnection::handleRead,this,std::placeholders::_1));
    m_channel->setWriteCallback(std::bind(&TcpConnection::handleWrite,this));
    m_channel->setCloseCallback(std::bind(&TcpConnection::handleClose,this));
    m_channel->setErrorCallback(std::bind(&TcpConnection::handleError,this));

    m_socket->setKeepAlive(true);
}


TcpConnection::~TcpConnection(){}


