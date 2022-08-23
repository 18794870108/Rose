#pragma once

#include "noncopyable.h"
#include "Timestamp.h"

#include <vector>
#include <unordered_map>

class Channel;
class EventLoop;
//encapsatulate epoll

class Poller
{
public:
    using ChannelList = std::vector<Channel*>;

    Poller(EventLoop* loop);
    virtual ~Poller();

protected:
    using ChannelMap = std::unordered_map<int,Channel*>;
    ChannelMap m_channels;
private:
    EventLoop* m_owmLoop;
};