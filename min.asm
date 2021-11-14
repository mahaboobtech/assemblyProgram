assume ds:data , cs:code

data segment
n1 dw 1234h, 0456h, 0abcdh, 2678h
max dw ?
data ends

code segment
start: mov ax, data
       mov ds, ax
       lea si, [n1]
       mov ax, [si]
       mov cx, 03h
    x: inc si
       inc si
       cmp ax, [si]
       jc y
       mov ax, [si]
    y: loop x
       mov max, ax 
       int 03h
       code ends
       end start
