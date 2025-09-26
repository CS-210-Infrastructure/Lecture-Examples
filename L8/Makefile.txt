all: mov movend movex

mov: mov.o
	ld -g mov.o -o mov

mov.o: mov.s
	as -g mov.s -o mov.o

movend: movend.o
	ld -g movend.o -o movend

movend.o: movend.s
	as -g movend.s -o movend.o

movex: movex.o
	ld -g movex.o -o movex

movex.o: movex.s
	as -g movex.s -o movex.o

clean:
	-rm -f $(wildcard *.o mov movend movex)
