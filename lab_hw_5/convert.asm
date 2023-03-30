
PUBLIC SBIN
PUBLIC BIN_INDEX

PUBLIC UDEC

PUBLIC SHEX

PUBLIC VALUE

PUBLIC TO_UNSIGNED_DEC

PUBLIC TO_SIGNED_HEX


STACKSEG SEGMENT PARA STACK 'STACK'
    DB 200H DUP(0)
STACKSEG ENDS


DATASEG SEGMENT PARA PUBLIC 'DATA'
    MASK16 DW 15
    MASK2 DW 1
    BIN_INDEX DB 1 DUP(0)
    CUR_INDEX DB 1 DUP(0)
    VALUE DW 1
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
    mov ax,VALUE
    mov bl,0
    mov CUR_INDEX,0
    cmp BIN_INDEX,1
    jne to_dec
    NOT ax
    inc ax
    
    to_dec:
        mov cl,10
        DIV cl ; Делим на  СС
        mov bh,al

        mov ah,0
        call ADD_TO_DEC
        cmp ax,0
        jne to_dec
    ret
TO_UNSIGNED_DEC endp





ADD_MINUS PROC NEAR
    mov bh,'-'
    mov cl,0
    mov ch,CUR_INDEX
    mov si,cx
    mov SHEX[si],bh
    inc  ch
    mov CUR_INDEX,ch

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

    ret
ADD_TO_HEX endp


TO_SIGNED_HEX PROC NEAR
    mov ax,VALUE
    mov bl,0
    mov CUR_INDEX,0
    cmp BIN_INDEX,1
    jne to_hex
    call ADD_MINUS
    
    to_hex:
        mov cx,16
        DIV cx ; Делим на  СС
        mov bh,dl

        call ADD_TO_DEC
        cmp ax,0
        jne to_hex
    ret
TO_SIGNED_HEX endp

CODESEG ends


end


