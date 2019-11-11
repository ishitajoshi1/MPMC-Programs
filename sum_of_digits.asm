;sum of digits
mov ax,2409h
mov bp,ax
mov bx,10h
l1:div bx
   add cx,dx
   cmp ax,bp
   jnz l1
   jz l2
   l2:hlt