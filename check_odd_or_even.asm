;check if a numbe ris odd or even
mov ax,2409h
mov bx,2h
div bx
cmp dx,0
jz even
jnz odd
even:hlt
odd:hlt
