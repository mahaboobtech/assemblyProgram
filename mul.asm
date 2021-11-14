assume ds:data , cs:code

data segment
n1 dw 1234h
n2 dw 0abcdh
prodct dd ?
data ends

code segment 
start: mov ax, data
       mov ds, ax
       mov ax, n1
       mov bx, n2
       mul bx
       mov si, offset prodct
       mov [si], ax
       inc si
       inc si
       mov [si], dx
       int 03h
       code ends
       end start