#include "EventLoopThread.h"
#include "EventLoop.h"

EventLoopThread::EventLoopThread(const ThreadInitCallback& cb,const std::string& name)
    :m_loop(nullptr)
    ,is_exiting(false)
    ,m_thread(std::bind(&EventLoopThread::threadFunc,this),name)
    ,m_mutex()
    ,m_cond()
    ,m_callback(cb)
{

}

EventLoopThread::~EventLoopThread()
{
    is_exiting = true;
    if(!m_loop)
    {
        m_loop->quit();
        m_thread.join();
    }
}

EventLoop* EventLoopThread::startLoop()
{
    m_thread.start();

    EventLoop* loop = nullptr;

    {
        std::unique_lock<std::mutex> lock(m_mutex);
        while(loop)
        {
            m_cond.wait(lock);
        }
        loop = m_loop;
    }

    return loop;
}

void EventLoopThread::threadFunc()
{
    EventLoop loop;//core of one loop per thread
    if(m_callback)
    {
        m_callback(&loop);
    }

    {
        std::unique_lock<std::mutex> lock(m_mutex);
        m_loop = &loop;
        m_cond.notify_one();
    }

    loop.loop();
    std::unique_lock<std::mutex> lock(m_mutex);
    m_loop = nullptr;
}