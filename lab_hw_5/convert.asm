
PUBLIC SBIN
PUBLIC BIN_INDEX

PUBLIC UDEC

PUBLIC SHEX

PUBLIC VALUE

PUBLIC TO_UNSIGNED_DEC

PUBLIC TO_SIGNED_HEX


STACKSEG SEGMENT PARA STACK 'STACK'
    DB 400H DUP(0)
STACKSEG ENDS


DATASEG SEGMENT PARA PUBLIC 'DATA'
    MASK16 DW 15
    MASK10 DW 9
    MASK2 DW 1
    BIN_INDEX DB 1 DUP(0)
    CUR_INDEX DB 1 DUP(0)
    VALUE DW 1
    TEMP DW 1
    SHEX DB 6 DUP(0), '$'
    UDEC DB 8 DUP(0), '$'
    SBIN DB 19 DUP(0),'$'
DATASEG ENDS





CODESEG SEGMENT PARA PUBLIC 'CODE'
    ASSUME CS:CODESEG,DS:DATASEG,SS:STACKSEG


ADD_TO_DEC PROC NEAR
    add bh,'0'
    mov cl,0
    mov ch,CUR_INDEX
    mov si,cx
    mov UDEC[si],bh
    inc  ch
    mov CUR_INDEX,ch

    ret
ADD_TO_DEC endp





TO_UNSIGNED_DEC PROC NEAR
    
   
    mov cx, VALUE       
    cmp BIN_INDEX,1
    jne DEC_POS           ; при положительном не инвертируем
  
    neg cx
   
    DEC_POS:
  
    
    
		
	mov ax, cx
	mov cx, 10        ; Делитель для получения последней цифры
	mov si, 5
	
	DIGIT_TO_SYMB:
		xor dx, dx
		div cx
		add dl, '0'
		mov UDEC[si], dl
		dec SI
		cmp si, 0
        jne DIGIT_TO_SYMB
  
    ret
TO_UNSIGNED_DEC endp





ADD_MINUS PROC NEAR
    
    mov SHEX[0],'-'
    

    ret
ADD_MINUS endp


ADD_TO_HEX PROC NEAR

    cmp bh,9
    jg  add_hex
    add bh,'0'
    jmp insert_into_algo

    add_hex:
        add bh,'A'
    

    insert_into_algo:
    mov cl,0
    mov ch,CUR_INDEX
    mov si,cx
    mov SHEX[si],bh
    inc  ch
    mov CUR_INDEX,ch
    mov TEMP,0
    inc si
    ret
ADD_TO_HEX endp


TO_SIGNED_HEX PROC NEAR   ; переводим в знаковое 16 сс

    mov ax, VALUE
    mov si, 4
   
    mov SHEX[0],' '
    
    
   
               
    convert_hex:
        mov dx, ax
        and dx, MASK16
        cmp dl, 10          ; доходим до 10, то число у нас F 
        jb ISDIGIT
        add dl, 7           ; прибавляем к числу 7
        
        ISDIGIT:
        add dl, '0'         ; переводим число в символ
        mov SHEX[SI], dl    ; записываем в буфер
        mov cl, 4
        shr ax, cl          ; сдвигаемся на 4, т.к одно 16-е число предст. 4-мя 2-ми
        dec si
        cmp si, 0
        jne convert_hex
        
    
    cmp BIN_INDEX,1
    je ADD_MINUS
    ret
TO_SIGNED_HEX ENDP

CODESEG ends


end


