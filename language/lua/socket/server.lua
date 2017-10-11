#!/usr/bin/lua

package.path = package.path .. ';/home/exile/language/lua/socket/protoc-gen-lua/protobuf/?.lua;./proto/?.lua'
package.cpath = package.cpath .. ';/home/exile/language/lua/socket/protoc-gen-lua/protobuf/?.so;./?.so'

require("persion_pb")
require("libutils")

local socket = require("socket")
local host = "127.0.0.1"
local port = "8888"
local connections = {}
local threads = {}

function unpack(data)
    --print("start unpack", data)
    local msg = persion_pb.persion()
    msg:ParseFromString(data)
    --print("end unpack")
    print("Receive Client ", msg.id, msg.name, msg.email)
end

local receive_head = 1
local receive_len = 4

function receive_data(sock_id)
    --print("receive handle")
    local conn = connections[sock_id]
    if conn ~= nil then
        --print("begin select")
        local recvt, t, status = socket.select({conn}, nil, 1)
        --print("end select", #recvt)
        if #recvt > 0 then
        --while #recvt > 0 do
            --print("begin recv")
            local receive, receive_status = conn:receive(receive_len)
            --print("end recv")
            if receive_status ~= "closed" then
                if receive then
                    --assert(conn:send(receive..'\n'))
                    print("is head data:", receive_head, receive_len, "----------")
                    if receive_head > 0 then
                        receive_len = libutils.DeSerializeInt(receive)
                        receive_head = 0
                        print("receive len:", receive_len)
                    else
                        unpack(receive)
                        receive_head = 1
                        receive_len = 4
                    end
                end
            else
                print("Client " .. sock_id .. " disconnect!")
                connections[sock_id].close()
                connections[sock_id] = nil
                threads[sock_id] = nil
            end
        end
        coroutine.yield()
    end
end

function connection_handler(sock_id)
    while true do
        local conn = connections[sock_id]
        if conn == nil then
            break
        end
        local data, status = receive_data(sock_id)
    end
end

function create_handler(sock_id)
    local handler = coroutine.create(function ()
        connection_handler(sock_id)
    end)
    return handler
end

function accept_connection(sock_id, conn)
    print("accepted new socket ,id = " .. sock_id)
    connections[sock_id] = conn
    threads[sock_id] = create_handler(sock_id)
end

function dispatch()
    for _sock_id, _thread in ipairs(threads) do
        coroutine.resume(threads[_sock_id])
    end
end

function start_server()
    local server = assert(socket.bind(host, port, 1024))
    print("Server Start " .. host .. ":" .. port)
    server:settimeout(0)

    local conn_count = 0
    while true do
        local conn = server:accept()
        if conn then
            conn_count = conn_count + 1
            accept_connection(conn_count, conn)
        end
        dispatch()
    end 
end

function main()
    start_server()
end
main()
