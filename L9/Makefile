all: usesum 10num.bin 

10num.bin: 10num.txt
	ascii2binary -t sq < 10num.txt > 10num.bin

usesum: usesum.o sumit.o
	ld -g usesum.o sumit.o -o usesum

usesum.o: usesum.s
	as -g usesum.s -o usesum.o

sumit.o: sumit.s
	as -g sumit.s -o sumit.o

clean:
	-rm -f $(wildcard *.o usesum 10num.bin)
