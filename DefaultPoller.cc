#include "Poller.h"
#include "EPollPoller.h"

Poller* Poller::newDefaultPoller(EventLoop* loop)
{
    if(::getenv("ROSE_USE_POLL"))
    {
        return nullptr;
    }
    else
    {
        return new EPollPoller(loop);
    }
}