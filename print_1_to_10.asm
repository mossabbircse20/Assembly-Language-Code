.model small
.stack 100h
.data
a db 'input first number : $'
b db 'input second number : $'
r db 'Result : $'
.code
main proc 
    ; 1-> single key input
    ; 2-> single key output
    ; 9-> character string output

    mov ax,@data
    mov ds,ax

    mov ah,9
    lea dx,a
    int 21h

    mov ah,1
    int 21h
    mov bl,al

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    lea dx,b
    int 21h

    mov ah,1
    int 21h
    mov bh,al

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    mov ah,9
    lea dx,r 
    int 21h

    mov ah,2
    add bl,bh
    mov dl,bl
    int 21h

    mov ah,4ch
    int 21h
    main endp
    end main

