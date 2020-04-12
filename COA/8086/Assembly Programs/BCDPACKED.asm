.model small
.data
        a db 78h
        digit1 db ?
        digit2 db ?
.code
 start: mov ax,@data
        mov ds,ax
        mov bl,0fh
        mov al,a
        and al,bl
        mov digit1,al
        mov al,a
        rol al,04
        and al,bl
        mov digit2,al
        mov ah,4ch
        int 21h
 end start
