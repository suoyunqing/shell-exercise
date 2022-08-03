#!/usr/bin/env bash
#test命令，用于测试字符串、文件状态和数字；
#test命令有两种格式：test condition 或者[ condition]，结果：1表示否，0表示是。使用方括号时，要注意在条件两边加上空格。


#文件测试：测试文件状态的条件表达式
#  -e 是否存在；
read -p "请输入一个文件名："  fileName
test -e $fileName
echo $?  #1
test -e "README.md"
echo $?  #0
#  -d 是否是目录；
#  -f 是否是文件；
#  -r 可读；
#  -w 可写；
#  -x 可执行；
#  -L 符号连接；
#  -c 是否字符设备；
#  -b 是否块设备
#  -s 文件非空


#字符串测试 test str_operator str; test str1 str_operator str2;
# str_operator可以是：=，两个字符串相等； !=，两个字符串不相等；-z，空字符串； -n，非空串；
str1="suoyunqing"
str2="suo"
str3="suoyunqing"
test $str1=$str3
echo $? #0
test $str1!=$str2
echo $? #0
[ -z $str1 ]
echo $? #1
[ -n $str1 ]
echo $? #0


#数值测试，test num1 num_operator num2; [ num1 num_operator num2 ];
# num_operator可以是，-eq，数值相等；-ne，数值不相等； -gt，大于； -lt，小于；-ge，大于等于； -le，小于等于；
num1=10
num2=10
num3=13
num4=9
test $num1 -eq $num2
echo "10等于10： $?"
test $num1 -gt $num4
echo "10大于9： $?"


#命令执行控制
# command1 && command2, command1执行成功（即返回0），才执行command2;
# command1 || command2，command1执行失败才执行command2;

[ 1 -eq 1 ] && echo "1等于1" && test -e "l" && echo "不应该输出"
 test -e "l" || echo "上一条命令执行失败" && echo "正常输出" || echo "不应该输出"


#多重条件判断
# -a 两种情况同时成立，才返回0
[ 1 -eq 1 -a 1 -lt 10 ]
echo "$?"  #0
test 1 -eq 1 -a 1 -lt 10
echo "$?"  #0
# -o 任意一个成立
# !相反状态

