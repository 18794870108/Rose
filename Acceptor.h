#pragma once

#include "noncopyable.h"
#include "EventLoop.h"
#include "InetAddress.h"
#include "Socket.h"
#include "Channel.h"

#include <functional>

class Acceptor
{
public:
    using NewConnectionCallback = std::function<void(int sockfd,const InetAddress&)>;
    
    Acceptor(EventLoop* loop,const InetAddress& listenaddr,bool reuseport);
    ~Acceptor();

    void setNewConnectionCallback(const NewConnectionCallback& cb)
    {
        m_newConnectCallback = std::move(cb);
    }

    bool listenning() const {return is_listenning;}
    void listen();

private:
    void handleRead();

    EventLoop*                  m_loop;
    Socket                      m_acceptScoket;
    Channel                     m_acceptChannel;
    NewConnectionCallback       m_newConnectCallback;
    bool                        is_listenning;
};