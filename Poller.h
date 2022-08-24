#pragma once

#include "noncopyable.h"
#include "Timestamp.h"
#include "Channel.h"

#include <vector>
#include <unordered_map>

class EventLoop;

//encapsatulate epoll

class Poller
{
public:
    using ChannelList = std::vector<Channel*>;

    Poller(EventLoop* loop);
    virtual ~Poller();

    virtual Timestamp poll(int timeoutMS,ChannelList* activeChannels) = 0;
    virtual void updateChannel(Channel* channel) = 0;
    virtual void removeChannel(Channel* channel) = 0;

    bool hasChannel(Channel* channel) const;

    //EventLoop get poller
    static Poller* newDefaultPoller(EventLoop* loop);
protected:
    using ChannelMap = std::unordered_map<int,Channel*>;
    ChannelMap m_channels;
private:
    EventLoop* m_ownLoop;
};