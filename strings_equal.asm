;compare if two strings are equal 
include 'emu8086.inc'
data segment
    msg db 'hi'
    msg1 db 'hi'
    data ends
code segment
    assume cs:code ds:data es:data
    start:mov ax,data
          mov ds,ax
          mov es,ax
          mov cx,2;length of string
          mov si,offset msg
          mov di,offset msg1
          repe cmpsb
          jz l1
          jnz l2
          l1: print 'e'
              int 21h 
              hlt
          l2: print 'ne'
              int 21h
              int 21h
              hlt
              code ends
end start