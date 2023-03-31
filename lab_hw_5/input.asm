EXTRN EXIT : NEAR

EXTRN VALUE : WORD

EXTRN SBIN : BYTE
EXTRN BIN_INDEX : BYTE

PUBLIC INPUT_SIGNED_BIN

PUBLIC INPUT_ACTION 

PUBLIC NewLinePrint



CODESEG SEGMENT PARA PUBLIC 'CODE'
    ASSUME CS:CODESEG
INPUT_ACTION PROC NEAR
    
    MOV AH, 1
    INT 21H
    
    cmp al, 13
    je EXIT
    
    sub al, '0'
    mov ah,0
    mov cl, 2
    mul cl
    mov SI, AX
    ret
INPUT_ACTION endp   



NewLinePrint proc NEAR         ; процедура считывания числа
	
	mov DL,0Ah; Записываем переход на новую строку
	mov AH,02h
	int 21h

 	mov DL,0Dh; Записываем возврат каретки
	mov AH, 02h
	int 21h
	mov dl,0
	ret

NewLinePrint endp




ADD_FIGURE PROC NEAR
    mov cl, al
    mov ax, 2
    mul bx
    mov bx, ax
    mov ch, 0
    sub cl, '0'
    add bx, cx
    ret
ADD_FIGURE ENDP

INPUT_SIGNED_BIN PROC NEAR
    call NewLinePrint
    mov BIN_INDEX,0
    mov bx, 0                 ; Число
    mov dx, 0                 

    mov ah,01h
    int 21h
    cmp al, 13                ; сравнивает если ничего не ввели
    je ENDINPUT
   
    cmp al,'-'
    jne number_is_positive

        inc BIN_INDEX
        jmp is_negative
        number_is_positive:

            call ADD_FIGURE
            is_negative:
            mov ah,01h
            int 21h
           


            cmp al, 13                ; сравнивает если ничего не ввели
            je ENDINPUT

            cmp al,'2'
            jg is_negative
            cmp al,'0'
            jl is_negative

          
    jmp number_is_positive

   

    ENDINPUT:
        cmp BIN_INDEX,1
        jne nadd_one
        ;not bx
        AND bx,0FFFh
        OR bx,0FFFh
        
        nadd_one:
        mov VALUE,bx
        ret
            



         
    

INPUT_SIGNED_BIN ENDP
CODESEG ends
end