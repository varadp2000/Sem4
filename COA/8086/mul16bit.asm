.8086
.model small
.data
        a dw 2000h
        b dw 0002h
        c dd ?
.code
start:
        MOV AX,@data
        MOV DS,AX
        MOV AX,a
        MOV BX,b
        MUL BX
        MOV c,AX
        MOV AH,4Ch
        INT 21h
        end start
