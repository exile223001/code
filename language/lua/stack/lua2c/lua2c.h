
extern "C"
{
    #include "lua.h"
    #include "lualib.h"
    #include "lauxlib.h"
}

static int add(lua_State* L);

static int tostring(lua_State* L);
static int toint(lua_State* L);

static int SerializePackHead(lua_State* L);
static int SerializePack(lua_State* L);
static int SerializePackNew(lua_State* L);

static int SerializeInt(lua_State* L);
static int DeSerializeInt(lua_State* L);

