# Tron-Game
Project developed by a team of 3 persons. A copy of Tron game coded in assembler language for 80x86.

When executed de .com file, first shows the title screen. After pressing any key, the limits of the scenario will
appear and after that the game begins. Once the game is over, a 'game over' screen appears showing the winner.

Rules:
-The goal is to mave your opponent crash against any line (even his own line)
-Yellow squares are bombs. If you touch one of them a big part of the screen will be erased leaving free space to 
 keep moving
-If you try to move against your current direction, you activate the breake. It will stop you for a while, but if 
 you don't move, the break will be released and you will run again. You can only use the break one time in a game.
-The special key will allow you to pass over lines as long as the line behind you chages it's color. Before using 
 this power up again you must wait for it to cool down.

Player one controls:
w - turn direction up
a - turn direction left
s - turn direction down
d - turn direction right
E - activate special

Player two controls:
i - turn direction up
j - turn direction left
k - turn direction down
l - turn direction right
o - activate special

*Note:Only works in 16 bits architectures. We used Tasm to develop and test the program.
