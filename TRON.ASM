.model tiny
.code
.startup

mov ah,0
mov al,12h
int 10h

mov cx,400      ;pixeles a pintar

ciclo:
mov reta,16000
mov reta2,7     ;variables para esperar menos de un segundo para no imprimir tan rapido

mov ah,01h
int 16h
jz nocambiatecla; si es cero no se modifica nada 

cmp al, 53
je simon
cmp al, 100
je simon	    ;se valida si la tecla recibida esta incluida en los controles del juego
cmp al, 115
je simon
cmp al, 119
je simon
cmp al, 97
jne nelas
simon:
mov tecla, al
nocambiatecla:

nelas:      
      
                    ;cuatro direcciones de jugador 1
cmp tecla,100
jne nocambia
inc x1
nocambia:

cmp tecla,115
jne nocambia1
inc y1
nocambia1:

cmp tecla,97
jne nocambia2
dec x1
nocambia2:

cmp tecla,119
jne nocambia3
dec y1
nocambia3:

mov ah,0ch
mov al,0
int 21h         ;esto limpia el buffer

;JUGADOR1
mov ah,0ch
mov al,01000010b
mov bh,0b
mov cx,x1
mov dx,y1
int 10h         ;imprimimos el pixel en la posicion x,y

;JUGADOR 2
mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx,x2
mov dx,y2
int 10h         ;imprimimos el pixel en la posicion x,y

inc y2

retardo:
retardo1:
dec reta
jnz retardo1
mov reta,16000
dec reta2
jnz retardo     ;hacemos que el programa se espere un poco

cmp tecla,53
je fin
jmp ciclo

fin:

mov ax,4c00h
int 21h	

x1 dw 50
y1 dw 0
x2 dw 100
y2 dw 0

ci dw 0
reta dw ?
reta2 dw ?
tecla db 115
end