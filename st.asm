%macro addr 1
	mov eax, 4
	mov ebx, 1
	mov ecx, %1
	bswap ecx
	mov [resd0], ecx
	mov ecx, resd0
	mov edx, 4
	int 80h
%endmacro

section .bss
	resd0 resd 1

section .text
	global _start
	_start:

		addr esp
		push 1
		addr esp

		addr _start

		mov eax, 1
		mov ebx, 0
		int 80h