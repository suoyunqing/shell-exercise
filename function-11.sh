#!/usr/bin/env bash

#必须将函数放在脚本开始部分；
#定义格式：
#   函数名 () {
#     命令
#   }
#
# 或  function 函数名 () {
#     命令
#   }

function my_max() {
  if [ $1 -eq "$2" ] ; then
    return $1
  else
    return $2
  fi
}

#函数调用方式：函数名  参数一 参数二 参数三

num1=10
num2=20
my_max $num1 $num2

echo $?