#!/usr/bin/lua

package.path = package.path .. ';/home/exile/language/lua/socket/protoc-gen-lua/protobuf/?.lua'
package.cpath = package.cpath .. ';/home/exile/language/lua/socket/protoc-gen-lua/protobuf/?.so'

require "persion_pb"

local msg = persion_pb.persion()
msg.id = 10
msg.name = "exile"
msg.email = "exile@123u.com"

local pb_data = msg:SerializeToString()
print("data", pb_data)

print("serialize:", msg.id, msg.name, msg.email)

local msg1 = persion_pb.persion()
msg1:ParseFromString(pb_data)
print("parse:", msg1.id, msg1.name, msg1.email)


