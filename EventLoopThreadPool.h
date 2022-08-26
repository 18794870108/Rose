#pragma once

#include "noncopyable.h"
#include "EventLoopThread.h"

#include <functional>
#include <string>
#include <vector>

class Thread;
class EventLoop;

class EventLoopThreadPool:noncopyable
{
public:
    using ThreadInitCallback = std::function<void(EventLoop*)>;
    EventLoopThreadPool(EventLoop* baseLoop,const std::string& nameArg);
    ~EventLoopThreadPool();

    void setThreadPoolNumber(int numThreads) {m_numThread = numThreads;}
    
    void start(const ThreadInitCallback& cb);

    EventLoop* getNextLoop();//round robin

    bool started() {return is_started;}
    const std::string name() const {return m_name;}

private:
    EventLoop*                                      m_baseLoop;
    std::string                                     m_name;
    bool                                            is_started;
    int                                             m_numThread;
    int                                             m_next;
    std::vector<std::unique_ptr<EventLoopThread>>   m_threads;
    std::vector<EventLoop*>                         m_loops;
};