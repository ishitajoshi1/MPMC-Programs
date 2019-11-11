;wap to move contents from ds:1000h and ds:1100h to ds:1200h and ds:1300h. 
mov [1000h],1234h
mov [1002h],5678h
mov [1100h],2409h 
mov si,0h 
mov di,0h
mov cx,81h;i have to get si=100 so in decimal 10*5=50,here 16*5=80
L1: mov ax,[1000h+si]
    add si,2
    jmp L2   
L2: mov [1200h+di],ax
    dec cx
    add di,2
    cmp cx,0
    jnz L1
    
    