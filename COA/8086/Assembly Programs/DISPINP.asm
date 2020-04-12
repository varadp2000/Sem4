.model small
.data
.code
 start: mov ax,@data
        mov ds,ax
    l1: mov ah,08
        int 21h
        cmp al,30h
        jz last
        mov dl,al
        mov ah,02
        int 21h
        jmp l1
  last: mov ah,4ch
        int 21h
 end start
