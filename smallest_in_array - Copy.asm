;find smallest number in an array(stored in dl-8bit))
data segment
    array dw 1181h,1262h,1203h,3484h,5495h,1146h,0927h,7618h,2365h,2124h
    data ends
code segment
    assume cs:code ds:data
start:
     mov ax,data
     mov ds,ax
     mov cx,9;length of array is 10 but we take 9 otherwise next byte is loaded
     mov si,offset array
     mov dx,[si]
     l1: mov ax,[si] 
         inc si ;si needs to be increased only one time for byte
         inc si
     cmp ax,dx
     ja l3
     jb l2
     jz l1
     l2: mov dx,ax
         loop l1
         hlt
     l3: loop l1
         hlt    
        
               code ends
end start