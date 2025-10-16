all: read hello

read: read.o
	ld -g read.o -o read

read.o: read.s
	as -g read.s -o read.o

hello: hello.o
	ld -g hello.o -o hello

hello.o: hello.s
	as -g hello.s -o hello.o

clean:
	-rm -f $(wildcard *.o read hello)
