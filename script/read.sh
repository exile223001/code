#!/bin/bash

echo -n "Enter your name:"           #参数-n的作用是不换行，echo默认是换行 
read  name                           #从键盘输入 
echo "hello $name, welcome to my program"   
exit 0                               #退出shell程序。
