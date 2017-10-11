#!/usr/bin/lua

package.cpath = package.cpath .. ';./?.so'

require("libutils")

--print(libutils.add(1, 2))
--print(libutils.toint("1"))
--print(libutils.tostring(2))

function pack(id, name)
    return id..name
end

print(pack(1, "a"))

local num = 1000
str = libutils.SerializeInt(num)
ret = libutils.DeSerializeInt(str)
print(ret)

