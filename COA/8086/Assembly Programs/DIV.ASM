.8086
.model small
.data
        a dw 0008h
        b dw 0004h
        c dw ?
.code
        start:MOV AX,@data
              MOV DS,AX
              MOV AX,a
              MOV BX,b
              DIV BX
              MOV c,AX
              MOV AH,4Ch
              INT 21h
        end start
