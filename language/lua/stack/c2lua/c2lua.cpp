#include "stdio.h"
#include "assert.h"
#include <string>

extern "C"
{
    #include "lua.h"
    #include "lauxlib.h"
    #include "lualib.h"
}

int main(int argc, char** argv)
{
    // stack
    lua_State* L = luaL_newstate();
    if (NULL == L)
    {
        printf("new stack\n"); 
        //assert(false);
        return 0;
    }
    // load file
    int r = luaL_loadfile(L, "hello.lua");
    if (r)
    {
        printf("load file\n"); 
        //assert(false);
        return 0;
    }
    // run
    r = lua_pcall(L, 0, 0, 0);
    if (r)
    {
        printf("run\n"); 
        //assert(false);
        return 0;
    }

    // string
    lua_getglobal(L, "str");
    std::string str = lua_tostring(L, -1);
    printf("str:%s\n", str.c_str()); 

    // dic
    lua_getglobal(L, "table");

    lua_pushstring(L, "janna");
    lua_setfield(L, 2, "name");

    lua_getfield(L, -1, "name");
    str = lua_tostring(L, -1);
    printf("str:%s\n", str.c_str()); 

    // func
    lua_getglobal(L, "add");
    lua_pushnumber(L, 10);
    lua_pushnumber(L, 20);
    r = lua_pcall(L, 2, 1, 0);
    if (r)
    {
        printf("error:%s\n", lua_tostring(L, -1));
        //assert(false);
        return 0;
    }
    if (lua_isnumber(L, -1))
    {
        int value = lua_tonumber(L, -1);
        printf("value:%d\n", value);
    }

    lua_close(L);
    return 0;
}
