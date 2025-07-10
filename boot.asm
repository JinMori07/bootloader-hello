[bits 16]
[org 0x7C00]

start:
    mov si, message
    mov ah, 0x0E


print_loop:
    lodsb
    cmp al, 0
    je read_input
    int 0x10
    jmp print_loop

read_input:
    mov ah, 0x0E

    mov al, 0x0D
    int 0x10

    mov al, 0x0A
    int 0x10

input_loop:
    mov ah, 0
    int 0x16
    cmp al, 0x0D
    je done

    mov ah, 0x0E
    int 0x10

    jmp input_loop


done:

    mov ah, 0x0E

    mov al, 0x0D
    int 0x10

    mov al, 0x0A
    int 0x10

    jmp $


message db 'HELLO WORLD', 0


times 510 - ($ - $$) db 0
dw 0xAA55
