#include "Channel.h"
#include "Logger.h"
#include "EventLoop.h"

#include <sys/epoll.h>

const int Channel::KNoneEvent = 0;
const int Channel::KReadEvent = EPOLLIN|EPOLLPRI;
const int Channel::KWriteEvent = EPOLLOUT;

Channel::Channel(EventLoop* loop,int fd)
:m_loop(loop)
,m_fd(fd)
,m_events(0)
,m_revents(0)
,m_status(-1),
m_tied(false)
{}

Channel::~Channel()
{}

void Channel::tie(const std::shared_ptr<void>& obj)
{
    m_tie = obj;
    m_tied = true;
}

void Channel::update()
{
    m_loop->updateChannel(this);
}

void Channel::remove()
{
    m_loop->removeChannel(this);
}

void Channel::handleEvent(Timestamp receiveTime)
{
    std::shared_ptr<void> guard;
    if(m_tied)
    {
        guard = m_tie.lock();
        if(guard)
        {
            handleEventWithGuard(receiveTime);
        }
    }
    else
    {
        handleEventWithGuard(receiveTime);
    }
}

void Channel::handleEventWithGuard(Timestamp receivetime)
{
    LOG_INFO("channel hanleEvent revents:%d\n",m_revents);

    if((m_revents & EPOLLHUP)&& !(m_revents & EPOLLIN))//RST -> EPOLLHUP
    {
        if(m_closecallback)
        {
            m_closecallback();
        }
    }
    if(m_revents & EPOLLERR)
    {
        if(m_errorcallback)
        {
            m_errorcallback();
        }
    }
    if(m_revents & EPOLLIN && m_revents & EPOLLPRI)//OOB data -> EPOLLPRI
    {
        if(m_readcallback)
        {
            m_readcallback(receivetime);
        }
    }
    if(m_revents & EPOLLOUT)
    {
        if(m_writecallback)
        {
            m_writecallback();
        }
    }
}

int Channel::set_revents(int revents)
{
    m_revents = revents;
    return m_revents;
}