assume ds:data , cs:code

data segment
n1 dw 0abcdh
n2 dw 1234h
diff dw ?
data ends

code segment 
start: mov ax, data
       mov ds, ax
       mov ax, n1
       mov bx, n2
       sub ax, bx
       mov diff, ax
       int 03h
       code ends
       end start