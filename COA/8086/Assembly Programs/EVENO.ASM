.8086
.model small
.data
        a dw 01h,02h,03h,04h,05h,06h,07h,08h,09h,10h
.code
        start:MOV AX,@data
              MOV DS,AX
              LEA SI,A
              MOV DX,00h
              MOV BL,02h
              MOV CL,10h
              Loop1:MOV AX,[SI]                                                                                                                                                                                                                                                                                                 
                    DIV BL
                    CMP AH,00h
                    JNZ Loop2
                    INC DH
                    JMP Loop3
              Loop2:INC DL
              Loop3:ADD SI,2
                    DEC CL
                    CMP CL,00h
                    JNZ Loop1
              MOV AH,4Ch
              INT 21h
       end start


