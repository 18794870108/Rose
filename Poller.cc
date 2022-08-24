#include "Poller.h"
#include "Channel.h"

Poller::Poller(EventLoop* loop):m_ownLoop(loop)
{

}

Poller::~Poller() = default;

bool Poller::hasChannel(Channel* channel)const 
{
    auto it = m_channels.find(channel->fd());
    if(it!=m_channels.end() && it->second==channel)
        return true;
    return false;
}