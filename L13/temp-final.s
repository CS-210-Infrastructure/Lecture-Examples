	.file	"temp-final.c"
	.intel_syntax noprefix
	.text
	.globl	convert_to_c
	.type	convert_to_c, @function
convert_to_c:
	subsd	xmm0, QWORD PTR .LC0[rip]
	mulsd	xmm0, QWORD PTR .LC1[rip]
	divsd	xmm0, QWORD PTR .LC2[rip]
	ret
	.size	convert_to_c, .-convert_to_c
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"welcome to the temperature program"
.LC4:
	.string	"Enter a Temperature in Fahrenheit: "
.LC5:
	.string	"%lf"
.LC7:
	.string	"%.2lf Fahrenheit in Celsius is %.2lf\n"
.LC8:
	.string	"SUM OF TEMPS: %lf\n"
.LC9:
	.string	"COUNT OF TEMPS: %d\n"
.LC10:
	.string	"AVERAGE TEMP: %lf\n"
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	edi, OFFSET FLAT:.LC3
	push	rbx
	sub	rsp, 40
	call	puts
.L7:
	mov	esi, OFFSET FLAT:.LC4
	mov	edi, 2
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsp+24]
	mov	edi, OFFSET FLAT:.LC5
	xor	eax, eax
	call	__isoc99_scanf
	mov	ebx, eax
	test	eax, eax
	je	.L3
	mov	ebx, 1
	jmp	.L2
.L3:
	movsd	xmm2, QWORD PTR [rsp+24]
	xorps	xmm0, xmm0
	ucomisd	xmm2, xmm0
	jp	.L8
	je	.L5
.L8:
	movaps	xmm0, xmm2
	mov	esi, OFFSET FLAT:.LC7
	mov	edi, 2
	mov	al, 2
	call	convert_to_c
	inc	ebp
	movaps	xmm1, xmm0
	movsd	QWORD PTR [rsp+8], xmm0
	movaps	xmm0, xmm2
	call	__printf_chk
	movsd	xmm1, QWORD PTR [rsp+8]
	addsd	xmm1, QWORD PTR [rsp]
	movsd	QWORD PTR [rsp], xmm1
	jmp	.L7
.L5:
	movsd	xmm0, QWORD PTR [rsp]
	mov	esi, OFFSET FLAT:.LC8
	mov	edi, 2
	mov	al, 1
	call	__printf_chk
	mov	esi, OFFSET FLAT:.LC9
	mov	edx, ebp
	xor	eax, eax
	mov	edi, 2
	call	__printf_chk
	cvtsi2sd	xmm1, ebp
	movsd	xmm0, QWORD PTR [rsp]
	mov	al, 1
	mov	esi, OFFSET FLAT:.LC10
	mov	edi, 2
	divsd	xmm0, xmm1
	call	__printf_chk
.L2:
	add	rsp, 40
	mov	eax, ebx
	pop	rbx
	pop	rbp
	ret
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1077936128
	.align 8
.LC1:
	.long	0
	.long	1075052544
	.align 8
.LC2:
	.long	0
	.long	1075970048
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
