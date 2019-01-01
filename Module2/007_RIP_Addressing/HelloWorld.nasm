global _start 
section .text

_start:

	; print on screen
	xor rax, rax
	add rax, 1	
	mov rdi, rax
	lea rsi, [rel hello_world] 
	xor rdx, rdx
	add rdx, 14
	syscall


	; exit gracefully 
	xor rax, rax
	add rax, 60
	xor rdi, rdi
	syscall

	hello_world: db 'Hello SLAE-64',0xa

