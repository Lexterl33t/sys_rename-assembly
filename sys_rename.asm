BITS 64

section .rodata
	path db 'lol.txt', 0

	renamed_file db 'jean.txt', 0

global _main

section .text

_main:
	jmp _rename
	
_rename:
	mov rax, 82
	mov rdi, path
	mov rsi, renamed_file
	syscall
	jmp _exit

_exit:
	mov rax, 0x3C
	mov rdi, 0
	syscall	
