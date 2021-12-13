		mov tmod, #10h
	again:	mov th1, #0ffh
		mov tl1, #0dah
		setb tr1
	here:	jnb tf1, here
		clr tr1
		cpl p1.1
		clr tf1
		sjmp again
