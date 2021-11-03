[org 0x7c00]

mov si, hello_world
mov ah, byte 0x0e

print_char:
    mov al, byte [si]
    
    cmp al, byte 0
    je endless_loop
    
    int 0x10
    inc si
    
    jmp print_char
    
endless_loop:
    jmp $


hello_world: db "Hello World !, 0

times 510 - ($ - $$) db 0
dw 0xaa55
