#include "Socket.h"
#include "Logger.h"
#include "InetAddress.h"

#include <unistd.h>
#include <netinet/tcp.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <strings.h>

Socket::~Socket()
{
    ::close(m_sockfd);
}

void Socket::bindAddress(const InetAddress& localaddr)
{
    if(::bind(m_sockfd,(sockaddr*)localaddr.getSockAddr(),sizeof(sockaddr_in))!=0)
    {
        LOG_FATAL("bind socket fail: %d\n", m_sockfd);
    }
}

void Socket::listen()
{
    if(::listen(m_sockfd,1024))
    {
        LOG_FATAL("listen socket %d error\n",m_sockfd);
    }
}


int Socket::accept(InetAddress* peeraddr)
{
    sockaddr_in addr;
    socklen_t len;
    bzero(&addr,sizeof(addr));
    int connfd = ::accept(m_sockfd,(sockaddr*)&addr,&len);
    if(connfd>=0)
    {
        peeraddr->setSockAddr(addr);
    }
    return connfd;
}

void Socket::shutdownWrite()
{
    if(::shutdown(m_sockfd,SHUT_WR)<0)
    {
        LOG_ERROR("socket shutdownwrite error");
    }
}

void Socket::setTCPNoDeplay(bool on)
{
    int option = on?1:0;
    ::setsockopt(m_sockfd,IPPROTO_TCP,TCP_NODELAY,&option,sizeof option);
}

void Socket::setReuseAddr(bool on)
{
    int option = on?1:0;
    ::setsockopt(m_sockfd,SOL_SOCKET,SO_REUSEADDR,&option,sizeof option);
}

void Socket::setReusePort(bool on)
{
    int option = on?1:0;
    ::setsockopt(m_sockfd,SOL_SOCKET,SO_REUSEPORT,&option,sizeof option);
}

void Socket::setKeepAlive(bool on)
{
    int option = on?1:0;
    ::setsockopt(m_sockfd,SOL_SOCKET,SO_KEEPALIVE,&option,sizeof option);
}