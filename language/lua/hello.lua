#!/usr/bin/lua

print("Hello World!")

d = "1"
function func(c)
    print(c.a)
end

func({a = d})

aa = {}
bb = {}

function aa.a()
    print("aa.a")
    return
end

function aa.b()
    print("aa.b")
    return
end

function bb:a()
    print("bb:a")
    return
end

function bb:b()
    print("bb:b")
    return
end

print(aa.a())
--print(aa[b]())
print(bb.a())
--print(bb[b]())

--function f(p, ...)
--    args = table.pack(...)
--    print(args)
--end
--
--f(1)

function table_pack(param, ...)  
    local arg = table.pack(...)  
    print("this arg table length is", arg.n)  
    for i = 1, arg.n do  
        print(i, arg[i])  
    end  
end  
                           
table_pack("test", "param1", "param2", "param3")  
