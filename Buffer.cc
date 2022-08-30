#include "Buffer.h"

#include <errno.h>
#include <sys/uio.h>
#include <unistd.h>

void Buffer::makespace(size_t len)
{
    if(writeableBytes()+perPendBytes()<len+perPend)
    {
        m_buffer.resize(m_writeIndex+len);
    }
    else
    {
        size_t readable = readableBytes();
        std::copy(begin()+m_readIndex,
                  begin()+m_writeIndex,
                  begin()+perPend);
        m_readIndex = perPend;
        m_writeIndex = m_readIndex+readable;
    }
}

void Buffer::append(const char* data,size_t len) 
{
    ensureWriteableBytes(len);
    std::copy(data,data+len,writeBegin());
    m_writeIndex+=len;
}

ssize_t Buffer::readFd(int fd,int* saveError)
{
    char extrabuf[65536] = {0};
    
    struct iovec vec[2];
    const size_t writeable = writeableBytes();
    
    vec[0].iov_base = begin()+m_writeIndex;
    vec[0].iov_len = writeable;
    vec[1].iov_base = extrabuf;
    vec[1].iov_len = sizeof(extrabuf);

    const int iovcont = (writeable<sizeof(extrabuf))?2:1;
    const int n = readv(fd,vec,iovcont);

    if(n<0)
    {
        *saveError = errno;
    }
    else if(n<=writeable)
    {
        m_writeIndex+=n;
    }
    else
    {
        m_writeIndex = m_buffer.size();
        append(extrabuf,n-writeable);   
    }

    return n;
}

ssize_t Buffer::writeFd(int fd,int* saveError)
{
    ssize_t n = ::write(fd,readableBegin(),readableBytes());
    if(n<0)
    {
        *saveError = errno;
    }
    return n;
}