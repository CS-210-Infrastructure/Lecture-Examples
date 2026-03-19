hello.i: hello.c
	gcc hello.c -E -o hello.i

bug: bug.c
	gcc bug.c -g -o bug

sumit.s: sumit.c
	gcc -fno-inline -fno-stack-protector -fno-pic -static -Werror -fcf-protection=none -fno-asynchronous-unwind-tables -O -S -masm=intel sumit.c -o sumit.s

clean:
	rm bug hello sumit.s hello.i
