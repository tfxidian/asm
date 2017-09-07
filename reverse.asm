assume cs:code
code segment
	dw 01h,02h,03h,04h,05h,06h,07h,08h
	dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	
	start:
	mov ax,cs
	mov ss,ax
	mov sp,30h
	mov cx,8
	mov bx,0
	
	s:push cs:[bx]
	add bx,2
	loop s
	
	mov cx,8
	mov bx,0
	s1: pop cs:[bx]
	add bx,2
	loop s1
	
	mov ax,4c00h
	int 21h
code ends
end start

