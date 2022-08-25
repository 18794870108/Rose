#pragma once

namespace CurrentThread
{
    extern thread_local int t_cachedTid;

    void cachedTid();

    inline int tid()
    {
        if(__builtin_expect(t_cachedTid==0,0)) //remind branch
        {
            cachedTid();
        }
        return t_cachedTid;
    }
}
