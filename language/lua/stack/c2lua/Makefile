c2lua:
	g++ -o c2lua c2lua.cpp /usr/local/lib/liblua.a
lua_stack:
	g++ -o lua_stack lua_stack.cpp /usr/local/lib/liblua.a
testlib:
	g++ -o testlib.so -shared -fPIC c2lua.cpp
clean:
	rm lua_stack c2lua
