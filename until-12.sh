#!/usr/bin/env bash

#格式
# until [ condition ]
#   do
#      程序段
#   done
#
#当条件满足时，退出循环
#
#
declare -i num=10
declare -i amount=7
test $num -gt $amount
echo $?
until [ $num -lt $amount ]; do
    echo $num
    num=$num-1
done