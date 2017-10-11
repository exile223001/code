#include <stdio.h>
#include <stdlib.h>
#include <string>
#include "string.h"
#include "lua2c.h"

static int add(lua_State* L)
{
    double op1 = lua_tonumber(L, -1);
    double op2 = lua_tonumber(L, -2);
    lua_pushnumber(L, op1 + op2);
    return 1;
}

static int tostring(lua_State* L)
{
   int op = lua_tonumber(L, -1);
   char c[4 + 1] = { 0 };
   sprintf(c, "%d", op);
   lua_pushstring(L, c);
   return 1;
}

static int toint(lua_State* L)
{
    std::string op = lua_tostring(L, -1);
    //int ret = atoi(op.c_str());
    int ret = 0;
    sscanf(op.c_str(), "%d", &ret);
    lua_pushnumber(L, ret);
    return 1;
}

// head:len
static int SerializePack(lua_State* L)
{
    std::string data = lua_tostring(L, -1);

    int op = data.length();
    char c[4] = { 0 };
    c[0] = (char)(op & 0x000000ff);
    //printf("c:%x\n", c[0]);
    c[1] = (char)((op & 0x0000ff00) >> 8);
    //printf("c:%x\n", c[1]);
    c[2] = (char)((op & 0x00ff0000) >> 16);
    //printf("c:%x\n", c[2]);
    c[3] = (char)((op & 0xff000000) >> 24);
    //printf("c:%x\n", c[3]);
    
    std::string head;
    head = c;
    head.resize(4);
    std::string pack = head + data;

    printf("head:%d, data:%d, all:%d\n", head.length(), data.length(), pack.length());
    
    lua_pushlstring(L, pack.c_str(), pack.length());

    return 1;
}

std::string IntToChar(int op)
{
    //printf("op:%d\n", op);
    char c[4] = { 0 };
    c[0] = (char)(op & 0x000000ff);
    //printf("c:%x\n", c[0]);
    c[1] = (char)((op & 0x0000ff00) >> 8);
    //printf("c:%x\n", c[1]);
    c[2] = (char)((op & 0x00ff0000) >> 16);
    //printf("c:%x\n", c[2]);
    c[3] = (char)((op & 0xff000000) >> 24);
    //printf("c:%x\n", c[3]);
    std::string data;
    data = c;
    data.resize(4);
    return data;
}

// head:len + type + flag + tagid
// len = head + data - 4
static int SerializePackNew(lua_State* L)
{
    int tagid = lua_tonumber(L, -1);
    int flag = lua_tonumber(L, -2);
    int type = lua_tonumber(L, -3);
    size_t data_len = lua_tonumber(L, -4);
    std::string data = lua_tolstring(L, -5, &data_len);
    printf("%s, %d, %d, %d, %d\n", data.c_str(), data_len, type, flag, tagid);

    int length = data.length() + 3*4;
    std::string head_length = IntToChar(length);
    std::string head_type = IntToChar(type);
    std::string head_flag = IntToChar(flag);
    std::string head_tagid = IntToChar(tagid);
   
    std::string pack = head_length + head_type + head_flag + head_tagid + data;

    printf("data:%d all:%d\n", data.length(), pack.length());
    
    lua_pushlstring(L, pack.c_str(), pack.length());

    return 1;
}

// head:len + type + flag + tagid
// len = head + data - 4
static int SerializePackHead(lua_State* L)
{
    int tagid = lua_tonumber(L, -1);
    int flag = lua_tonumber(L, -2);
    int type = lua_tonumber(L, -3);
    int length = lua_tonumber(L, -4);
    printf("%d, %d, %d, %d\n", length, type, flag, tagid);

    length = length + 3*4;
    std::string head_length = IntToChar(length);
    std::string head_type = IntToChar(type);
    std::string head_flag = IntToChar(flag);
    std::string head_tagid = IntToChar(tagid);
   
    std::string head = head_length + head_type + head_flag + head_tagid;

    printf("head len:%d\n", head.length());
    
    lua_pushlstring(L, head.c_str(), head.length());

    return 1;
}

void PushData(lua_State* L, const char* c)
{
    if (0 == *c)
    {
        lua_pushnumber(L, 0);
    }
    else
    {
        lua_pushstring(L, c);
    }
}

static int SerializeInt(lua_State* L)
{
   unsigned int op = lua_tonumber(L, -1);
   //printf("op:%x\n", op);
   char c[4] = { 0 };
   c[0] = (char)(op & 0x000000ff);
   //printf("c:%x\n", c[0]);
   c[1] = (char)((op & 0x0000ff00) >> 8);
   //printf("c:%x\n", c[1]);
   c[2] = (char)((op & 0x00ff0000) >> 16);
   //printf("c:%x\n", c[2]);
   c[3] = (char)((op & 0xff000000) >> 24);
   //printf("c:%x\n", c[3]);
   for (int i = 0; i < 4; ++i)
   {
        PushData(L, &c[i]);
   }
   return 4;
}

static int DeSerializeInt(lua_State* L)
{
    std::string op = lua_tostring(L, -1);
    char c[4] = { 0 };
    memcpy(c, op.c_str(), 4);
    //printf("c:%x\n", c[0]);
    //printf("c:%x\n", c[1]);
    //printf("c:%x\n", c[2]);
    //printf("c:%x\n", c[3]);
    unsigned int b0 = (unsigned char)c[0];
    unsigned int b1 = (unsigned char)c[1];
    unsigned int b2 = (unsigned char)c[2];
    unsigned int b3 = (unsigned char)c[3];
    unsigned int ret = b0 | b1 << 8 | b2 << 16 | b3 << 24;
    lua_pushnumber(L, ret);
    return 1;
}

static luaL_Reg myfuncs[] = 
{
    {"add", add},
    {"tostring", tostring},
    {"toint", toint},
    {"SerializeInt", SerializeInt},
    {"SerializePackHead", SerializePackHead},
    {"SerializePack", SerializePack},
    {"SerializePackNew", SerializePackNew},
    {"DeSerializeInt", DeSerializeInt},
    {NULL, NULL}
};

extern "C" 
{
    int luaopen_libutils(lua_State* L)
    {
        luaL_register(L, "libutils", myfuncs);
        return 1;
    }
}
