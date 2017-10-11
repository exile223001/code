#!/usr/bin/python

f = open("test.txt", "r+")

#str = f.read(11)
#print str

#line = f.readline()
#while line != "":
#    print line
#    line = f.readline()
#

f.write("1111")
f.flush()

f.close()

f = open("test.txt", "r+")

lines = f.readlines()
print lines
for line in lines:
    print line

f.close()

#dic = {1:2, 2:3}
#print dic
#print dic[1]

