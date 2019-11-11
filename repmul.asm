mov al,42h
mov bl,31h
mul bl


mov dx,00h
mov ax,42h
mov bx,31h
l1:add dx,ax 
   dec bx
jnz l1
jz  l2
l2: hlt   
