#!/usr/bin/env bash
# ${variable:-value},如果变量variable存在，则表达式的值为variable;如果不存在，则表达式的值为value
echo ${name:-yunqing}
echo ${name}
name="LBJ"
echo ${name:-yunqing}
echo ${name}

# ${variable:=value},如果变量variable存在，则表达式的值为variable;如果不存在，则表达式的值为value，
# 并将value赋给# ${variable:-value},如果变量variable存在，则表达式的值为variable;如果不存在，variable
echo ${hometown}
echo ${hometown:=shiyan}
echo ${hometown}
