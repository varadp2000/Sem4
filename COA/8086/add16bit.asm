.8086
.model small
.data
        a dw 2001h
        b dw 1212h
        c dw ?
.code
start:
        MOV AX,@data
        MOV DS,AX
        MOV AX,a
        MOV BX,b
        ADD AX,BX
        MOV c,AX
        MOV AH,4Ch
        INT 21h
        end start
