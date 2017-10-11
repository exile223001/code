#!/usr/bin/python

dic = {}
level_file = open("level.txt", "r+")
lines = level_file.readlines()
for line in lines:
    line = line.strip("\r\n");
    if line not in dic:
        dic[line] = 0
    count = dic[line]
    dic[line] = count + 1

#print dic
#items = dic.items().sort()
#print items
for k,v in dic.items():
    print k,":",v
#for item in items:
#    print item
