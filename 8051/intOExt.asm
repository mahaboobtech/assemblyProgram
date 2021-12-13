		mov r7,#0ah
		mov r0,#20h
		mov dptr,#1020h
	nxt: 	mov a,@r0
		mov @dptr,a
		inc r0
		inc dptr
		djnz r7,nxt

;see the output at x:1020h
;see the input at d:0020h location before that modify it
