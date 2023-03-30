
EXTRN INPUT_SIGNED_BIN : NEAR
EXTRN INPUT_ACTION : NEAR


EXTRN OUTPUT_UDEC : NEAR
PUBLIC EXIT
STACKSEG SEGMENT PARA STACK 'STACK'
    DB 200H DUP(0)
STACKSEG ENDS

DATASEG SEGMENT PARA PUBLIC 'DATA'
    MENU DB 'Available actions:', 13, 10, 10
        DB '1. Input signed binary number;', 13, 10
        DB '2. Decimal unsigned;', 13, 10
        DB '3. Hexadeciaml signed', 13, 10
        DB '4. Convert to signed binary;', 13, 10, 10
        DB '0. Exit program.', 13, 10, 10
        DB 'Choose action: $'
        
    ACTIONS DW EXIT, INPUT_SIGNED_BIN, OUTPUT_UDEC;, OUT_UNSIGNED_HEX, OUT_SIGNED_BIN
DATASEG ENDS

CODESEG SEGMENT PARA PUBLIC 'CODE'
    ASSUME CS:CODESEG, DS:DATASEG, SS:STACKSEG
    
MAIN:
    mov ax, DATASEG
    mov ds, ax
    
    START:
    mov dx, offset MENU
    mov ah, 09h
    int 21h
    
    call INPUT_ACTION
    call ACTIONS[si]
    jmp START
    
EXIT PROC NEAR
    mov ax, 4c00h
    int 21h
EXIT ENDP
 
CODESEG ENDS
END MAIN    
