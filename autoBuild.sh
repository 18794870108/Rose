#!/bin/bash

set -e

# 如果没有build目录，创建该目录
if [ ! -d `pwd`/build ]; then
    mkdir `pwd`/build
fi

rm -rf `pwd`/build/*

cd `pwd`/build &&
    cmake .. &&
    make

# 回到项目根目录
cd ..


if [ ! -d /usr/include/Rose ]; then 
    mkdir /usr/include/Rose
fi

for header in `ls *.h`
do
    cp $header /usr/include/Rose
done

cp `pwd`/lib/libRose.so /usr/lib

ldconfig