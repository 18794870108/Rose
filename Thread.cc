#include "Thread.h"
#include "CurrentThread.h"

#include <semaphore.h>

std::atomic_int Thread::m_threadCnt{0};

Thread::Thread(ThreadFunc,const std::string& name)
    :m_started(false)
    ,m_joined(false)
    ,m_tid(0)
    ,m_func(std::move(ThreadFunc()))
    ,m_name(name)
{
    setDefaultName();
}

Thread::~Thread()
{
    if(m_started&&!m_joined)
    {
        m_thread->detach();
    }
}

void Thread::start()
{
    m_started = true;
    sem_t sem;
    sem_init(&sem,false,0);
    
    m_thread = std::shared_ptr<std::thread>(new std::thread([&]{
        m_tid = CurrentThread::tid();
        sem_post(&sem);
        m_func();
        }));
    
    sem_wait(&sem);
}

void Thread::join()
{
    m_joined = true;
    m_thread->join();
}

void Thread::setDefaultName()
{
    int num = ++m_threadCnt;
    if(m_name.empty())
    {
        char buf[32] = {0};
        snprintf(buf,sizeof(buf),"Thread:%d",num);
        m_name = buf;
    }
}