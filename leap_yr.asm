;wap to find out if a year is leap or not
mov ax,2019h;year to be checked is in ax
mov cx,ax
mov bx,4d
div bx 
cmp dx,0
jz is_lyr
jnz l2
l2: mov ax,cx
    mov bx,100d
    div bx
    cmp dx,0 
    jz is_lyr
    jnz l3
l3: mov ax,cx
    mov bx,400d
    div bx
    cmp dx,0 
    jz is_lyr
    jnz not_lyr
is_lyr:hlt
not_lyr:hlt 