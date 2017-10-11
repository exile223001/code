LDFLAGS = -L./3rd/mysql/lib/
CPPFLAGS = -I./3rd/mysql/include/

test:main.cpp
	g++ $(LDFLAGS) $(CPPFLAGS) -lmysqlclient \
	main.cpp -o test
clean:
	rm *.o test
	
