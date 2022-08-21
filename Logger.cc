#include "Logger.h"
#include "Timestamp.h"

#include <iostream>

Logger& Logger::instance()
{
    static Logger logger;
    return logger;
}

void Logger::setLogLevel(int level)
{
    logLevel = level;
}

void Logger::wirteLog(std::string msg)
{
    switch(logLevel)
    {
        case INFO:
            std::cout<<"[INFO]";
            break;
        case ERROR:
            std::cout<<"[ERROR]";
            break;
        case DEBUG:
            std::cout<<"[DEBUG]";
            break;
        case FATAL:
            std::cout<<"[FATAL]";
            break;
        default:
            break;
    }

    std::cout<<Timestamp::now().tostring()<<": "<<msg<<std::endl;
}