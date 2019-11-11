;fast multiplication
mov ax,0100b;multiplier
mov bx,1110b
not ax;multiplier is negative
mov cx,8;no of bits involved
mov dx,0000
;starting booth algo
l2:
cmp cx,0
je exit
shl bx,1
jc l1
jnc l3
l1: 
shl dx,1
add dx,ax
dec cx
jmp l2
l3:
shl dx,1
dec cx
jmp l2
exit:
hlt

