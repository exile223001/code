#!/usr/bin/lua

module = {}

module.constant = "常量"

function module.func1()
    io.write("函数1\n")
end

local function func2()
    print("私有函数")
end

function module.func3()
    func2()
end

return module
