assume ds:data , cs:code , ss:stack_seg

data segment
bcd db 32h
bin dw ?
data ends

stack_seg segment stack 
dw 40 dup(0)
topstack label word
stack_seg ends

code segment
start: mov ax, data
       mov ds, ax
       mov ax, stack_seg
       mov ss, ax
       mov sp, offset topstack
       mov ax, word ptr[bcd]
       push ax
       call bcd_bin
       pop ax
       mov bin, ax
       int 03h
bcd_bin proc near 
       int 01h
       pushf 
       push ax
       push bx
       push cx
       push bp
       mov  bp, sp
       mov al, [bp+12]
       mov bl, al
       and bl, 0fh
       and al, 0f0h
       mov cl, 04h 
       rol al, cl
       mov bh, 0ah
       mul bh
       add al, bl
       mov [bp+12],al
       pop bp
       pop cx
       pop bx
       pop ax
       popf
       ret
       bcd_bin endp
       code ends
       end start