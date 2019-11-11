;fing smallest byte in register ax and store it in cl
mov ax,0abc9h 
mov bp,ax
mov bx,10h 
div bx
mov cx,dx
jmp l1
l3:cmp dx,cx
jb vd  
ja l1
vd: mov cx,dx
l1: div bx
    cmp ax,bp
    jne l3
    je ij
ij: hlt
    
    


