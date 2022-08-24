#pragma once

#include "noncopyable.h"
#include "Timestamp.h"

#include <functional>
#include <memory>

class EventLoop;

class Channel:noncopyable
{
public:
    using EventCallback = std::function<void()>;
    using ReadEventCallback = std::function<void(Timestamp)>;

    Channel(EventLoop* loop,int fd);
    ~Channel();

    void handleEvent(Timestamp receiveTime);

    void setReadCallback(ReadEventCallback cb){m_readcallback = cb;}
    void setWriteCallback(EventCallback cb){m_writecallback = cb;}
    void setCloseCallback(EventCallback cb){m_closecallback = cb;}
    void setErrorCallback(EventCallback cb){m_errorcallback = cb;}

    void tie(const std::shared_ptr<void>&);//when channel is removed,it can not execute callback

    int fd(){return m_fd;}
    int events(){return m_events;}
    int set_revents(int revents);
    
    void enableReading(){m_events |= KReadEvent;} //update()..
    void enableWriting(){m_events |= KWriteEvent;}
    void disableReading(){m_events &= ~KReadEvent;} 
    void disableWriting(){m_events &= ~KWriteEvent;}
    void disableAll(){m_events = KNoneEvent;}
    
    bool isNoneEvent() const {return m_events == KNoneEvent;}
    bool isReading() const {return m_events & KReadEvent;}
    bool isWriting() const {return m_events & KWriteEvent;}
    
    int status(){return m_status;}
    void set_status(int status){m_status = status;}

    EventLoop* ownerloop() {return m_loop;}

    void remove();
private:
    static const int KNoneEvent;
    static const int KReadEvent;
    static const int KWriteEvent;

    void update();
    void handleEventWithGuard(Timestamp receiveTime); 

    EventLoop* m_loop;

    int m_fd;

    int m_events;
    int m_revents;
    int m_status;

    std::weak_ptr<void> m_tie;
    bool m_tied;

    ReadEventCallback m_readcallback;
    EventCallback m_writecallback;
    EventCallback m_closecallback;
    EventCallback m_errorcallback; 
};