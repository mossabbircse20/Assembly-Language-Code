include 'emu8086.inc'
.model small
.stack 100h
.data
arr db 4 dup(?)
.code
    main proc
         mov ax,@data
         mov ds,ax
         
         print 'Enter 4-digit number : '
         
         mov cx,4
         mov si,offset arr
         
         input:
            mov ah,1
            int 21h
            mov [si],al
            inc si
            loop input
         
         mov cx,4
         mov si,offset arr
         
         reverse:
            mov bx,[si]
            push bx
            inc si
            loop reverse
         
         mov ah,2
         mov dl,10
         int 21h
         mov dl,13
         int 21h
         
         print 'Reverse number is : '
         
         mov cx,4
         
         display:
            mov ah,2
            pop dx
            int 21h
            
            mov ah,2
            mov dl,32
            int 21h
            
            loop display
         
         
         exit:
            mov ah,4ch
            int 21h                
     
    
    main endp
end main    



