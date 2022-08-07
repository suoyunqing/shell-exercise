#!/usr/bin/env bash
#控制语句包括 if;case;for;while;until;break;

#if控制语句
#格式一：
#if [ 条件1 ]; then
#  执行第一段程序
#else
#  执行第二段程序
#fi

#格式二：
#if [ 条件1 ]; then
#  执行第一段程序
#elif [ 条件2 ]; then
#  执行第二段程序
#else
#  执行第三段程序
#fi

if [ 1 -lt 1 ]; then
  echo "执行第一段程序"
elif [ -e "mynote" ]; then
  echo "执行第二段程序"
else
  echo "执行第三段程序"
fi



