org 07c00h; 告诉编译器加载到7c00h
    mov ax, cs
    mov ds, ax
    mov es, ax
    call DispStr
jmp $ 
DispStr:
    mov ax, BootMessage
    mov bp, ax
    mov cx, 16
    mov ax, 0130h
    mov bx, 000ch
    mov dl, 0
int 10h
ret
BootMessage: db "Hello, os world!"
times 510 - ($-$$) db 0
dw 0xaa55
