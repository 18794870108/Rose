#pragma once

#include "Channel.h"
#include "EventLoop.h"
#include "Socket.h"
#include "InetAddress.h"
#include "Callbacks.h"
#include "Buffer.h"

#include <memory>
#include <string>
#include <atomic>

class TcpConnection:noncopyable,public std::enable_shared_from_this<TcpConnection>
{
public:
    enum State{Disconnected,Connecting,Connected,Disconnecting};

    TcpConnection(EventLoop* loop,
                const std::string& name,
                int sockfd,
                const InetAddress& localaddress,
                const InetAddress& peeraddress);
    ~TcpConnection();

    EventLoop* getLoop() {return m_loop;}
    const std::string& name() {return m_name;}
    const InetAddress& localAddress() {return m_localAddr;}
    const InetAddress& peerAddress()  {return m_peerAddr;}

    bool connected() {return m_state==Connected;}
    void setstate(State s){m_state = s;}

    void shutdown();

    void setConnectionCallback(const ConnectionCallback& cb) {m_connectioncallback = cb;}
    void setMessageCallback(const MessageCallback& cb) {m_messageCallback =  cb;}
    void setWriteCompleteCallback(const WriteCompleteCallback& cb){m_writeCompleteCallback = cb;}
    void setHighWaterMarkCallback(const HighWaterMarkCallback& cb,size_t highwater)
    {
        m_highwaterCallback = cb;
        m_highWaterMark = highwater;
    }
    void setCloseCallback(const CloseCallback& cb){m_closeCallback = cb;}

    void connectionEstablished();
    void connectDestoryed();

private:
    void handleRead(Timestamp receiveTime);
    void handleWrite();
    void handleClose();
    void handleError();

    void send(std::string& buffer);
    void sendInLoop(const void* message,size_t len);
    
    void shutdownInLoop();

    EventLoop*                              m_loop;
    const std::string                       m_name;
    std::atomic<int>                        m_state;
    bool                                    is_reading;

    std::unique_ptr<Socket>                 m_socket;
    std::unique_ptr<Channel>                m_channel;

    const InetAddress                       m_localAddr;
    const InetAddress                       m_peerAddr;

    ConnectionCallback                      m_connectioncallback;
    MessageCallback                         m_messageCallback;
    WriteCompleteCallback                   m_writeCompleteCallback;
    HighWaterMarkCallback                   m_highwaterCallback;
    CloseCallback                           m_closeCallback;

    size_t                                  m_highWaterMark;

    Buffer                                  m_inputBuffer;
    Buffer                                  m_outputBuffer;
};