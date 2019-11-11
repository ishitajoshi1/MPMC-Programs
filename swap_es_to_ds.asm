;exchange contents of es and ds
mov ax,2000h
mov ss,ax
mov bx,3000h
mov es,bx
mov sp,0200h
mov si,1234h
mov di,5678h
push es
push ds
pop es
pop ds