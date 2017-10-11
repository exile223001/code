#!/usr/bin/lua

package.path = package.path .. ';/home/exile/language/lua/socket/protoc-gen-lua/protobuf/?.lua;./proto/?.lua'
package.cpath = package.cpath .. ';/home/exile/language/lua/socket/protoc-gen-lua/protobuf/?.so;./?.so'

require("login_pb")
require("libutils")

local socket = require("socket")
local host = "192.168.11.167"
local port = 25001
local sock = assert(socket.connect(host, port))
sock:settimeout(0)

function login(name, passwd)
    local msg = login_pb.QueryGateArg()
    msg.platid = login_pb.PLAT_IOS
    msg.type = login_pb.LOGIN_PASSWORD
    msg.account = name
    msg.password = passwd

    type = 9179
    flag = 1
    tagid = 0
    msg_data = msg:SerializeToString();
    msg_len = string.len(msg_data)
    print("msg_data len:", msg_len)

    head = libutils.SerializePackHead(msg_len, type, flag, tagid)

    data = head..msg_data
    print("data len:", string.len(data))
    return data
end

function main()
    print("enter something:")
    local input, recvt, sendt, status
    i = 0
    while true do

        i = i + 1
        input = io.read()
        local data = login("995", "52071")

        if (#input > 0) then
            assert(sock:send(data))
        end

        --recvt, sendt, status = socket.select({sock}, nil, 1)
        --while #recvt > 0 do
        --    local response, receive_status = sock:receive("*a")
        --    if receive_status ~= "closed" then
        --        if response then
        --            unpack(response)
        --            recvt, sendt, status = socket.select({sock}, nil, 1)
        --        end
        --    else
        --        break
        --    end
        --end

    end
end
main()
