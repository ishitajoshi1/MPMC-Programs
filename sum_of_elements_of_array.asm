;find sum of elements of array
data segment
    array db 1h,2h,3h,4h
    data ends
code segment
    assume cs:code ds:data
    start:mov ax,data
          mov ds,ax
          mov si,offset array
          mov cx,4;length of array
          mov ax,0h
          mov bx,0h
      l1: mov al,[si]
          inc si
          add bl,al
          loop l1
          
              code ends
end start
