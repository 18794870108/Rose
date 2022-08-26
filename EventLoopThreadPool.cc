#include "EventLoopThreadPool.h"

#include <memory>

EventLoopThreadPool::EventLoopThreadPool(EventLoop* baseLoop,const std::string& nameArg)
    :m_baseLoop(baseLoop)
    ,m_name(nameArg)
    ,is_started(false)
    ,m_numThread(0)
    ,m_next(0)
{

}

EventLoopThreadPool::~EventLoopThreadPool(){}

void EventLoopThreadPool::start(const ThreadInitCallback& cb)
{
    is_started = true;

    for(int i = 0;i<m_numThread;++i)
    {
        char buf[m_name.size()+32];
        snprintf(buf,sizeof(buf),"%s%d",m_name.c_str(),i);
        EventLoopThread* t = new EventLoopThread(cb,buf);
        m_threads.push_back(std::unique_ptr<EventLoopThread>(t));
        m_loops.push_back(t->startLoop());
    }

    if(m_numThread == 0)
    {
        cb(m_baseLoop);
    }
}

EventLoop* EventLoopThreadPool::getNextLoop()
{
    EventLoop* loop = m_baseLoop;
    if(!m_loops.empty())
    {
        loop = m_loops[m_next];
        ++m_next;
        if(m_next>m_loops.size())
        {
            m_next = 0;
        }
    }
    
    return loop;
}