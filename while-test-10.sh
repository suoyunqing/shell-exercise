#!/usr/bin/env bash
#while
#while [ condition ]
#  do
#    程序段
#  done

declare -i age=10
while [ $age -lt 20 ]
  do
    echo $age
    age=$age+2
  done


