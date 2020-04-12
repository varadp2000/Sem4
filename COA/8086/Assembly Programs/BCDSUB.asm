.model small
.data
        a dw 5102h
        b dw 3203h
.code
 start: mov ax,@data
        mov ds, ax
        mov ax, a
        mov bx, b
        sub al,bl
        das
        mov bl,al
        sbb ah,bh
        mov al,ah
        das
        mov bh,al
        mov cx,0404h
    l2: rol bx,cl
        mov dl,bl
        and dl,0fh
        cmp dl,09
        jbe l4
        add dl,07
    l4: add dl,30h
        mov ah,02
        int 21h
        dec ch
        jnz l2
        mov ah,4ch
        int 21h
 end start

                

