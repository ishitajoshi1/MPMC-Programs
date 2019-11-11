include 'emu8086.inc'
data segment
    a db 0,1,2,3,4,5,6,7,8,9,10
    baa db 'missing$'
    caa db 'found$'
    data ends
code segment
    assume cs:code ds:data
    start:
    mov ax,data
    mov es,ax
    mov cx,11
    mov di,offset a
    cld
    mov al,2;missing number
    repne  scasb
    jz present:
    jnz absent:
    present:
    mov dx,offset caa
    mov ah,9
    int 21h
    absent: 
    mov dx,offset baa
    mov ah,9
    int 21h 
    ret
    code ends
end start