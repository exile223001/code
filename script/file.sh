#!/bin/bash

#读取文件内容到变量中
filecontent=`cat test.txt`
echo $filecontent

#取得文件内容的每一行
for fileline in $filecontent
      do
      echo $fileline
      done

#写内容到文件中
echo $filecontent >> test.txt
