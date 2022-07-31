#!/usr/bin/env bash

#定义变量：变量名=变量值
#引用变量：$变量名
#清除变量值：unset 变量名

num=10
echo "num:$num"
unset num
echo "num:$num"

#只读变量 readonly 变量名=变量值
#readonly myage=10
##会报错，variable-creation-2.sh:15: read-only variable: age
#echo "age:$myage"

#从键盘获取值，read； 添加输入提示,-p
#read  first_name second_name
#echo "first_name:$first_name"
#echo "second_name:$second_name"
#read -p 'please input you choice:\n' full_name
#echo "完整姓名：$full_name"

#变量名只能使用英文字母，数字和下划线，首个字符不能以数字开头
#等号两边不能直接接空格符，var_with_white_space = "var_with_white_space"，会报错；
#变量内容可使用双引号或者单引号，双引号内的特殊字符可以保持原有的特性，单引号内的特殊字符仅为一般字符
location="wuhan"
echo "$location is part of Hubei Province"
echo '$location is part of Hubei Province'