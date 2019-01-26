.model tiny
.code
.startup

mov ah,0
mov al,12h
int 10h

mov ah,0dh	;obtiene el valor de un pixel negro para comparar colision
mov bh,0
mov cx,200
mov dx,200
int 10h
mov pixvali,al

;-----------------------pantalla de inicio-----------------------

mov xi1, 30
mov yi1, 100
mov cx, 150
ciclo_inicio:  ;linea horizontal de la t
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000010b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         ;imprimimos el pixel en la posicion x,y
inc xi1

mov cx, ci
loop ciclo_inicio

mov xi1, 105
mov yi1, 100
mov cx, 150
ciclo_inicio2:    ;linea vertical de la t
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000010b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         ;imprimimos el pixel en la posicion x,y
inc yi1

mov cx, ci
loop ciclo_inicio2

mov xi1, 200
mov yi1, 250
mov cx, 150
ciclo_inicio3:     ;linea vertical de la r
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         ;imprimimos el pixel en la posicion x,y
dec yi1

mov cx, ci
loop ciclo_inicio3 ; 

mov cx, 70
ciclo_inicio4:   ;cuadro de la r 1
mov ci, cx	

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         ;imprimimos el pixel en la posicion x,y
inc xi1

mov cx, ci
loop ciclo_inicio4  

mov cx, 5
ciclo_inicio5:  ;  cuadro r 2  
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         ;imprimimos el pixel en la posicion x,y
inc yi1
inc xi1

mov cx, ci
loop ciclo_inicio5


mov cx, 65
ciclo_inicio6:   ;  cuadro r 3
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         ;imprimimos el pixel en la posicion x,y
inc yi1

mov cx, ci
loop ciclo_inicio6

mov cx, 5
ciclo_inicio7:   ;  cuadro r 4
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         ;imprimimos el pixel en la posicion x,y
inc yi1
dec xi1

mov cx, ci
loop ciclo_inicio7


mov cx, 70
ciclo_inicio8:   ;  cuadro r 5
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         ;imprimimos el pixel en la posicion x,y
dec xi1

mov cx, ci
loop ciclo_inicio8

mov cx, 75
ciclo_inicio9:   ; r patita
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         ;imprimimos el pixel en la posicion x,y
inc xi1
inc yi1

mov cx, ci
loop ciclo_inicio9

mov xi1, 295
mov yi1, 100
mov xi2, 395
mov yi2, 250
mov cx, 150
ciclo_inicio10:   ; o costados
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000010b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         ;imprimimos el pixel en la posicion x,y
inc yi1

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi2
mov dx, yi2
int 10h         ;imprimimos el pixel en la posicion x,y
dec yi2

mov cx, ci
loop ciclo_inicio10

mov cx, 100
ciclo_inicio11:   ; o horizontales
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000010b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         ;imprimimos el pixel en la posicion x,y
inc xi1

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi2
mov dx, yi2
int 10h         ;imprimimos el pixel en la posicion x,y
dec xi2

mov cx, ci
loop ciclo_inicio11


mov xi1, 415
mov yi1, 250
mov xi2, 565
mov yi2, 100
mov cx, 150
ciclo_inicio12:   ; n costados
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         ;imprimimos el pixel en la posicion x,y
dec yi1

mov ah,0ch
mov al,01000010b
mov bh,0b
mov cx, xi2
mov dx, yi2
int 10h         ;imprimimos el pixel en la posicion x,y
inc yi2

mov cx, ci
loop ciclo_inicio12

mov cx, 76
ciclo_inicio13:   ; diagonal de n
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         ;imprimimos el pixel en la posicion x,y
inc xi1
inc yi1

mov ah,0ch
mov al,01000010b
mov bh,0b
mov cx, xi2
mov dx, yi2
int 10h         ;imprimimos el pixel en la posicion x,y
dec xi2
dec yi2

mov cx, ci
loop ciclo_inicio13


mov ah,09h
mov dx, offset continua
int 21h


mov ah, 0
int 16h        ; esperamos una tecla para iniciar el juego

;--------------------------margen-------------------------------------
inicio:
mov ah,0        ; limpiamos pantalla
mov al,12h
int 10h

mov xi2, 620
mov yi2, 0
mov xi1, 0
mov yi1, 0
mov cx,470           ;vamos a pintar 470 de las orillas
ciclo_borde:
mov reta2, 1
call retardo
mov ci,cx

mov ah,0ch
mov al,01000111b
mov bh,0b
mov cx,xi1
mov dx,yi1
int 10h
inc yi1

mov cx,xi2
mov dx,yi2
int 10h
inc yi2

mov cx,ci
loop ciclo_borde

mov cx,620           ;vamos a pintar 620 de arriba y abajo
mov xi2,0
mov yi2,0
ciclo_borde1:
mov ci,cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000111b
mov bh,0b
mov cx,xi1
mov dx,yi1
int 10h
inc xi1

mov cx,xi2
mov dx,yi2
int 10h
inc xi2

mov cx,ci

loop ciclo_borde1

;----------------------------juego-------------------------------
mov hbb1, 1
mov hbt1, 0
mov hbb2, 1
mov hbt2, 0


ciclo:
mov reta2, 5     ;variables para esperar menos de un segundo para no imprimir tan rapido
call retardo

mov ah,01h
int 16h
jnz trol3; si es cero no se modifica nada 
jmp nocambiatecla
trol3:

cmp al, 53
jne trol
jmp fin
trol:

cmp al,101    ; este es el especial de mini invensibilidad
je simon

cmp al, 100
je simon	    ;se valida si la tecla recibida esta incluida en los controles del juego
cmp al, 115
je simon
cmp al, 119
je simon
cmp al, 97
jne nocambiatecla

simon:
cmp al, 101
jne arriba
cmp cool_espe, 0
jne no_reactiva_espe
mov espe, 15
mov cool_espe, 200
no_reactiva_espe:
jmp nocambiatecla

arriba:
cmp al, 119
jne abajo
cmp tecla, 115
je handbreak
jmp cambiatecla

abajo:
cmp al, 115
jne izquierda
cmp tecla, 119
je handbreak
jmp cambiatecla
		;verifica que no sea la direccion contraria
izquierda:
cmp al, 97
jne derecha
cmp tecla, 100
je handbreak
jmp cambiatecla

derecha:
cmp al, 100
jne nocambiatecla
cmp tecla, 97
je handbreak

cambiatecla:
mov tecla, al
cmp hbt1, 0
je nocambiatecla
mov hbt1, 0
jmp nocambiatecla


handbreak:
cmp hbb1, 1
jne nocambiatecla
mov hbt1, 255
mov hbb1, 0


nocambiatecla:
cmp hbt1, 0
je nc1
dec hbt1
jmp sobrevive_fin


nc1:
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

cmp espe, 0
jnz sobrevive

mov ah,0dh	;valida si hay colision para el J1
mov bh,0
mov cx,x1
mov dx,y1
int 10h
cmp al,pixvali
mov perdedor, 1
je trol2
jmp gameover
trol2:

cmp cool_espe,0
je nodecrementacool
dec cool_espe
nodecrementacool:

jmp sobrevive_fin
sobrevive:
dec espe
sobrevive_fin:

;JUGADOR1
mov ah,0ch
cmp espe,0
je espe_activo
mov al,01000011b
jmp fin_espe_activo
espe_activo:
mov al,01000010b
fin_espe_activo:
mov bh,0b
mov cx,x1
mov dx,y1
int 10h         ;imprimimos el pixel en la posicion x,y
;--------------------------------J2--------------------------

mov ah,01h
int 16h
jnz trol32; si es cero no se modifica nada 
jmp nocambiatecla2
trol32:


cmp al,111    ; este es el especial de mini invensibilidad
je simon2

cmp al, 108
je simon2	    ;se valida si la tecla recibida esta incluida en los controles del juego
cmp al, 107
je simon2
cmp al, 105
je simon2
cmp al, 106
jne nocambiatecla2

simon2:
cmp al, 111
jne arriba2
cmp cool_espe2, 0
jne no_reactiva_espe2
mov espe2, 15
mov cool_espe2, 200
no_reactiva_espe2:
jmp nocambiatecla2

arriba2:
cmp al, 105
jne abajo2
cmp tecla2, 107
je handbreak2
jmp cambiatecla2

abajo2:
cmp al, 107
jne izquierda2
cmp tecla2, 105
je handbreak2
jmp cambiatecla2
		;verifica que no sea la direccion contraria
izquierda2:
cmp al, 106
jne derecha2
cmp tecla2, 108
je handbreak2
jmp cambiatecla2

derecha2:
cmp al, 108
jne nocambiatecla2
cmp tecla2, 106
je handbreak2

cambiatecla2:
mov tecla2, al
cmp hbt2, 0
je nocambiatecla2
mov hbt2, 0
jmp nocambiatecla2

handbreak2:
cmp hbb2, 1
jne nocambiatecla2
mov hbt2, 255
mov hbb2, 0

nocambiatecla2:
cmp hbt2, 0
je nc12
dec hbt2
jmp sobrevive_fin2


nc12:
                    ;cuatro direcciones de jugador 1
cmp tecla2,108
jne nocambiaj2
inc x2
nocambiaj2:

cmp tecla2,107
jne nocambia12
inc y2
nocambia12:

cmp tecla2,106
jne nocambia22
dec x2
nocambia22:

cmp tecla2,105
jne nocambia32
dec y2
nocambia32:

cmp espe2, 0
jnz sobrevive2

mov ah,0dh	;valida si hay colision para el J2
mov bh,0
mov cx,x2
mov dx,y2
int 10h
cmp al,pixvali
mov perdedor, 2
je trol22
jmp gameover
trol22:

cmp cool_espe2,0
je nodecrementacool2
dec cool_espe2
nodecrementacool2:

jmp sobrevive_fin2
sobrevive2:
dec espe2
sobrevive_fin2:


;JUGADOR 2
mov ah,0ch
cmp espe2,0
je espe_activo2
mov al,01001101b
jmp fin_espe_activo2
espe_activo2:
mov al,01000100b
fin_espe_activo2:
mov bh,0b
mov cx,x2
mov dx,y2
int 10h         ;imprimimos el pixel en la posicion x,y

mov ah,0ch
mov al,0
int 21h         ;esto limpia el buffer

jmp ciclo

;---------------------------retardo----------------------------
retardo:
mov reta, 16000
retardo1:
retardo2:
dec reta
jnz retardo2
mov reta,16000
dec reta2
jnz retardo1     ;hacemos que el programa se espere un poco
ret

;---------------------------game over----------------------------
gameover:
mov ah,0
mov al,13h
int 10h

mov ah,2
mov bh,0
mov dh,10
mov dl,7
int 10h

mov ah,09h
mov dx, offset over
int 21h

cmp perdedor,1
je pierde1
cmp perdedor,2
je pierde2


pierde1:
mov ah,09h
mov dx, offset gana2
int 21h
jmp saltote

pierde2:
mov ah,09h
mov dx, offset gana1
int 21h

saltote:

mov ah,0
int 16h
mov x1,1
mov y1,235
mov x2,619
mov y2,235
mov xi1,0            
mov yi1,0             
mov xi2,620	      
mov yi2,0
mov tecla,100
mov tecla2,106	      

jmp inicio


fin:
mov ax,4c00h
int 21h	

x1 dw 1
y1 dw 235
x2 dw 619
y2 dw 235

xi1 dw 0              ;x,y iniciales para poder dibujar el borde
yi1 dw 0              ;desde la esquina superior izquierda
xi2 dw 620	      ;estas son para empezar desde la esquina
yi2 dw 0	      ;inferior derecha

ci dw 0
reta dw ?
reta2 dw ?
tecla db 100
tecla2 db 106
pixvali db ?
over db "GAME OVER$"
gana1 db " GANADOR JUGADOR 1$"
gana2 db " GANADOR JUGADOR 2$"
continua db "Presiona una tecla para continuar$";33
perdedor db ?
hbt1 db 0
hbb1 db 1
hbt2 db 0
hbb2 db 1

espe dw 0
cool_espe dw 0
espe2 dw 0
cool_espe2 dw 0

end