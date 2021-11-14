assume ds:data , cs:code

data segment
n1 db 95h
n2 db 88h
bcdSum dw ?
data ends

code segment
start: mov ax, data
       mov ds, ax
       mov al, n1
       mov bl, n2
       add al, bl
       daa 
       lahf
       and ah, 01h
       mov bcdSum, ax
       int 03h
       code ends
       end start
