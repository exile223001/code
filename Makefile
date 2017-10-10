CC = gcc
CFALGS = -O2 -ggdb

test_segmentdefault:
	$(CC) $(CFALGS) -o test_segmentdefault test_segmentdefault.c

testprog:testprog.o
	ld testprog testprog.o
clean:
	rm test_segmentdefault
