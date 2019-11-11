;count no of 1s in a binary number
mov ax,1110b
mov cx,ax
l1:cmp cx,0
   jz finish
   shr cx,01;it will store last bit in carry flag
jc one_found
jnc not_found
one_found: inc bx;counter
           jmp l1
           hlt
not_found: jmp l1
           hlt 
finish:hlt