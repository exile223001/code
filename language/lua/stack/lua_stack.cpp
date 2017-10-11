#include "stdio.h"

extern "C"
{
    #include "lua.h"
    #include "lauxlib.h"
    #include "lualib.h"
}

int main(int argc, char** argv)
{
    // new state
    lua_State* L = luaL_newstate();

    // push
    lua_pushstring(L, "I am so cool!");
    lua_pushnumber(L, 1);
    //lua_pushnumber(L, 30);

    //printf("%d\n", lua_gettop(L));
    // pop
    if (lua_isnumber(L, 2))
    {
        printf("%g\n", lua_tonumber(L, 2));
    }
    if (lua_isstring(L, 1))
    {
        printf("%s\n", lua_tostring(L, 1));
    }

    //if (lua_isnumber(L, 3))
    //{
    //    printf("%d\n", lua_tonumber(L, 3));
    //}

    // close
    lua_close(L);

    return 0;
}
