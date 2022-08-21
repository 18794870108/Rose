#pragma once

#include <iostream>
#include <string>

class Timestamp
{
public:
    Timestamp();
    explicit Timestamp(int64_t microSecondSinceEpoch);//implicit conversion is not allowed
    static Timestamp now();
    std::string tostring() const;
private:
    int64_t m_microSecondSinceEpoch;
};