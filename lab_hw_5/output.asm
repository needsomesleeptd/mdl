
EXTRN UDEC : BYTE
EXTRN SHEX : BYTE

EXTRN TO_UNSIGNED_DEC : NEAR

EXTRN NewLinePrint : NEAR


PUBLIC OUTPUT_UDEC

CODESEG SEGMENT PARA PUBLIC 'CODE'
    ASSUME CS:CODESEG



OUTPUT_UDEC PROC NEAR
    call NewLinePrint
    call NewLinePrint
    call TO_UNSIGNED_DEC
    mov ah, 09h
    mov dx, OFFSET UDEC
    int 21h
    call NewLinePrint
    call NewLinePrint
    ret


OUTPUT_UDEC endp




CODESEG ENDS
end