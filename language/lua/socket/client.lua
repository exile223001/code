#!/usr/bin/lua

package.path = package.path .. ';/home/exile/language/lua/socket/protoc-gen-lua/protobuf/?.lua;./proto/?.lua'
package.cpath = package.cpath .. ';/home/exile/language/lua/socket/protoc-gen-lua/protobuf/?.so;./?.so'

require("persion_pb")
require("libutils")

local socket = require("socket")
local host = "127.0.0.1"
local port = 8888
local sock = assert(socket.connect(host, port))
sock:settimeout(0)

--function getint(data)
--    head0, head1, head2, head3 = libutils.SerializeInt(data)
--    --print("head:", head0, head1, head2, head3)
--    head = head0..head1..head2..head3
--    print(string.char(head[0]))
--end

function pack(id, name, email)
    local msg = persion_pb.persion()
    msg.id = id
    msg.name = name
    msg.email = email

    --local data = msg:SerializeToString()
    --len = string.len(data)
    --print(len)

    --head = getint(len)
    --data = head..data

    data = libutils.SerializePack(msg:SerializeToString())

    print("data:", string.len(data))
    return data
end

--function unpack(response)
--   local temp = persion_pb.persion()
--   temp:ParseFromString(response)
--   print("receive from server:", temp.id, temp.name)
--end

function main()
    print("enter something:")
    local input, recvt, sendt, status
    i = 0
    while true do

        i = i + 1
        input = io.read()
        local data = pack(1, "exile", input)
        --print("data:", data)

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
