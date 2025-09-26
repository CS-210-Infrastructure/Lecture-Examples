	.intel_syntax noprefix

	.data
MYBYTES:    
	.quad 0xdeadbeefdeadbeef
	
	.text
	
	.global _start

_start:
	xor rax, rax
	xor rbx, rbx

	mov rax, OFFSET [MYBYTES]

	
BYTES:
	mov bl, BYTE PTR [MYBYTES]
	mov bl, BYTE PTR [MYBYTES + 1]
	mov bl, BYTE PTR [MYBYTES + 2]
	mov bl, BYTE PTR [MYBYTES + 3]
	mov bl, BYTE PTR [MYBYTES + 4]
	mov bl, BYTE PTR [MYBYTES + 5]
	mov bl, BYTE PTR [MYBYTES + 6]
	mov bl, BYTE PTR [MYBYTES + 7]

WORDS:
	mov bx, WORD PTR [MYBYTES]
	mov bx, WORD PTR [MYBYTES + 2]
	mov bx, WORD PTR [MYBYTES + 4]
	mov bx, WORD PTR [MYBYTES + 6]

DWORDS:
	mov ebx, DWORD PTR [MYBYTES]
	mov ebx, DWORD PTR [MYBYTES + 4]

QWORD:
	mov rbx, QWORD PTR [MYBYTES]

	int3
	
