.model tiny
.code
.startup

mov ah, 00h
mov al, 12h
int 10h



mov ax,4c00h
int 21h

end