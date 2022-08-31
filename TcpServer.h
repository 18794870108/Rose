#pragma once

#include "EventLoop.h"
#include "Acceptor.h"
#include "noncopyable.h"
#include "EventLoopThreadPool.h"
#include "Callbacks.h"

#include <functional>
#include <string>
#include <unordered_map>

class TcpServer
{
public:
    using ThreadInitCallback = std::function<void(EventLoop* loop)>;

    enum Option
    {
        kNoReusePort,
        kReusePort,
    };

    TcpServer(EventLoop* loop,InetAddress& listenaddr,const std::string& nameArg,Option op = kNoReusePort);
    ~TcpServer();

    void setThreadNum(int numThreads);//the number of subloop
    void setConnectionCallback(const ConnectionCallback& cb) {m_connectioncallback = cb;}
    void setMessageCallback(const MessageCallback& cb) {m_messageCallback =  cb;}

    void start();

private:
    using ConnectionMap = std::unordered_map<std::string,TcpConnectionPtr>;

    void newConnection(int sockfd,const InetAddress& peeraddr);
    void removeConnection(const TcpConnectionPtr& conn);
    void removeConnectionInLoop(const TcpConnectionPtr& conn);

    EventLoop*                              m_loop;
    const std::string                       m_ipPort;
    const std::string                       m_name;
    std::unique_ptr<Acceptor>               m_acceptor;
    std::shared_ptr<EventLoopThreadPool>    m_threadPool;

    ConnectionCallback                      m_connectioncallback;
    MessageCallback                         m_messageCallback;
    WriteCompleteCallback                   m_writeCompleteCallback;
    ThreadInitCallback                      m_ThreadInitCallback;

    std::atomic<int>                        m_started;
    int                                     m_nextId;
    ConnectionMap                           m_connections;
};