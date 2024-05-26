.model small
.stack 100h
.data
lp db 'Loop Concept $'
.code
main proc 
    ; 1-> single key input
    ; 2-> single key output
    ; 9-> character string output

    mov ax,@data
    mov dx,ax

    mov ah,9
    lea dx,lp
    int 21h

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov cx,9
    mov ah,2
    mov dl,'1'

    level1:
    int 21h
    inc dl
    loop level1

    mov cx,2
    mov ah,2
    mov dl,'1'

    level2:
    int 21h
    dec dl
    loop level2

    mov ah,4ch
    int 21h
    main endp
    end main

