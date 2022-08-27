#include "Acceptor.h"
#include "Logger.h"

#include <sys/types.h>          /* See NOTES */
#include <sys/socket.h>
#include <unistd.h>

static int createNonblocking()
{
    int sockfd = ::socket(AF_INET,SOCK_STREAM|SOCK_NONBLOCK|SOCK_CLOEXEC,IPPROTO_TCP);
    if(sockfd<0)
    {
        LOG_FATAL("create listenfd error");
    }
}

Acceptor::Acceptor(EventLoop* loop,const InetAddress& listenaddr,bool reuseport)
    :m_loop(loop)
    ,m_acceptScoket(createNonblocking())
    ,m_acceptChannel(m_loop,m_acceptScoket.fd())
    ,is_listenning(false)
{
    m_acceptScoket.setReuseAddr(1);
    m_acceptScoket.setReusePort(1);
    m_acceptScoket.bindAddress(listenaddr);
    m_acceptChannel.setReadCallback(std::bind(&Acceptor::handleRead,this));
}

Acceptor::~Acceptor()
{
    m_acceptChannel.disableAll();
    m_acceptChannel.remove();
}

void Acceptor::listen()
{
    is_listenning = true;
    m_acceptScoket.listen();
    m_acceptChannel.enableReading();
}

void Acceptor::handleRead()
{
    InetAddress peeraddr;
    int connfd = m_acceptScoket.accept(&peeraddr);
    if(connfd>=0)
    {
        if(m_newConnectCallback)//round-robin
        {
            m_newConnectCallback(connfd,peeraddr);
        }
        else
        {
            ::close(connfd);
        }
    }
    else
    {
        LOG_ERROR("accpet error");
        if(errno==EMFILE)//man accept
        {
            LOG_ERROR("sockfd reached limit");
        }
    }
}