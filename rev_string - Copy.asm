;store in reverse order
data segment
    msg db 'hell'
    rev db 4 dup(?)
    data ends
code segment
    assume cs:code ds:data
    start:
    mov ax,data
    mov ds,ax
    mov cx,4;length of string
    mov si,0
    mov di,4
    dec di
l1: mov al,msg[si]
    mov rev[di],al
    inc si
    dec di
    loop l1
    code ends
end start
    