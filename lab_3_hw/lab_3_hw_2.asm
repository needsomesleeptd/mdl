EXTRN M: byte

PUBLIC print_char

CS2 SEGMENT para public 'CODE'
	assume CS:CS2
print_char:
    mov dl,20h; Запись пробела
    mov ah,02h
    int 21h

    add M,10h; Символ начала английского алфавита
    mov dl,M
    mov ah,02h
    int 21h
    mov ax, 4c00h
	int 21h

CS2 ENDS
END