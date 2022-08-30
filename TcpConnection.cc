#include "TcpConnection.h"
#include "Logger.h"

#include <functional>
#include <errno.h>
#include <memory>
#include <netinet/tcp.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <strings.h>
#include <string>
#include <unistd.h>

static EventLoop *checkLoopNotNull(EventLoop *loop)
{
    if (loop == nullptr)
    {
        LOG_FATAL("Tcpconnection loop is null");
    }
    return loop;
}

TcpConnection::TcpConnection(EventLoop *loop,
                             const std::string &name,
                             int sockfd,
                             const InetAddress &localaddress,
                             const InetAddress &peeraddress) : m_loop(checkLoopNotNull(loop)),
                                                               m_name(name),
                                                               m_state(Connecting),
                                                               is_reading(true),
                                                               m_socket(new Socket(sockfd)),
                                                               m_channel(new Channel(loop, sockfd)),
                                                               m_localAddr(localaddress),
                                                               m_peerAddr(peeraddress),
                                                               m_highWaterMark(64 * 1024 * 1024)
{
    m_channel->setReadCallback(std::bind(&TcpConnection::handleRead, this, std::placeholders::_1));
    m_channel->setWriteCallback(std::bind(&TcpConnection::handleWrite, this));
    m_channel->setCloseCallback(std::bind(&TcpConnection::handleClose, this));
    m_channel->setErrorCallback(std::bind(&TcpConnection::handleError, this));

    m_socket->setKeepAlive(true);
}

TcpConnection::~TcpConnection() {}

void TcpConnection::handleRead(Timestamp receiveTime)
{
    int savedErrno = 0;
    ssize_t n = m_inputBuffer.readFd(m_socket.get()->fd(), &savedErrno);
    if (n > 0)
    {
        m_messageCallback(shared_from_this(), &m_inputBuffer, receiveTime);
    }
    else if (n == 0)
    {
        handleClose();
    }
    else
    {
        errno = savedErrno;
        LOG_ERROR("handleRead error");
        handleError();
    }
}

void TcpConnection::handleWrite()
{
    if (m_channel->isWriting())
    {
        int saveErrno = 0;
        ssize_t n = m_outputBuffer.writeFd(m_socket.get()->fd(), &saveErrno);
        if (n > 0)
        {
            m_outputBuffer.retrieve(n);
            if (m_outputBuffer.readableBytes() == 0)
            {
                m_channel->disableWriting();
                if (m_writeCompleteCallback)
                {
                    m_loop->queueInLoop(std::bind(m_writeCompleteCallback, shared_from_this()));
                }
                if (m_state == Disconnecting)
                {
                    shutdownInLoop();
                }
            }
        }
        else
        {
            LOG_ERROR("Tcpconnection::handleWrite error");
        }
    }
    else
    {
        LOG_ERROR("Tcpconncetion fd: %d disablewriting", m_socket.get()->fd());
    }
}

void TcpConnection::handleClose()
{
    LOG_INFO("fd = %d,state = %d\n", m_channel->fd(), (int)m_state);
    setstate(Disconnected);
    m_channel->disableAll();
    TcpConnectionPtr connPtr(shared_from_this());
    //m_connectioncallback(connPtr);
    if (m_closeCallback)
    {
        m_closeCallback(connPtr);
    }
}

void TcpConnection::handleError()
{
    int optval;
    socklen_t optlen = sizeof(optval);
    int err = 0;
    if (::getsockopt(m_channel->fd(), SOL_SOCKET, SO_ERROR, &optval, &optlen) < 0)
    {
        err = errno;
    }
    else
    {
        err = optval;
    }
    LOG_ERROR("TcpConnection::handleError");
}

void TcpConnection::send(std::string &buffer)
{
    if (m_state = Connected)
    {
        if (m_loop->isInLoopThread())
        {
            sendInLoop(buffer.c_str(), buffer.size());
        }
        else
        {
            m_loop->runInLoop(std::bind(
                &TcpConnection::sendInLoop, this, buffer.c_str(), buffer.size()));
        }
    }
}

void TcpConnection::sendInLoop(const void *data, size_t len)
{
    ssize_t nwrite = 0;
    ssize_t remaining = len;
    bool faultError = false;
    if (m_state == Disconnected)
    {
        LOG_ERROR("disconnected cant writing");
        return;
    }
    if (!m_channel->isWriting() && m_outputBuffer.readableBytes() == 0)
    {
        nwrite = ::write(m_channel->fd(), data, len);
        if (nwrite >= 0)
        {
            remaining = len - nwrite;
            if (remaining == 0 && m_writeCompleteCallback)
            {
                m_loop->queueInLoop(std::bind(m_writeCompleteCallback, shared_from_this()));
            }
        }
        else
        {
            nwrite = 0;
            if (errno != EWOULDBLOCK)
            {
                LOG_ERROR("tcpconnection sendinloop error");
                if (errno == EPIPE || errno == ECONNRESET) // peer port close or sigpipe close sockfd
                {
                    faultError = true;
                }
            }
        }
    }
    if (!faultError && remaining > 0) // need buffer to receive rest of data
    {
        size_t oldlen = m_outputBuffer.readableBytes();
        if (oldlen + remaining >= m_highWaterMark && oldlen < m_highWaterMark && m_highwaterCallback)
        {
            m_loop->queueInLoop(std::bind(m_highwaterCallback, shared_from_this(), oldlen + remaining));
            m_outputBuffer.append((char *)data + nwrite, remaining);
            if (!m_channel->isWriting())
            {
                m_channel->enableWriting();
            }
        }
    }
}

void TcpConnection::connectionEstablished()
{
    setstate(Connected);
    m_channel->tie(shared_from_this());
    m_channel->enableReading();
    m_connectioncallback(shared_from_this());
}

void TcpConnection::connectDestoryed()
{
    if (m_state == Connected)
    {
        setstate(Disconnected);
        m_channel->disableAll();
        // m_connectioncallback(shared_from_this);
    }
    m_channel->remove();
}

void TcpConnection::shutdown()
{
    if (m_state == Connected)
    {
        setstate(Disconnecting);
        m_loop->runInLoop(
            std::bind(&TcpConnection::shutdownInLoop, this));
    }
}

void TcpConnection::shutdownInLoop()
{
    if(!m_channel->isWriting())//output buffer write finish
    {
        m_socket->shutdownWrite(); 
    }
}