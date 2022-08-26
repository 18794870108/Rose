#pragma once

#include "noncopyable.h"

#include <functional>
#include <thread>
#include <memory>
#include <atomic>

class Thread:noncopyable
{
public:
    using ThreadFunc = std::function<void()>;

    explicit Thread(ThreadFunc,const std::string& name);
    ~Thread();

    void start();
    void join();

    bool started() const {return m_started;}
    pid_t tid() const {return m_tid;}
    const std::string& name() const {return m_name;}
    static int threadCnt() {return m_threadCnt;}

    void setDefaultName();

private:
    bool                            m_started;
    bool                            m_joined;
    std::shared_ptr<std::thread>    m_thread;
    pid_t                           m_tid;
    ThreadFunc                      m_func;
    std::string                     m_name;
    static std::atomic_int          m_threadCnt;
};