#!/usr/bin/lua

require("module")
print(module.constant)
module.func3()

local m = require("module")
print(m.constant)
m.func3()

--local path = "clib/libcmodule.so"
--local f = loadlib(path, "
