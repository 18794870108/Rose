#include "EPollPoller.h"
#include "Logger.h"
#include "error.h"
#include "Channel.h"

#include <unistd.h>
#include <strings.h>

constexpr int EventNew = -1;
constexpr int EventAdded = 1;
constexpr int EventDelete = 2;

EPollPoller::EPollPoller(EventLoop* loop):
    Poller(loop),
    m_epollfd(::epoll_create1(EPOLL_CLOEXEC)), //man epoll_create
    m_events(InitEventListSize)

{
    if(m_epollfd<0)
    {
        LOG_FATAL("create epollfd error: %d \n",errno);
    }
}

EPollPoller::~EPollPoller()
{
    ::close(m_epollfd);
}

void EPollPoller::updateChannel(Channel* channel)
{
    const int status = channel->status();
    LOG_INFO("function => %s fd=%d events=%d status=%d \n",__FUNCTION__,channel->fd(),channel->events(),channel->status());
    if(status==EventNew||status==EventDelete)
    {
        if(status==EventNew)
        {   
            int fd = channel->fd();
            m_channels[fd] = channel;
        }
        channel->set_status(EventAdded);
        update(EPOLL_CTL_ADD,channel);
    }
    else 
    {
        int fd = channel->fd();
        if(channel->isNoneEvent())
        {
            update(EPOLL_CTL_DEL,channel);
            channel->set_status(EventDelete);
        }
        else
        {
            update(EPOLL_CTL_MOD,channel);
        }
    }
}

void EPollPoller::removeChannel(Channel* channel)
{
    LOG_INFO("function: %s\n",__FUNCTION__);

    int fd = channel->fd();
    if(m_channels.find(fd)!=m_channels.end())
    {
        m_channels.erase(fd);
    }
    int status = channel->status();
    if(status==EventAdded)
    {
        update(EPOLL_CTL_DEL,channel);
    }
    channel->set_status(EventNew);// why?
}

Timestamp EPollPoller::poll(int timeoutMS,ChannelList* activeChannels)
{
    LOG_INFO("function: %s , numbers of fd:%d\n",__FUNCTION__,static_cast<int>(m_channels.size()));
    int numEvents = epoll_wait(m_epollfd,&(*(m_events.begin())),m_events.size(),timeoutMS);
    int Errno = errno;
    Timestamp currentTime(Timestamp::now());

    if(numEvents>0)
    {
        LOG_INFO("%d socket(s) becoming activity",numEvents);
        fillActiveChannels(numEvents,activeChannels);
        if(numEvents==m_events.size())
        {
            m_events.resize(m_events.size()*2);
        }
    }
    else if(numEvents==0)
    {
        LOG_DEBUG("function %s timeout!||nothing happened",__FUNCTION__);
    }

    else
    {
        if(Errno!=EINTR);//The function was interrupted by a signal, which was caught by a signal handler in the program
        errno  = Errno;
        LOG_ERROR("EPOLLPoller::poll error!");
    }
    return currentTime;
}

void EPollPoller::fillActiveChannels(int numEvents,ChannelList* activeChannels)
{
    for(int i = 0;i<numEvents;++i)
    {
        Channel* channel = static_cast<Channel*>(m_events[i].data.ptr);
        channel->set_revents(m_events[i].events);
        activeChannels->push_back(channel);
    }
}

void EPollPoller::update(int operation,Channel* channel)
{
    int fd = channel->fd();

    struct epoll_event event;
    bzero(&event,sizeof(epoll_event));
    
    event.events = channel->events();
    event.data.fd = fd;
    event.data.ptr = channel;

    if(epoll_ctl(m_epollfd,operation,fd,&event)<0)
    {
        if(operation==EPOLL_CTL_DEL)
        {
            LOG_ERROR("EPOLL_CTL_DEL: %d\n",errno);
        }
        else
        {
            LOG_ERROR("EPOLL_CTL_ADD/MOD: %d\n",errno);
        }
    }
}