#include "Timestamp.h"

#include <time.h>

Timestamp Timestamp:: now()
{
    return Timestamp(time(nullptr));
}

Timestamp::Timestamp():m_microSecondSinceEpoch(0){}

Timestamp::Timestamp(int64_t microSecondSinceEpoch):m_microSecondSinceEpoch(microSecondSinceEpoch){}

std::string Timestamp::tostring() const
{
    char buf[128] = {0};
    tm* nowtime = localtime(&m_microSecondSinceEpoch);
    snprintf(buf,128,"%4d/%02d/%02d %02d:%02d:%02d",
        nowtime->tm_year+1900,
        nowtime->tm_mon+1,          //accordig to localtime-> struct tm
        nowtime->tm_mday,
        nowtime->tm_hour,
        nowtime->tm_min,
        nowtime->tm_sec);
    return buf;
}

// Testing code
// #include <iostream>
// int main()
// {
//     std::cout<<Timestamp::now().tostring();

//     return 0;
// }