mov ax,1234h
mov bx,0567h 
mov cx,00h
div bx

mov ax,1234h
mov bx,0567h
l1: sub ax,bx
    inc cx
cmp ax,bx
jge l1     
hlt    