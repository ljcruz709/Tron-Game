.model tiny
.code
.startup

mov ah,0
mov al,12h
int 10h

;obtiene el valor de un pixel negro para comparar colision

mov ah,0dh	
mov bh,0
mov cx,200
mov dx,200
int 10h
mov pixvali,al

;-----------------------pantalla de inicio-----------------------
;-----------------linea horizontal de la T
mov xi1, 30
mov yi1, 100
mov cx, 150
ciclo_inicio:  
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000010b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         
inc xi1

mov cx, ci
loop ciclo_inicio
;-----------------------------------------
;-------------------linea vertical de la T

mov xi1, 105
mov yi1, 100
mov cx, 150
ciclo_inicio2:    
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000010b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h        
inc yi1

mov cx, ci
loop ciclo_inicio2
;-----------------------------------------
;-------------------linea vertical de la R

mov xi1, 200
mov yi1, 250
mov cx, 150
ciclo_inicio3:     
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h        
dec yi1

mov cx, ci
loop ciclo_inicio3 ; 
;----------------------------------------
;------------------------cuadro de la R 1
mov cx, 70
ciclo_inicio4:   
mov ci, cx	

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         
inc xi1

mov cx, ci
loop ciclo_inicio4  
;----------------------------------------
;------------------------------cuadro R 2 
mov cx, 5
ciclo_inicio5:   
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         
inc yi1
inc xi1

mov cx, ci
loop ciclo_inicio5
;----------------------------------------
;------------------------------cuadro R 3

mov cx, 65
ciclo_inicio6:   
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         
inc yi1

mov cx, ci
loop ciclo_inicio6
;----------------------------------------
;------------------------------cuadro R 4
mov cx, 5
ciclo_inicio7:   
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         
inc yi1
dec xi1

mov cx, ci
loop ciclo_inicio7
;----------------------------------------
;------------------------------cuadro R 5

mov cx, 70
ciclo_inicio8:   
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         
dec xi1

mov cx, ci
loop ciclo_inicio8
;----------------------------------------
;--------------------------------R patita
mov cx, 75
ciclo_inicio9:   
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         
inc xi1
inc yi1

mov cx, ci
loop ciclo_inicio9
;----------------------------------------
;------------------------------O costados
mov xi1, 295
mov yi1, 100
mov xi2, 395
mov yi2, 250
mov cx, 150
ciclo_inicio10:   
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000010b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         
inc yi1

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi2
mov dx, yi2
int 10h         
dec yi2

mov cx, ci
loop ciclo_inicio10
;----------------------------------------
;--------------------------O horizontales
mov cx, 100
ciclo_inicio11:   
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000010b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         
inc xi1

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi2
mov dx, yi2
int 10h         
dec xi2

mov cx, ci
loop ciclo_inicio11
;----------------------------------------
;------------------------------N costados
mov xi1, 415
mov yi1, 250
mov xi2, 565
mov yi2, 100
mov cx, 150
ciclo_inicio12:   
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         
dec yi1

mov ah,0ch
mov al,01000010b
mov bh,0b
mov cx, xi2
mov dx, yi2
int 10h         
inc yi2

mov cx, ci
loop ciclo_inicio12
;----------------------------------------
;---------------------------diagonal de N
mov cx, 76
ciclo_inicio13:   
mov ci, cx

mov reta2, 1
call retardo

mov ah,0ch
mov al,01000100b
mov bh,0b
mov cx, xi1
mov dx, yi1
int 10h         
inc xi1
inc yi1

mov ah,0ch
mov al,01000010b
mov bh,0b
mov cx, xi2
mov dx, yi2
int 10h         
dec xi2
dec yi2

mov cx, ci
loop ciclo_inicio13
;----------------------------------------
;esperamos una tecla para iniciar el juego
mov ah,09h
mov dx, offset continua
int 21h

mov ah, 0
int 16h        
;----------------------------------------
;--------------------------Margen-------------------------------------
;----------------------limpiamos pantalla
inicio:
mov ah,0        
mov al,12h
int 10h
;----------------------------------------
;-------vamos a pintar 470 de las orillas
mov xi2, 620
mov yi2, 0
mov xi1, 0
mov yi1, 0
mov cx,470           
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
;---------------------------------------
;---vamos a pintar 620 de arriba y abajo
mov cx,620           
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
;---------------------------------------
;-----------------------Pintado de bombas-------------------------
;--------------------------------Bomba 1
mov ci,100
mov xi1,51
mov yi1,51
bomba1:
cmp xi1,61
jne siguepintando
inc yi1
mov xi1,51
siguepintando:
mov ah,0ch
mov al,01001110b
mov bh,0b
mov cx,xi1
mov dx,yi1
int 10h
inc xi1
dec ci
cmp ci,0
jne bomba1
;---------------------------------------
;obtiene el valor de un pixel amarillo para comparar colision
mov ah,0dh	
mov bh,0
mov cx,51
mov dx,51
int 10h
mov pixvalibomb,al
;---------------------------------------
;--------------------------------Bomba 2
mov ci,100
mov xi1,560
mov yi1,51
bomba2:
cmp xi1,570
jne siguepintando2
inc yi1
mov xi1,560
siguepintando2:
mov ah,0ch
mov al,01001110b
mov bh,0b
mov cx,xi1
mov dx,yi1
int 10h
inc xi1
dec ci
cmp ci,0
jne bomba2
;---------------------------------------
;--------------------------------Bomba 3
mov ci,100
mov xi1,51
mov yi1,410
bomba3:
cmp xi1,61
jne siguepintando3
inc yi1
mov xi1,51
siguepintando3:
mov ah,0ch
mov al,01001110b
mov bh,0b
mov cx,xi1
mov dx,yi1
int 10h
inc xi1
dec ci
cmp ci,0
jne bomba3
;---------------------------------------
;--------------------------------Bomba 4
mov ci,100
mov xi1,560
mov yi1,410
bomba4:
cmp xi1,570
jne siguepintando4
inc yi1
mov xi1,560
siguepintando4:
mov ah,0ch
mov al,01001110b
mov bh,0b
mov cx,xi1
mov dx,yi1
int 10h
inc xi1
dec ci
cmp ci,0
jne bomba4
jmp ciclo
;---------------------------------------
;----------------------Explosion de bombas-----------------------
;----------------------------Explosion 1
despintar1:
mov ci,0FFFFh
mov xi1,1
mov yi1,1
desbomba1:
cmp xi1,256
jne siguedespintando
inc yi1
mov xi1,1
siguedespintando:
mov ah,0ch
mov al,pixvali
mov bh,0b
mov cx,xi1
mov dx,yi1
int 10h
inc xi1
dec ci
cmp ci,0
jne desbomba1
jmp ciclo
;---------------------------------------
;----------------------------Explosion 2
despintar2:
mov ci,0FFFFh
mov xi1,363
mov yi1,1
desbomba2:
cmp xi1,620
jne siguedespintando2
inc yi1
mov xi1,363
siguedespintando2:
mov ah,0ch
mov al,pixvali
mov bh,0b
mov cx,xi1
mov dx,yi1
int 10h
inc xi1
dec ci
cmp ci,0
jne desbomba2
jmp ciclo
;---------------------------------------
;----------------------------Explosion 3
despintar3:
mov ci,0FFFFh
mov xi1,1
mov yi1,213
desbomba3:
cmp xi1,256
jne siguedespintando3
inc yi1
mov xi1,1
siguedespintando3:
mov ah,0ch
mov al,pixvali
mov bh,0b
mov cx,xi1
mov dx,yi1
int 10h
inc xi1
dec ci
cmp ci,0
jne desbomba3
jmp ciclo
;---------------------------------------
;----------------------------Explosion 4
despintar4:
mov ci,0FFFFh
mov xi1,363
mov yi1,213
desbomba4:
cmp xi1,620
jne siguedespintando4
inc yi1
mov xi1,363
siguedespintando4:
mov ah,0ch
mov al,pixvali
mov bh,0b
mov cx,xi1
mov dx,yi1
int 10h
inc xi1
dec ci
cmp ci,0
jne desbomba4
;---------------------------------------
;----------------------------juego-------------------------------
mov hbb1, 1
mov hbt1, 0
mov hbb2, 1
mov hbt2, 0
;--------------------------Jugador 1-----------------------------
ciclo:
mov reta2, 5     ;variables para el retardo
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
;---------------------------------------
;-------------------------invencibilidad
cmp al,101  
je simon

;se valida si la tecla recibida esta incluida en los controles del juego

cmp al, 100
je simon	    
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
;---------------------------------------
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
;---------------------------------------
;--------cuatro direcciones de jugador 1
nc1:
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
;---------------------------------------
;------valida si hay colision para el J1
mov ah,0dh	
mov bh,0
mov cx,x1
mov dx,y1
int 10h
cmp al,pixvali
mov perdedor, 1
je trol2
cmp al,pixvalibomb 
jne nelson ;------------------- salta si no choco con bomba
cmp y1,235
ja mitadbaja ;--salta si la bomba esta en la mitad baja de la pantalla
cmp x1,310
ja mitadderalt ;--salta si la bomba esta en esquina superior der
jmp despintar1
mitadderalt:
jmp despintar2
mitadbaja: ;------la mitad baja--------------------------------
cmp x1,310
ja mitadderbaj ;--salta si la bomba esta en esquina inferior der
jmp despintar3
mitadderbaj:
jmp despintar4
nelson:
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
;---------------------------------------
;--------------------impresion jugador 1

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
int 10h    
;---------------------------------------     
;--------------------------Jugador 2--------------------------

mov ah,01h
int 16h
jnz trol32; si es cero no se modifica nada 
jmp nocambiatecla2
trol32:
;---------------------------------------
;-------------------------invencibilidad
cmp al,111    
je simon2

;se valida si la tecla recibida esta incluida en los controles del juego

cmp al, 108
je simon2	    
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
;---------------------------------------
;verifica que no sea la direccion contraria
izquierda2:
cmp al, 106
jne derecha2
cmp tecla2, 108
je handbreak2
jmp cambiatecla2
;---------------------------------------
;--------cuatro direcciones de jugador 2
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
;---------------------------------------
;------valida si hay colision para el J1
mov ah,0dh	
mov bh,0
mov cx,x2
mov dx,y2
int 10h
cmp al,pixvali
mov perdedor, 2
je trol22
cmp al,pixvalibomb 
jne nelson2 ;------------------- salta si no choco con bomba
cmp y2,235
ja mitadbaja2 ;--salta si la bomba esta en la mitad baja de la pantalla
cmp x2,310
ja mitadderalt2 ;--salta si la bomba esta en esquina superior der
jmp despintar1
mitadderalt2:
jmp despintar2
mitadbaja2: ;------la mitad baja--------------------------------
cmp x2,310
ja mitadderbaj2 ;--salta si la bomba esta en esquina inferior der
jmp despintar3
mitadderbaj2:
jmp despintar4
nelson2:
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
;---------------------------------------
;--------------------impresion jugador 1
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
int 10h

mov ah,0ch
mov al,0
int 21h         ;esto limpia el buffer

jmp ciclo
;---------------------------------------
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
;--------------------------------------------------------------
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
;---------------------------------------
;------------------Inicializar variables
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
mov hbb1, 1
mov hbt1, 0
mov hbb2, 1
mov hbt2, 0     

jmp inicio
;---------------------------------------
;--------------------------Fin ejecucion
fin:
mov ax,4c00h
int 21h	

x1 dw 1
y1 dw 235
x2 dw 619
y2 dw 235

xi1 dw 0              	;x,y iniciales para poder dibujar el borde
yi1 dw 0             	;desde la esquina superior izquierda
xi2 dw 620	      		;estas son para empezar desde la esquina
yi2 dw 0	      		;inferior derecha

ci dw 0
reta dw ?
reta2 dw ?
tecla db 100
tecla2 db 106
pixvali db ?
pixvalibomb db ?
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