data segment
    a db 4h,3h,2h,1h
    data ends
code segment
    assume cs:code ds:data
    start:
    mov ax,data
    mov ds,ax
    mov cx,3
    mov si,offset a
    l2:
    mov al,[si]
    mov bl,[si+1]
    mov dh,al
    mov dl,bl
    cmp dh,dl
    ja l1
    jb l3
    l1:
    mov [si],dl
    mov [si+1],dh
    inc si
    cmp si,cx
    jae l3
    jb l2
    l3: 
    mov si,0h
    loop l2
    hlt
    code ends
end start