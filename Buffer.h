#pragma once

#include <vector>
#include <sys/bitypes.h>
#include <string>

class Buffer
{
public:
    static const size_t     perPend = 8;
    static const size_t     initialSize = 1024;

    explicit Buffer(size_t initialBufferSize = initialSize)
        :m_buffer(perPend+initialSize),
        m_readIndex(perPend),
        m_writeIndex(perPend)
    {}

    char* begin() {return &(*m_buffer.begin());}

    size_t perPendBytes() const
    {
        return m_readIndex;
    }

    size_t readableBytes() const
    {
        return m_writeIndex-m_readIndex;
    }

    size_t writeableBytes() const
    {
        return m_buffer.size()-m_writeIndex;
    }

    const char* begin() const 
    {
        return &(*m_buffer.begin());
    }

    const char* readableBegin() const 
    {
        return begin()+m_readIndex;
    }

    char* writeBegin()
    {
        return begin()+m_writeIndex;
    }

    const char* writeBegin() const
    {
        return begin()+m_writeIndex;
    }

    void retrieve(size_t len)
    {
        if(len<m_readIndex)//not finsh read all readable Bytes
        {
            m_readIndex+=len;
        }
        else
        {
            retrieveAll();
        }
    }

    void retrieveAll()
    {
        m_readIndex = m_writeIndex = perPend;
    }

    std::string retrieveAllAsString()
    {
        retrieveAsString(readableBytes());
    }

    std::string retrieveAsString(size_t len)
    {
        std::string res(readableBegin(),len);
        retrieve(len);
        return res;
    }

    void ensureWriteableBytes(size_t len)
    {
        if(len>writeableBytes())
        {
            makespace(len);
        } 
    }

    void append(const char* data,size_t len);

    ssize_t readFd(int fd,int* saveError);
    ssize_t writeFd(int fd,int* saveError);

private:

    void makespace(size_t len);
    
    std::vector<char>       m_buffer;
    size_t                  m_readIndex;
    size_t                  m_writeIndex;
};