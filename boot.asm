; hello there

; switching to teltype mode to print letters;
mov ah,0x0e
mov al, 'H'

; system interupt
int 0x10
mov ah,0x0e
mov al, 'e'

int 0x10
mov ah,0x0e
mov al, 'l'

int 0x10
mov ah,0x0e
mov al, 'l'

int 0x10
mov ah,0x0e
mov al, 'o'

int 0x10
jmp $


; padding for the rest of the code to fill up 512 bytes of boot sector.
times 510-($-$$) db 0
db 0x55, 0xaa