; this is collabration with dhanush kumar who is my 
; friend, 
; so the most of credits goes the dhanush kumar 
; and that code is modified  , this is the modified version 


assume ds:data , cs:code , es:data

data segment 
n1 db "hello"
db 20 dup(0)
n2 db ?
data ends

code segment
start: mov ax, data
       mov ds, ax
       mov ax, data
       mov es, ax
       lea si, n1
       mov ax, [si]
       lea di, n2
       mov cx, 05h
  jum: mov [di], ax
       inc di
       inc si
       mov ax, [si]
       dec cx
       jcxz exit
       jmp jum 
 exit: code ends 
       end start
       
