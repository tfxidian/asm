assume cs:code
code segment
	dw 01h,02h,03h,04h,05h,06h,07h,08h
	start: 
	mov ax,0
	mov bx,0
	mov cx,8
	s: add ax,cs:[bx]
	add bx,2
	loop s
	
	mov ax,4c00h
	int 21h
code ends
end start
	
	

