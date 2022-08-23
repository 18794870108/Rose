#include "Poller.h"

Poller* Poller::newDefaultPoller(EventLoop* loop)
{
    if(::getenv("ROSE_USE_POLL"))
    {
        return nullptr;
    }
    else
    {
        return nullptr;
    }
}