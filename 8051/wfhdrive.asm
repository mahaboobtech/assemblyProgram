;wave drive mode 
	x: 	mov p1, #08h
		acall delay
		mov p1, #04h
		acall delay
		mov p1, #02h
		acall delay
		mov p1, #01h
		sjmp x
	delay:	mov r7, #04h
	here2:	mov r6, #0ffh
	here1:	mov r5, #0ffh
	here:	djnz r5, here
		djnz r6, here1
		djnz r7, here2
		ret
		end

;full drive mode 
	x: 	mov p1, #0ch
		acall delay
		mov p1, #06h
		acall delay
		mov p1, #03h
		acall delay
		mov p1, #09h
		sjmp x
	delay:	mov r7, #04h
	here2:	mov r6, #0ffh
	here1:	mov r5, #0ffh
	here:	djnz r5, here
		djnz r6, here1
		djnz r7, here2
		ret
		end
		
		
		
;half drive mode 

	x: 	mov p1, #08h
		acall delay
		mov p1, #0ch
		acall delay
		mov p1, #04h
		acall delay
		mov p1, #06h
		acall delay
		mov p1, #02h
		acall delay
		mov p1, #03h
		acall delay
		mov p1, #01h
		acall delay
		mov p1, #09h
		sjmp x
	delay:	mov r7, #04h
	here2:	mov r6, #0ffh
	here1:	mov r5, #0ffh
	here:	djnz r5, here
		djnz r6, here1
		djnz r7, here2
		ret
		end
