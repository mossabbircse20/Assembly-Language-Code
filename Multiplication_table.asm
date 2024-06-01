include 'emu8086.inc'
.model small
.stack 100h
.data
e db 'Enter any number : $'
p db 10,13,'Multiplication Table : $'
v db 1
i db ?

.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,e
        int 21h
        
        mov ah,1
        int 21h
        sub al,48
        
        mov i,al
        
        mov ah,9
        lea dx,p
        int 21h
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        mov cx,10
        
        table:
            mov al,v
            mul i
            aam
            
            mov dh,ah
            mov bh,al
            
            mov ah,2
            mov dl,i
            add dl,48
            int 21h
            
            mov ah,2
            mov dl,'*'
            int 21h
            
            mov ah,2
            mov dl,v
            add dl,48
            int 21h
            
            mov ah,2
            mov dl,'='
            int 21h
            
            mov ah,2
            mov dl,dh
            add dl,48
            int 21h
            
            mov ah,2
            mov dl,bh
            add dl,48
            int 21h
      
            mov ah,2
            mov dl,10
            int 21h
            mov dl,13
            int 21h    
        
            inc v
            
            loop table
         
         exit:
            mov ah,4ch
            int 21h    
        
        
        
    main endp
end main    



