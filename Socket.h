#pragma once

#include "noncopyable.h"
#include "InetAddress.h"

class Socket:noncopyable
{
public:
    explicit Socket(int sockfd)
        :m_sockfd(sockfd)
    {}
    ~Socket();

    int fd() const {return m_sockfd;}
    void bindAddress(const InetAddress& localaddr);
    void listen();
    int accept(InetAddress* peeraddr);

    void shutdownWrite();

    void setTCPNoDeplay(bool on);
    void setReuseAddr(bool on);
    void setReusePort(bool on);
    void setKeepAlive(bool on);

private:
    const int m_sockfd;
};