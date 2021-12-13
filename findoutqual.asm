		mov r7, #0ah
		mov r0, #10h
		mov r1, #20h
		mov r6, #00h
  nxt: 	mov a, @r0
		mov b,a
		mov a,@r1
		cjne a, b, nomatch
		inc r6
 nomatch: inc r0
		  inc r1
		  djnz r7, nxt
