#!/usr/bin/env bash

#case
#case $变量名称 in
#      "变量值1")
#        程序段一
#        ;;  #相当于java里的break
#      "变量值1")
#        程序段二
#        ;;
#      *)
#        其他程序段
#esac

num=9

case $num in
      0 | 3 | 6 | 9* )
        echo "程序段一"
        ;;  #相当于java里的break
      12 | 15 | 18 )
        echo "程序段二"
        ;;
      *)
        echo "其他程序段"
esac

echo "finished"