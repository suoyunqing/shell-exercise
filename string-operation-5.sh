#!/usr/bin/env bash

str="hehe:haha:xixi:lala"
#测量字符串的长度 ${#str}
echo "测量字符串的长度: ${#str}"

#从下标位置为3的地方提取字符串（出事下标为0） ${str:3}
echo "从下标位置为3的地方提取字符串: ${str:3}"


#从下标位置为3的地方提取6字节（出事下标为0） ${str:3:6}
echo "从下标位置为3的地方提取6字节: ${str:3:6}"

# 用new替换String中出现的第一个old ${str/old/new}
echo "将第一个:替换为￥： ${str/:/￥}"

# 用new替换String中出现的所有old ${str//old//new}
echo "将所有:替换为￥： ${str//://￥}"