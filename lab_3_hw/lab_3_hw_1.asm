EXTRN print_char: far

PUBLIC M
SD1 SEGMENT para common 'DATA'
	M byte 3h
SD1 ENDS

STK SEGMENT PARA STACK 'STACK'
	db 100 dup(0)
STK ENDS

CSEG SEGMENT para common 'CODE'
	ASSUME CS:CSEG, DS:SD1, SS:STK
main:
    mov ax,SD1
    mov ds,ax
	mov ah,01
    int 21h
    mov M,al
    jmp print_char



CSEG ENDS
END main