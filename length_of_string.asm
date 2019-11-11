;find length of string
data segment
    msg db 'hell$'
    data ends
code segment
    assume cs:code ds:data
    start:
    mov ax,data
    mov ds,ax
    mov al,'$'
    mov cx,0h
    mov si,offset msg
l1: cmp al,[si]
    je l2
    inc cl
    inc si
    jmp l1
    l2: hlt
    code ends
end start