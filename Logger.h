#pragma once

#include "noncopyable.h"
#include <string>

#define LOG_INFO(logmsgFormat,...) \
    do \
    { \
        Logger& logger  = Logger::instance(); \
        logger.setLogLevel(INFO); \
        char buf[1024] = {0}; \
        snprintf(buf,1024,logmsgFormat,##__VA_ARGS__); \
        logger.wirteLog(buf); \
    }while(0)

#define LOG_ERROR(logmsgFormat,...) \
    do \
    { \
        Logger& logger  = Logger::instance(); \
        logger.setLogLevel(LOG_ERROR); \
        char buf[1024] = {0}; \
        snprintf(buf,1024,logmsgFormat,##__VA_ARGS__); \
        logger.wirteLog(buf); \
    }while(0)

#define LOG_FATAL(logmsgFormat,...) \
    do \
    { \
        Logger& logger  = Logger::instance(); \
        logger.setLogLevel(LOG_FATAL); \
        char buf[1024] = {0}; \
        snprintf(buf,1024,logmsgFormat,##__VA_ARGS__); \
        logger.wirteLog(buf); \
    }while(0)

#ifdef ROSEDEBUG
#define LOG_DEBUG(logmsgFormat,...) \
    do \
    { \
        Logger& logger  = Logger::instance(); \
        logger.setLogLevel(LOG_DEBUG); \
        char buf[1024] = {0}; \
        snprintf(buf,1024,logmsgFormat,##__VA_ARGS__); \
        logger.log(buf); \
    }while(0)
#else
    #define LOG_DEBUG(logmsgFormat,...)
#endif

enum LogLevel
{
    INFO,
    ERROR,
    FATAL,
    DEBUG,
};

class Logger:public noncopyable
{
public:
    static Logger& instance();
    void setLogLevel(int level);
    void wirteLog(std::string msg);
private:
    int logLevel;
    Logger(){}
};