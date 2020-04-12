.model small
.data
        a db 78h
.code
 start: mov ax,@data
        mov ds,ax
        mov al,a
        mov ah,al
        rol ah,04
        and ax,0f0fh
        or ax,3030h
        mov bx,ax
        mov dl,bh
        mov ah,02
        int 21h
        mov dl,bl
        mov ah,02
        int 21h
        mov ah,4ch
        int 21h
 end start
