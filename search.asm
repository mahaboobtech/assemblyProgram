	assume es: extra, cs:code
	
	extra segment
	n1 db 22h, 32h , 46h, 15h
	s db 46h	
	p db ?
	extra ends

	code segment
start:	mov ax, extra
	mov es, ax
	lea di, n1
	mov cl, 04h
	mov bl, 00h
	mov al,s
	cld
y: 	scasb
	jz k
	inc bl
	loop y
k: 	mov p, bl
	int 03h
	code ends
	end start
