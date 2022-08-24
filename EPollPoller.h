#pragma once

#include "Poller.h"
#include "Timestamp.h"

#include <vector>
#include <sys/epoll.h>

class EPollPoller:public Poller
{
public:
    EPollPoller(EventLoop* loop);
    ~EPollPoller();

    virtual Timestamp poll(int timeoutMS,ChannelList* activeChannels) override;
    virtual void updateChannel(Channel* channel) override;
    virtual void removeChannel(Channel* channel) override;

private:
    using EventList = std::vector<epoll_event>;

    static const int InitEventListSize = 16;

    void fillActiveChannels(int numEvents,ChannelList* activeChannels);

    void update(int operation,Channel* channel);

    int         m_epollfd;
    EventList   m_events;
};