;wap to transfer 10 bytes of data from 25000h to 35000h 
mov ax,2000h
mov ds,ax
mov si,5009h
mov bx,3000h
mov es,bx
mov di,5009h
mov ds:[5000h],1234h
mov ds:[5002h],5678h
mov cx,10
std 
rep movsb
;wap to transfer 10 words from 25000h to 35000h in reverse order(we can't use mov instruction because si and di are incremented/decremented
;sath mein
mov ax,2000h
mov ds,ax
mov si,5000h 
mov bx,3000h
mov es,bx
mov di,5012h
mov cx,10 
mov ds:[si],1234h
mov ds:[si+18],5678h
l1: cld
    lodsw
    std
    stosw
    loop l1
