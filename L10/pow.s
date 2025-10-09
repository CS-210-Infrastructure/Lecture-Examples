	.intel_syntax noprefix

	.section .text
	
	.global _start	 


_start:	                         
	xor  rax, rax    
	xor  rbx, rbx
	xor  rcx, rcx

	add rax, 1
	add rbx, 4
	add rcx, 3  

	call pow

	int3      

pow:
	dec rcx
	cmp rcx, 0
	je done
	call pow

done:
	imul  rax, rbx
	ret