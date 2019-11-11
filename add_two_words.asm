;a program to add two words
assume cs:code ds:data
data segment
    num1 dw 1234h
    num2 dw 5678h
    result dw 01 dup(?)
    data ends
code segment
    start: mov ax,data
           mov ds,ax
           mov ax,num1
           mov bx,num2
           clc
           add ax,bx
           mov di,offset result
           mov [di],ax
           code ends
end start
    
    