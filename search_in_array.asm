;search an element in an array
include 'emu8086.inc'
data segment
    array dw 1h,2h,3h,4h,5h
    data ends
code segment
    assume cs:code ds:data
    start: mov ax,data
           mov es,ax
           mov ax,24h
           mov cx,5h;length of array
           mov di,offset array
           repne scasb
           jnz exit
           print 'f'
           int 21h
           hlt
           exit: print 'nf'
                 int 21h
                 int 21h
           code ends
end start
    