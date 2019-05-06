global _start

section .text

_start:

	; print on screen
	mov al, 1
	mov di, ax
	mov rsi, hello_world
	mov rdx, length
	syscall

	; exit gracefully
	mov al, 60
	
	mov bl, 11
        mov di, bx
	syscall

section .data
	hello_world: db 'Hello World to the SLAE-64 Course',0x0a
	length: equ $-hello_world

