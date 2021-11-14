assume ds:data , cs:code

data segment
n1 db 95h
n2 db ?
n3 db ?
data ends

code segment
start: mov ax, data
       mov ds, ax
       mov al, n1
       mov bl, al
       and bl, 0fh
       and al, 0f0h
       mov cx, 04h
       ror al, cl
       mov n2, al
       mov n3, bl
       int 03h
       code ends
       end start