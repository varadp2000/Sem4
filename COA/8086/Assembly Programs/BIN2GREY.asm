.model small
.data
        a db 0Eh
.code
 start: mov ax,@data
        mov ds,ax
        mov al,a
        mov bl,al
        add al,bl
        xor al,bl
        shr al,01
        mov cl,02h
        mov bl,al
    l1: rol bl,04
        mov dl,bl
        and dl,0fh
        cmp dl,09
        jbe l2
        add dl,07
    l2: add dl,30h
        mov ah,02h
        int 21h
        dec cl
        jnz l1
        mov ah,4ch
        int 21h
 end start
