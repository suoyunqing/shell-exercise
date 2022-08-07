#!/usr/bin/env bash

# for
#形式一
#for (( 变量名 = 初始值; 执行条件; 执行步阶 )); do
#    程序段
#done

declare  -i sum=0  # -i强制把num变量当做int型参数运算
declare  -i i=0
for (( i ; i < 5; i++ )); do
    sum=$sum+$i
done

echo $sum

#形式二：
#for 变量名 in cons1 cons2 con3...
#do
#  程序段
#done
for num in 10 9 8
do
  echo $num
done