#pragma once

#include "noncopyable.h"
#include "Thread.h"

#include <functional>
#include <EventLoop.h>
#include <condition_variable>
#include <string>
#include <mutex>

class EventLoopThread:noncopyable
{
public:
    using ThreadInitCallback = std::function<void(EventLoop*)>;

    EventLoopThread(const ThreadInitCallback& cb,const std::string& name = std::string{});
    ~EventLoopThread();

    EventLoop* startLoop();

private:
    void threadFunc();

    EventLoop*                  m_loop;
    bool                        is_exiting;
    Thread                      m_thread;
    std::mutex                  m_mutex;
    std::condition_variable     m_cond;
    ThreadInitCallback          m_callback;
}; 