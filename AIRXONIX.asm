.model small
.stack 100h
cover MACRO xcor,ycor

MOV AH, 6
MOV AL, 0
MOV CX, 0
mov cl,19
mov ch,15 ;upper ki taraf bardhta hai jitna kaam utna bardha
mov dh,xcor ;row
mov dl,ycor ;col
mov bh,00000110b 
INT 10H
  
endM

.data

count dw 0
hi db "Score :","$"
lives1 db 'Lives:',3,3,3,"   ",'$'
level2_bottom db "Level: 2","$"
vark db 12
q dw ?
var1k dw ?
lives db 'Lives:',3,3,3,"   ",'$' 
variable db 12
game_over db 'GAME OVER!$'
congratulations db '                                CONGRATULATIONS!$'
levels_completed1 db '                               LEVELS COMPLETED: 1$'
levels_completed2 db '                               LEVELS COMPLETED: 2$'
khali db 2 dup (' '),'$' 
play_again db '                             Press Enter: Play Again$'
leg db '       LEGACY$'
air db '       Air Xonix, released in 2001, was a popular arcade game that                     revolutionized the genre with new mechanics and features.$'
today db '       Today, it remains a beloved retro game with a legacy that                       continues to influence modern titles. However, it just was not$'
however db '       retro enough for us and that is why we went the extra mile to                   recreate it in assembly language. So if you are ready to$'
so db '       experience the ultimate in vintage gaming, sit back, relax and                  enjoy being transported to the good old days of pixelated wonder!$'
col1 db 69
title1 DB "AIR XONIX",'$'
welcome DB "WELCOME TO",'$'
title_var db 0
welcome_var db 0
OUTPUT_HORIZONTAL_LINE DB 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, "$"
collision db "COLLISION!!!!!!","$"
BOX_TOP DB 218,196,196, 196, 196,196, 196, 196,196, 196, 196,196, 196, 196,196, 196, 196,
196,196, 196, 196,
191,10,13, "$"
BOX_SIDE DB 179, "$"
BOX_BOTTOM DB 192,196,196, 196,196,196, 196, 196,196, 196, 196,196, 196, 196,196, 196, 196,
196,196, 196, 196,217, "$"
filename db "grade.txt", 0

SPACES DB 29 DUP (' '),"$"
SPACES2 DB 21 DUP (' '),"$"
info db 'INFORMATION$'
how db '       HOW TO PLAY$'
use db '       - Use the arrow keys to move your player.$'
create db '       - Create walls to capture space on the game board.$'
collect db '       - Collect coins and extra lives to increase your score and                        chances of survival. You start with 3 lives.$'
avoid db '       - Avoid enemies hitting you and unfinished walls.$'
capture db '       - Capture at least 80% of the level to advance to the next level.$'
keep db '       - Keep playing and advancing to see how far you can get!$'
next db '                                                           Press Enter >$'
opt db 'OPTIONS$'

sound db 'SOUND       $'
music db 'MUSIC       $'
settings db 'SETTINGS      $'
help db 'HELP          $'
high_score db 'HIGH SCORES$'


s_score db '       Sabah:      20$'
z_score db '       Zarmeen:      15$'
m_score db '       Moiz:      9$'
para db '       The best of the best:$'

backe db '        < Press Enter: Back to Main Menu$'



sound_bar DB 195, 196, 254, 196, 196, 196, 196, 196, 180, "$"
music_bar DB 195, 254, 196, 196, 196, 196, 196, 196, 180, "$"
help_icon DB 63,000,63,000,63, "$"
settings_icon DB 240,240,000,240,240, "$"

ENTER_NAME DB "PLEASE ENTER YOUR NAME: ",'$'

ENTER_OPTION DB "HI! ENTER OPTION: ",'$'
USER_NAME db 10 dup('$')


new_game DB " 1.   NEW GAME      ",'$'
options DB " 2.   OPTIONS       ",'$'
high_scores DB " 3.   HIGH SCORES   ",'$'
information DB " 4.   INFORMATION   ",'$'
exit_game DB " 5.   EXIT          ",'$'

level db 'Select Level$'
level1 db '      LEVEL  1      $'
level2 db '      LEVEL  2      $'
play_game db '                                Press Enter: Play$'
select_level1 db '                             Press 1: Select Level 1$'
select_level2 db '                             Press 2: Select Level 2$'

back db '        < Press 3: Back to Main Menu$'

BOX_TL2 DB 218,196,196, 196, 196,196, 196, 196,196, 196, 196,196, 196, 196,196, 196, 196,
196,196, 196, 196,191,10,13, "$"
BOX_SL2 DB 179, "$"
BOX_BL2 DB 192,196,196, 196,196,196, 196, 196,196, 196, 196,196, 196, 196,196, 196, 196,
196,196, 196, 196,217, "$"

BOX_TL1 DB 201,205,205, 205, 205,205, 205, 205,205, 205, 205,205, 205, 205,205, 205, 205,
205,205, 205, 205,187,10,13, "$"
BOX_SL1 DB 186, "$"
BOX_BL1 DB 200,205,205, 205, 205,205, 205, 205,205, 205, 205,205, 205, 205,205, 205, 205,
205,205, 205, 205,188, "$"

score_msg db 'Score:  ', '$'
level_msg db 'Level:1  ', '$'
SPACES3 DB 17 DUP (' '),"$"
SPACES1 DB 4 DUP (' '),"$"
breadth dw 0
height dw 0
x db 22;height hai ulta hai yaar
y db 38
score_c db 2
counter db 60h
xrow dw 20                              
ycol dw 20
ball_1X dw 30                                
ball_1Y dw 30
ball_2X dw 100                               
ball_2Y dw 40
spaceX dw 150                               
spaceY dw 158
trailX dw 148                               
trailY dw 155
trailrX dw 176                               
trailrY dw 152
;color db 0
var db 0
inner dw 0
outer dw 0
coinX dw 25                                
coinY dw 90
heartX dw 200                               
heartY dw 110
enemy1X dw 120                               
enemy1Y dw 25
col db 39
trail db 0000,0000,0000
db 0000,0004,0000
db 0000,0004,0000
db 0000,0000,0000
trailr db 0000,0000,0000
db 0000,0002,0000
db 0000,0002,0000
db 0000,0000,0000

enemy1 db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0002, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0002, 0000, 0000
db 0000, 0000, 0000, 0002, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0002, 0000, 0000, 0000 
db 0000, 0000, 0000, 0002, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0002, 0000, 0000, 0000  
db 0000, 0000, 0000, 0000, 0002, 0000, 0000, 0002, 0002, 0002, 0000, 0000, 0002, 0000, 0000, 0000, 0000 
db 0000, 0000, 0000, 0000, 0000, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0000, 0000, 0000, 0000, 0000
db 0000, 0002, 0000, 0000, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0000, 0000, 0002, 0000
db 0000, 0002, 0002, 0000, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0000, 0002, 0002, 0000
db 0000, 0000, 0000, 0002, 0002, 0015, 0002, 0002, 0002, 0002, 0002, 0015, 0002, 0002, 0000, 0000, 0000
db 0000, 0000, 0002, 0002, 0002, 0015, 0015, 0015, 0002, 0015, 0015, 0015, 0002, 0002, 0002, 0000, 0000
db 0000, 0000, 0002, 0002, 0002, 0002, 0015, 0015, 0002, 0015, 0015, 0002, 0002, 0002, 0002, 0000, 0000
db 0000, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0000
db 0000, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0002, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000


enb db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000 
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000  
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000 
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000



ball_1 db 0000, 0000, 0000, 0000, 0007, 0007, 0007, 0007, 0007, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0007, 0007, 0007, 0005, 0005, 0005, 0007, 0007, 0007, 0000, 0000, 0000
db 0000, 0007, 0005, 0005, 0007, 0005, 0005, 0005, 0007, 0005, 0005, 0007, 0000, 0000
db 0000, 0007, 0005, 0007, 0005, 0005, 0005, 0005, 0005, 0007, 0005, 0007, 0000, 0000
db 0007, 0005, 0005, 0007, 0005, 0005, 0005, 0005, 0005, 0007, 0005, 0005, 0007, 0000
db 0007, 0005, 0007, 0005, 0005, 0005, 0005, 0005, 0005, 0005, 0007, 0005, 0007, 0000
db 0007, 0005, 0007, 0005, 0005, 0005, 0005, 0005, 0005, 0005, 0007, 0005, 0007, 0000
db 0007, 0005, 0007, 0005, 0005, 0005, 0005, 0005, 0005, 0005, 0007, 0005, 0007, 0000
db 0007, 0005, 0005, 0007, 0005, 0005, 0005, 0005, 0005, 0007, 0005, 0005, 0007, 0000
db 0000, 0007, 0005, 0007, 0005, 0005, 0005, 0005, 0005, 0007, 0005, 0007, 0000, 0000
db 0000, 0007, 0005, 0005, 0007, 0005, 0005, 0005, 0007, 0005, 0005, 0007, 0000, 0000
db 0000, 0000, 0007, 0007, 0007, 0005, 0005, 0005, 0007, 0007, 0007, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0007, 0007, 0007, 0007, 0007, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000


ball_2 db 0000, 0000, 0000, 0000, 0007, 0007, 0007, 0007, 0007, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0007, 0007, 0007, 0001, 0001, 0001, 0007, 0007, 0007, 0000, 0000, 0000
db 0000, 0007, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0007, 0000, 0000
db 0000, 0007, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0007, 0000, 0000
db 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0000
db 0007, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0007, 0000
db 0007, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0007, 0000
db 0007, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0007, 0000
db 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0000
db 0000, 0007, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0007, 0000, 0000
db 0000, 0007, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0007, 0000, 0000
db 0000, 0000, 0007, 0007, 0007, 0001, 0001, 0001, 0007, 0007, 0007, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0007, 0007, 0007, 0007, 0007, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000


black db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000


blackr db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0004, 0004, 0004, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0004, 0004, 0004, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0004, 0004, 0004, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0004, 0004, 0004, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000

spaceship db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0004, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0004, 0014, 0004, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0004, 0014, 0004, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0004, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0004, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0004, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0004, 0004, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0004, 0004, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0004, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0004, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0004, 0007, 0007, 0008, 0008, 0008, 0007, 0007, 0007, 0008, 0008, 0008, 0007, 0007, 0004, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0004, 0007, 0007, 0007, 0008, 0014, 0008, 0007, 0007, 0007, 0008, 0014, 0008, 0007, 0007, 0007, 0004, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0004, 0007, 0007, 0007, 0008, 0008, 0008, 0007, 0007, 0007, 0008, 0008, 0008, 0007, 0007, 0007, 0004, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0004, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0004, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0004, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0007, 0004, 0000, 0000, 0000, 0000, 0000
db 0000, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0000, 0000
db 0004, 0004, 0004, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0012, 0004, 0004, 0004, 0000
db 0000, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0004, 0008, 0008, 0008, 0004, 0000, 0004, 0008, 0008, 0008, 0004, 0000, 0004, 0008, 0008, 0008, 0004, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0004, 0008, 0004, 0000, 0000, 0000, 0004, 0008, 0004, 0000, 0000, 0000, 0004, 0008, 0004, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0004, 0000, 0000, 0000, 0000, 0000, 0004, 0000, 0000, 0000, 0000, 0000, 0004, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000



spaceship_2 db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0001, 0001, 0001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0001, 0001, 0001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0001, 0001, 0003, 0001, 0001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0001, 0003, 0003, 0003, 0001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0002, 0000, 0000, 0000, 0001, 0003, 0003, 0003, 0001, 0000, 0000, 0000, 0002, 0000, 0000, 0000, 0000, 0000, 0000, 0000,0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0002, 0007, 0007, 0007, 0001, 0003, 0003, 0003, 0001, 0000, 0000, 0000, 0002, 0000, 0000, 0000, 0000, 0000, 0000, 0000,0000
db 0001, 0001, 0001, 0001, 0001, 0000, 0000, 0007, 0000, 0000, 0001, 0003, 0003, 0003, 0003, 0003, 0001, 0000, 0000, 0007, 0000, 0000, 0001, 0001, 0001, 0001, 0001,0000
db 0001, 0001, 0003, 0003, 0003, 0001, 0000, 0007, 0000, 0001, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0001, 0000, 0007, 0000, 0001, 0003, 0003, 0003, 0001, 0001,0000
db 0000, 0000, 0001, 0003, 0003, 0003, 0001, 0007, 0000, 0001, 0003, 0003, 0001, 0001, 0001, 0003, 0003, 0001, 0000, 0007, 0001, 0003, 0003, 0003, 0001, 0000, 0000,0000
db 0000, 0000, 0001, 0003, 0003, 0003, 0003, 0001, 0001, 0003, 0003, 0001, 0007, 0007, 0007, 0001, 0007, 0007, 0007, 0001, 0003, 0003, 0001, 0001, 0003, 0000, 0000,0000
db 0000, 0000, 0000, 0001, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0001, 0007, 0007, 0007, 0001, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0001, 0000, 0000, 0000,0000
db 0000, 0000, 0000, 0000, 0001, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0001, 0001, 0001, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0001, 0000, 0000, 0000, 0000,0000
db 0000, 0000, 0000, 0000, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0000, 0000, 0000, 0000,0000
db 0000, 0000, 0000, 0001, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0003, 0001, 0000, 0000, 0000,0000
db 0000, 0000, 0000, 0000, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0001, 0000, 0000, 0000, 0000,0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0003, 0001, 0004, 0001, 0003, 0000, 0000, 0000, 0000, 0000, 0003, 0001, 0004, 0001, 0003, 0000, 0000, 0000, 0000, 0000, 0000,0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0001, 0004, 0014, 0004, 0001, 0000, 0000, 0000, 0000, 0000, 0001, 0004, 0014, 0004, 0001, 0000, 0000, 0000, 0000, 0000, 0000,0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0014, 0014, 0014, 0014, 0014, 0000, 0000, 0000, 0000, 0000, 0014, 0014, 0014, 0014, 0014, 0000, 0000, 0000, 0000, 0000, 0000,0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0014, 0014, 0014, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0014, 0014, 0014, 0000, 0000, 0000, 0000, 0000, 0000, 0000,0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0014, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0014, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,0000

coin db 0000, 0000, 0000, 0000, 0006, 0006, 0006, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0006, 0014, 0014, 0014, 0006, 0000, 0000, 0000, 0000
db 0000, 0000, 0006, 0014, 0014, 0014, 0014, 0014, 0006, 0000, 0000, 0000
db 0000, 0006, 0014, 0014, 0014, 0006, 0014, 0014, 0014, 0006, 0000, 0000
db 0006, 0014, 0014, 0014, 0006, 0014, 0006, 0014, 0014, 0014, 0006, 0000
db 0006, 0014, 0014, 0014, 0006, 0014, 0014, 0014, 0014, 0014, 0006, 0000
db 0006, 0014, 0014, 0014, 0014, 0006, 0014, 0014, 0014, 0014, 0006, 0000
db 0006, 0014, 0014, 0014, 0014, 0014, 0006, 0014, 0014, 0014, 0006, 0000
db 0006, 0014, 0014, 0014, 0006, 0014, 0006, 0014, 0014, 0014, 0006, 0000
db 0000, 0006, 0014, 0014, 0014, 0006, 0014, 0014, 0014, 0006, 0000, 0000
db 0000, 0000, 0006, 0014, 0014, 0014, 0014, 0014, 0006, 0000, 0000, 0000
db 0000, 0000, 0000, 0006, 0014, 0014, 0014, 0006, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0006, 0006, 0006, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000


heart db 0000, 0000, 0004, 0004, 0000, 0000, 0000, 0000, 0000, 0004, 0004, 0000, 0000, 0000
db 0000, 0004, 0004, 0004, 0004, 0000, 0000, 0000, 0004, 0004, 0004, 0004, 0000, 0000
db 0004, 0004, 0004, 0004, 0004, 0004, 0000, 0004, 0004, 0004, 0004, 0004, 0004, 0000
db 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0000
db 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0000
db 0000, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0000, 0000
db 0000, 0000, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0000, 0000, 0000
db 0000, 0000, 0000, 0004, 0004, 0004, 0004, 0004, 0004, 0004, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0004, 0004, 0004, 0004, 0004, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0004, 0004, 0004, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0004, 0000, 0000, 0000, 0000, 0000, 0000, 0000
db 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000
.code
main proc
mov ax, @data
mov ds, ax

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxFront Page Animated xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MOV AH,6 ;drawing a box
MOV AL,0 ;character for the box
MOV CX, 5
MOV DX, 0
INT 10H

MOV AH,02H
MOV DH, 5 ;Row Number
MOV DL, 0 ;Column Number
INT 10H

MOV AH, 06h
MOV AL, 0
MOV CX, 0
MOV DH, 100
MOV DL, 100

MOV BH, 00000110B
INT 10h


; Welcome Page

LEA DX, OUTPUT_HORIZONTAL_LINE
MOV AH, 09H
INT 21H

mov cx,sizeof welcome
mov si, offset welcome

displaying_welcome:

;for time delay
MOV CX, 02H
MOV DX, 4240H
MOV AH, 86H
INT 15H

MOV DL,[SI]
MOV AH,2
INT 21H
inc si

cmp welcome_var,9
je welcome_finished
inc welcome_var

loop displaying_welcome

welcome_finished:

;MOV AH,02H
;MOV DH, 11 ;Row Number
;MOV DL, 50 ;Column Number
;INT 10H

LEA DX, OUTPUT_HORIZONTAL_LINE
MOV AH, 09H
INT 21H

; Displaying title

LEA DX, OUTPUT_HORIZONTAL_LINE
MOV AH, 09H
INT 21H

mov cx,sizeof title1
mov si, offset title1

displaying_title:

;for time delay
MOV CX, 02H
MOV DX, 4240H
MOV AH, 86H
INT 15H

MOV DL,[SI]
MOV AH,2
INT 21H
inc si

cmp title_var,8
je title_finished
inc title_var

loop displaying_title

title_finished:


MOV AH,02H
MOV DH, 11 ;Row Number
MOV DL, 50 ;Column Number
INT 10H

LEA DX, OUTPUT_HORIZONTAL_LINE
MOV AH, 09H
INT 21H

mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h



LEA DX, SPACES2
MOV AH, 09H
INT 21H
;lea dx, ENTER_NAME
;mov ah, 9
;int 21h

LEA DX, ENTER_NAME ; load message to display
MOV AH, 09H ; set print string function
INT 21H ; display message

mov dx, offset USER_NAME 
 mov ah, 0ah
 int 21h
 
 
 dekaho:
 mov bx,0
;after empty show
 mov bl, USER_NAME [1]
 mov USER_NAME [bx+2], '$'
 mov dx, offset USER_NAME + 2
 mov ah, 9
 int 21h
	lea dx, filename            
		mov al, 2                   
		mov ah, 3dh                 
		int 21h

		mov cx, 6    
		mov bx, ax                  
		lea dx, USER_NAME +2              
		mov ah, 40h                 
		int 21h


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Next Adventure xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


MOV AH,6 ;drawing a box
MOV AL,0 ;character for the box
MOV CX, 20
MOV DX, 20
INT 10H

MOV AH,02H
MOV DH, 5 ;Row Number
MOV DL, 0 ;Column Number
INT 10H

MOV AH, 06h
MOV AL, 0
MOV CX, 0
MOV DH, 25
MOV DL, 80

MOV BH, 00000110B
INT 10h



; Displaying title

LEA DX, OUTPUT_HORIZONTAL_LINE
MOV AH, 09H
INT 21H

mov cx,sizeof title1
mov si, offset title1
 

displaying_title2:

;for time delay
MOV CX, 02H
MOV DX, 4240H
MOV AH, 86H
INT 15H

MOV DL,[SI]
MOV AH,2
INT 21H
inc si

cmp title_var,16
je title_finished2
inc title_var

loop displaying_title2

title_finished2:


MOV AH,02H
MOV DH, 11 ;Row Number
MOV DL, 50 ;Column Number
INT 10H

LEA DX, OUTPUT_HORIZONTAL_LINE
MOV AH, 09H
INT 21H


mov dl,10
mov ah,2
int 21h


;displaying the 5 options 
;sab kuch with dabay made through ascii

LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_TOP
MOV AH, 09H
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
lea dx, new_game
mov ah, 9
int 21h
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
MOV DL,10
MOV AH,2
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_BOTTOM
MOV AH, 09H
INT 21H

MOV DL,10
MOV AH,2
INT 21H

LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_TOP
MOV AH, 09H
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
lea dx, options
mov ah, 9
int 21h
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
MOV DL,10
MOV AH,2
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_BOTTOM
MOV AH, 09H
INT 21H

MOV DL,10
MOV AH,2
INT 21H

LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_TOP
MOV AH, 09H
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
lea dx, high_scores
mov ah, 9
int 21h
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
MOV DL,10
MOV AH,2
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_BOTTOM
MOV AH, 09H
INT 21H

MOV DL,10
MOV AH,2
INT 21H

LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_TOP
MOV AH, 09H
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
lea dx, information
mov ah, 9
int 21h
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
MOV DL,10
MOV AH,2
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_BOTTOM
MOV AH, 09H
INT 21H

MOV DL,10
MOV AH,2
INT 21H

LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_TOP
MOV AH, 09H
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
lea dx, exit_game
mov ah, 9
int 21h
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
MOV DL,10
MOV AH,2
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_BOTTOM
MOV AH, 09H
INT 21H

MOV DL,10
MOV AH,2
INT 21H


; taking input


lea dx, ENTER_OPTION
mov ah, 9
int 21h
jmp L1
static_page:
MOV AH,6 ;drawing a box
MOV AL,0 ;character for the box
MOV CX, 20
MOV DX, 20
INT 10H

MOV AH,02H
MOV DH, 5 ;Row Number
MOV DL, 0 ;Column Number
INT 10H

MOV AH, 06h
MOV AL, 0
MOV CX, 0
MOV DH, 25
MOV DL, 80

MOV BH, 00000110B
INT 10h



; Displaying title

LEA DX, OUTPUT_HORIZONTAL_LINE
MOV AH, 09H
INT 21H

LEA DX, title1
MOV AH, 09H
INT 21H



LEA DX, OUTPUT_HORIZONTAL_LINE
MOV AH, 09H
INT 21H


mov dl,10
mov ah,2
int 21h



;displaying the 5 options

LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_TOP
MOV AH, 09H
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
lea dx, new_game
mov ah, 9
int 21h
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
MOV DL,10
MOV AH,2
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_BOTTOM
MOV AH, 09H
INT 21H

MOV DL,10
MOV AH,2
INT 21H

LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_TOP
MOV AH, 09H
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
lea dx, options
mov ah, 9
int 21h
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
MOV DL,10
MOV AH,2
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_BOTTOM
MOV AH, 09H
INT 21H

MOV DL,10
MOV AH,2
INT 21H

LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_TOP
MOV AH, 09H
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
lea dx, high_scores
mov ah, 9
int 21h
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
MOV DL,10
MOV AH,2
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_BOTTOM
MOV AH, 09H
INT 21H

MOV DL,10
MOV AH,2
INT 21H

LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_TOP
MOV AH, 09H
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
lea dx, information
mov ah, 9
int 21h
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
MOV DL,10
MOV AH,2
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_BOTTOM
MOV AH, 09H
INT 21H

MOV DL,10
MOV AH,2
INT 21H

LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_TOP
MOV AH, 09H
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
lea dx, exit_game
mov ah, 9
int 21h
LEA DX, BOX_SIDE
MOV AH, 09H
INT 21H
MOV DL,10
MOV AH,2
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_BOTTOM
MOV AH, 09H
INT 21H

MOV DL,10
MOV AH,2
INT 21H


; taking input



lea dx, ENTER_OPTION
mov ah, 9
int 21h








L1:
MOV AH,1
INT 21H
CMP AL,49
JE NEW_GAME_JUMP
CMP AL,50
JE OPTIONS_JUMP
CMP AL,51
JE HIGH_SCORES_JUMP
CMP AL,52
JE INFORMATION_JUMP
CMP AL,53
JE EXIT_JUMP
JMP L1



NEW_GAME_JUMP:
mov ah,6 ;drawing a box
mov al,0 ;character for the box
mov bh,00000000b ;color selection
mov cl, 0 ; column of the upper left corner of the box
mov ch, 0 ; row
mov dh,35 ;row box
mov dl,80 ; ending col
int 10h



mov ah,6 ;drawing a box
mov al,0 ;character for the box
mov bh,01100000b ;color selection
mov cl, 6 ; column of the upper left corner of the box
mov ch, 3 ; row
mov dh,21;row box
mov dl,72 ; ending col
int 10h

; printing text

MOV AH,02H
mov bh,00000000B ;color selection
MOV DH, 10 ;Row Number
MOV DL, 0 ;Column Number
INT 10H

MOV AH,02H
MOV DH, 5 ;Row Number
MOV DL, 34 ;Column Number
INT 10H


lea dx, level
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_TL1
MOV AH, 09H
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_SL1
MOV AH, 09H
INT 21H
lea dx, LEVEL1
mov ah, 9
int 21h
LEA DX, BOX_SL1
MOV AH, 09H
INT 21H
MOV DL,10
MOV AH,2
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_BL1
MOV AH, 09H
INT 21H

MOV DL,10
MOV AH,2
INT 21H


LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_TL1
MOV AH, 09H
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_SL1
MOV AH, 09H
INT 21H
lea dx, LEVEL2
mov ah, 9
int 21h
LEA DX, BOX_SL1
MOV AH, 09H
INT 21H
MOV DL,10
MOV AH,2
INT 21H
LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, BOX_BL1
MOV AH, 09H
INT 21H

MOV DL,10
MOV AH,2
INT 21H
MOV DL,10
MOV AH,2
INT 21H


lea dx, select_level1
mov ah, 9
int 21h

MOV DL,10
MOV AH,2
INT 21H

lea dx, select_level2
mov ah, 9
int 21h

MOV DL,10
MOV AH,2
INT 21H
MOV DL,10
MOV AH,2
INT 21H

lea dx, play_game
mov ah, 9
int 21h

MOV DL,10
MOV AH,2
INT 21H
MOV DL,10
MOV AH,2
INT 21H


lea dx, back
mov ah, 9
int 21h




MOV AH,1
INT 21H
CMP AL,49
JE chalo
CMP AL,50
JE chalo2
cmp al,13
je static_page
JMP EXIT_JUMP
OPTIONS_JUMP:
;lea dx, options
;mov ah, 9
;int 21h

mov ah,6 
mov al,0 
mov bh,00000000b ;color 
mov cl, 0 ;  upper
mov ch, 0 ; 
mov dh,35 ;
mov dl,80 ; 
int 10h



mov ah,6 ;drawing a box
mov al,0 ;character for the box
mov bh,01100000b ;color selection
mov cl, 6 ; column of the upper left corner of the box
mov ch, 3 ; row
mov dh,21;row box
mov dl,72 ; ending col
int 10h

; printing text

MOV AH,02H
mov bh,00000000B ;color selection
MOV DH, 10 ;Row Number
MOV DL, 0 ;Column Number
INT 10H

MOV AH,02H
MOV DH, 5 ;Row Number
MOV DL, 36 ;Column Number
INT 10H


lea dx, opt
mov ah, 9
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h





LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, sound
MOV AH, 09H
INT 21H
LEA DX, sound_bar
MOV AH, 09H
INT 21H
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h


LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, music
MOV AH, 09H
INT 21H
LEA DX, music_bar
MOV AH, 09H
INT 21H



mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h


LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, settings
MOV AH, 09H
INT 21H
LEA DX, settings_icon
MOV AH, 09H
INT 21H

mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

LEA DX, SPACES
MOV AH, 09H
INT 21H
LEA DX, help
MOV AH, 09H
INT 21H
LEA DX, help_icon
MOV AH, 09H
INT 21H

MOV DL,10
MOV AH,2
INT 21H
MOV DL,10
MOV AH,2
INT 21H
MOV DL,10
MOV AH,2
INT 21H
MOV DL,10
MOV AH,2
INT 21H

lea dx, backe
mov ah, 9
int 21h

MOV AH,1
INT 21H
CMP AL,13
JE static_page


JMP EXIT_JUMP
HIGH_SCORES_JUMP:
mov ah,6 ;drawing a box
mov al,0 ;character for the box
mov bh,00000000b ;color selection
mov cl, 0 ; column of the upper left corner of the box
mov ch, 0 ; row
mov dh,35 ;row box
mov dl,80 ; ending col
int 10h



mov ah,6 ;drawing a box
mov al,0 ;character for the box
mov bh,01100000b ;color selection
mov cl, 6 ; column of the upper left corner of the box
mov ch, 3 ; row
mov dh,21;row box
mov dl,72 ; ending col
int 10h

; printing text

MOV AH,02H
mov bh,00000000B ;color selection
MOV DH, 10 ;Row Number
MOV DL, 0 ;Column Number
INT 10H

MOV AH,02H
MOV DH, 5 ;Row Number
MOV DL, 34 ;Column Number
INT 10H


lea dx, high_score
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

lea dx, para
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

lea dx, s_score
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

lea dx, z_score
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

lea dx, m_score
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

lea dx, backe
mov ah, 9
int 21h





MOV AH,1
INT 21H
CMP AL,13
JE static_page

JMP EXIT_JUMP
INFORMATION_JUMP:
mov ah,6 ;drawing a box
mov al,0 ;character for the box
mov bh,00000000b ;color selection
mov cl, 0 ; column of the upper left corner of the box
mov ch, 0 ; row
mov dh,35 ;row box
mov dl,80 ; ending col
int 10h



mov ah,6 ;drawing a box
mov al,0 ;character for the box
mov bh,01100000b ;color selection
mov cl, 6 ; column of the upper left corner of the box
mov ch, 3 ; row
mov dh,21;row box
mov dl,72 ; ending col
int 10h

; printing text

MOV AH,02H
mov bh,00000000B ;color selection
MOV DH, 10 ;Row Number
MOV DL, 0 ;Column Number
INT 10H

MOV AH,02H
MOV DH, 5 ;Row Number
MOV DL, 34 ;Column Number
INT 10H


lea dx, info
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

lea dx, how
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

lea dx, use
mov ah, 9
int 21h
mov dl,10
mov ah,2
int 21h

lea dx, create
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h

lea dx, collect
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h

lea dx, avoid
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h

lea dx, capture
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h

lea dx, keep
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

lea dx, next
mov ah, 9
int 21h



MOV AH,1
INT 21H
CMP AL,13
JE legacy
JMP EXIT_JUMP

legacy:


mov ah,6 ;drawing a box
mov al,0 ;character for the box
mov bh,00000000b ;color selection
mov cl, 0 ; column of the upper left corner of the box
mov ch, 0 ; row
mov dh,35 ;row box
mov dl,80 ; ending col
int 10h



mov ah,6 ;drawing a box
mov al,0 ;character for the box
mov bh,01100000b ;color selection
mov cl, 6 ; column of the upper left corner of the box
mov ch, 3 ; row
mov dh,21;row box
mov dl,72 ; ending col
int 10h

; printing text

MOV AH,02H
mov bh,00000000B ;color selection
MOV DH, 10 ;Row Number
MOV DL, 0 ;Column Number
INT 10H

MOV AH,02H
MOV DH, 5 ;Row Number
MOV DL, 34 ;Column Number
INT 10H


lea dx, info
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

lea dx, leg
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

lea dx, air
mov ah, 9
int 21h
mov dl,10
mov ah,2
int 21h

lea dx, today
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h


lea dx, however
mov ah, 9
int 21h

mov dl,10
mov ah,2
int 21h

lea dx, so
mov ah, 9
int 21h


mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

lea dx, backe
mov ah, 9
int 21h

MOV AH,1
INT 21H
CMP AL,13
JE static_page


chalo:
call game

EXIT_JUMP:
mov ah,4ch
int 21h
main endp
game proc
mov ah, 00h     
    mov al, 13h     
    int 10h

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  Making board xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


   	mov ah, 6
    mov al, 0
    mov bh, 00000110b ; orange color

    mov cx, 0
    mov dx, 80
    mov ch, 0
    mov dh, 80
    int 10h

    ; draw the black 60x60 box in the middle
    mov ah, 6
    mov al, 0
    mov bh, 00000000b ; black color

    mov cx, 5
    mov dx, 35
    mov ch, 2; top
    mov dh, 22;below
	mov cl,3; left
	mov dl,36; right

    int 10h


MOV AH, 6
MOV AL, 0
MOV CX, 0
mov dh,0  ;row
mov dl, 50 ;col
mov bh,25h
INT 10H

mov ah, 02h      ; Set the video cursor position function
mov bh, 0        ; Video page number
mov dh, 24       ; Set the row number to the last row of the screen
mov dl, 0       ; Set the column number to the last column of the screen
int 10h   

LEA DX, spaces1
MOV AH, 09H
INT 21H
LEA DX, score_msg
MOV AH, 09H
INT 21H
mov ah,02
mov dl,score_c
add dl,48
int 21h
LEA DX, spaces1
MOV AH, 09H
INT 21H


; for initial score
dec vark
dec vark
dec vark
    call drawBoxscore

mov si, 0
l1ek:
mov dl,lives[si]
mov ah,02
int 21h
inc si
dec variable
cmp variable,0
je e
jmp l1ek


e:
;lea dx,khali
;mov ah,09h
;int 21h

LEA DX, level_msg
MOV AH, 09H
INT 21H




;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Making all static objects xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
call draw_trail
call draw_trail2
call draw_ball1
;call draw_spaceship;asli wala
call draw_coin
call draw_heart
call draw_ball2
call draw_enemy1
;call draw_bar





call moveballs

    mov ah, 4ch
    int 21h

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Movements xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
moveballs proc

l1doh:

	cmp var,60
	jz l2doh
	call dec_col
	;MOV CX, 01H
	;MOV DX, 4240H
	;MOV AH, 86H
	;INT 15H
 
	call makeitblack2
	call makeitblack
	inc ball_2X
	inc ball_1X
        inc enemy1X 
	call makeitblacks 
	call spaceshipmove
	call draw_spaceship
	call draw_enemy1
	call draw_ball1
	call draw_ball2

	inc var
jmp l1doh

l2doh:

	cmp var,80
	jz l3theen

 
	MOV CX, 01H
	MOV DX, 4240H
	MOV AH, 86H
	INT 15H
	call makeitblack2
	call makeitblack
 
	dec ball_2Y
	dec ball_1X
	 
	call makeitblacks 
	call spaceshipmove
	call draw_spaceship

	call draw_ball1 
	call draw_ball2
	inc var
	jmp l2doh

l3theen:
	cmp var,100
	jz L4chaar

	MOV CX, 01H
	MOV DX, 4240H
	MOV AH, 86H
	INT 15H
	call makeitblack2
	call makeitblack
 
	inc ball_2Y
	INC ball_1X
	call makeitblacks 
	call spaceshipmove
	call draw_spaceship

	call draw_ball1 
	call draw_ball2
	inc var
	JMP L3theen
L4chaar:
	cmp var,160
	jz l5
	MOV CX, 01H
	MOV DX, 4240H
	MOV AH, 86H
	INT 15H
	call makeitblack2
	call makeitblack

	inc ball_2X
	INC ball_1Y
	call makeitblacks 
	call spaceshipmove
	call draw_spaceship

	call draw_ball1 
	call draw_ball2
	inc var
	JMP L4chaar
l5:
	cmp var,190
	jz l6

	MOV CX, 01H
	MOV DX, 4240H
	MOV AH, 86H
	INT 15H
	call makeitblack2
	call makeitblack

	dec ball_2X
	dec ball_1X
	call makeitblacks 
	call spaceshipmove

	call draw_spaceship

	call draw_ball1 
	call draw_ball2
	inc var
	JMP L5
l6:
	cmp var,220
	jz l7
	MOV CX, 01H
	MOV DX, 4240H
	MOV AH, 86H
	INT 15H
	call makeitblack2
	call makeitblack

	inc ball_2X
	DEC ball_1Y
	call makeitblacks 
	call spaceshipmove

	call draw_spaceship
	call draw_ball1 
	call draw_ball2
	inc var
	JMP L6
l7:
	cmp var,240
	jz o_
	MOV CX, 01H
	MOV DX, 4240H
	MOV AH, 86H
	INT 15H
	call makeitblack2
	call makeitblack
 
	dec ball_2Y
	INC ball_1Y
	call makeitblacks 
	call spaceshipmove

	call draw_spaceship
	call draw_ball1 
	call draw_ball2
	inc var
	jmp l7
moveballs endp


o_::
exit::
cover x,y
mov ah,4ch
int 21h

exit_c::
mov ah, 0h ; clear screen
int 10h
mov ah, 02h      ; Set the video cursor position function
mov bh, 0        ; Video page number
mov dh, 12       ; Set the row number to the last row of the screen
mov dl, 12       ; Set the column number to the last column of the screen
int 10h  
mov ah,09
lea dx,collision
int 21h

MOV CX, 0BH
	MOV DX, 4240H
	MOV AH, 86H
	INT 15H
MOV AH, 00H   
MOV AL, 03H   
INT 10H

mov ah,6 ;drawing a box
mov al,0 ;character for the box
mov bh,00000000b ;color selection
mov cl, 0 ; column of the upper left corner of the box
mov ch, 0 ; row
mov dh,35 ;row box
mov dl,80 ; ending col
int 10h



mov ah,6 ;drawing a box
mov al,0 ;character for the box
mov bh,01100000b ;color selection
mov cl, 6 ; column of the upper left corner of the box
mov ch, 3 ; row
mov dh,21;row box
mov dl,72 ; ending col
int 10h

; printing text

MOV AH,02H
mov bh,00000000B ;color selection
MOV DH, 10 ;Row Number
MOV DL, 0 ;Column Number
INT 10H



MOV AH,02H
MOV DH, 8 ;Row Number
MOV DL, 35 ;Column Number
INT 10H

lea dx, game_over
mov ah, 9
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

LEA DX, congratulations
MOV AH, 09H
INT 21H
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

LEA DX, levels_completed1
MOV AH, 09H
INT 21H
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h


LEA DX, play_again
MOV AH, 09H
INT 21H
mov ah, 4ch
int 21h
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Making Pixels of all the objects xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
make_it proc
mov cx,2
    push cx
    push dx
    push ax

    cmp cx, 0
    jz exit_make_it

    mov dx, ycol
drawPixO:
    push cx
    mov cx, 2
drawPixI:
    push cx
    mov ah, 0ch
    mov al, [si]
    mov cx, xrow
    int 10h
    pop cx
    inc xrow
    dec cx
    jnz drawPixI

    pop cx
    inc ycol
    dec cx
    jnz drawPixO

exit_make_it:
    pop ax
    pop dx
    pop cx
    ret
make_it endp



;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx obj1 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
draw_ball1 proc
;reserving bx register for multiple usage
	push bx
;setting positions using coordinates
mov bx,ball_1Y
mov ycol, bx
mov bx,ball_1X
mov xrow,bx
;getting it back
	pop bx

push breadth 
;pixel sizings
mov breadth , 14
push height
mov height, 14
;loop it around until made length n breadth wise
mov cx,breadth 
mov si, offset ball_1
draw_ball1O:
push cx
push xrow
mov cx, height
draw_ball1I:
  push cx
;save
push xrow
push ycol
;group
  call make_it
;restore
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_ball1I
pop xrow
pop cx
add ycol, 1
loop draw_ball1O
pop breadth 
pop height
ret
draw_ball1 endp


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Obj 2 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

draw_ball2 proc
;save 
	push bx
mov bx,ball_2Y

mov ycol, bx

mov bx,ball_2X

mov xrow,bx
	pop bx
;save dimensions
push breadth 
mov breadth , 14
push height
mov height, 14
mov cx,breadth 
mov si, offset ball_2
draw_ball20:
push cx
push xrow
mov cx, height
draw_ball2I:
  push cx

push xrow
push ycol
  call make_it
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_ball2I
pop xrow
pop cx
add ycol, 1
loop draw_ball20
pop breadth 
pop height
ret
draw_ball2 endp
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Everthing is a Black box xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
makeitblack proc
push bx
mov bx,ball_2Y
mov ycol, bx
mov bx,ball_2X
mov xrow,bx
pop bx

push breadth 
mov breadth , 14
push height
mov height, 14
mov cx,breadth 
mov si, offset black
draw_ball20__:
push cx
push xrow
mov cx, height
draw_ball2I__:
  push cx

push xrow
push ycol
  call make_it
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_ball2I__
pop xrow
pop cx
add ycol, 1
loop draw_ball20__
pop breadth 
pop height
ret
makeitblack endp
makeitblack2 proc
push bx
mov bx,ball_1Y
mov ycol, bx
mov bx,ball_1X
mov xrow,bx
pop bx

push breadth 
mov breadth , 14
push height
mov height, 14
mov cx,breadth 
mov si, offset black
draw_ball20:
push cx
push xrow
mov cx, height
draw_ball2I:
  push cx

push xrow
push ycol
  call make_it
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_ball2I
pop xrow
pop cx
add ycol, 1
loop draw_ball20
pop breadth 
pop height
ret
makeitblack2 endp
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx SPACESHIP xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
draw_spaceship proc


push bx
mov bx,spaceY
mov ycol, bx
mov bx,spaceX
mov xrow,bx
pop bx

push breadth 
mov breadth , 22
push height
mov height, 28
mov cx,breadth 
mov si, offset spaceship
draw_spaceship0:
push cx
push xrow
mov cx, height
draw_spaceshipI:
  push cx

push xrow
push ycol
  call make_it
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_spaceshipI
pop xrow
pop cx
add ycol, 1
loop draw_spaceship0
pop breadth 
pop height
ret
draw_spaceship endp
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx obj 3 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

draw_coin proc
push bx
mov bx,coinY
mov ycol, bx
mov bx,coinX
mov xrow,bx
pop bx

push breadth 
mov breadth , 14
push height
mov height, 12
mov cx,breadth 
mov si, offset coin
draw_coin0:
push cx
push xrow
mov cx, height
draw_coinI:
  push cx

push xrow
push ycol
  call make_it
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_coinI
pop xrow
pop cx
add ycol, 1
loop draw_coin0
pop breadth 
pop height
ret
draw_coin endp

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Obj 4xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

draw_heart proc
push bx
mov bx,heartY
mov ycol, bx
mov bx,heartX
mov xrow,bx
pop bx

push breadth 
mov breadth , 12
push height
mov height, 14
mov cx,breadth 
mov si, offset heart
draw_heart0:
push cx
push xrow
mov cx, height
draw_heartI:
  push cx

push xrow
push ycol
  call make_it
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_heartI
pop xrow
pop cx
add ycol, 1
loop draw_heart0
pop breadth 
pop height
ret
draw_heart endp
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Key press movement xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
spaceshipmove proc

mov ah, 01H
    int 16H
    jnz button
	
	mov ax, 0
	jmp escaped
	
	button:
		mov ah, 00H
		int 16H
escaped:
		.if(al == 'w' && spaceY >17)
			
			dec spaceY 
			dec trailY
			dec trailrY
			call draw_trail
			
		.endif
		
		.if(al == 's' && spaceY < 158)
			inc spaceY
			inc trailY
			inc trailrY
			call draw_trail2
			
		.endif

		
		.if(al == 'd' && spaceX < 265)
			inc spaceX 
			inc trailrX
			inc trailX
			call draw_trail
		
			

			
		.endif

		.if(al == 'a'  && spaceX >25)
			dec spaceX

			dec trailrX
			dec trailX
			call draw_trail2
		.endif
		mov ax,ball_1X
		mov bx,ball_1Y
		mov cx,spaceX
		add cx,22 
		mov dx,spaceY
		add dx,27
		.if(spaceX <=ax && spaceX <= cx)
			.if(spaceY<=bx && spaceY <=dx)
				jmp exit_c

			.endif
		.endif
		
		mov ax,ball_2X
		mov bx,ball_2Y
		mov cx,spaceX
		add cx,22 
		mov dx,spaceY
		add dx,27
		.if(spaceX <=ax && spaceX <= cx)
			.if(spaceY<=bx && spaceY <=dx)
				jmp exit_c

			.endif
		.endif

		mov ax,enemy1X 
		mov bx,enemy1Y
		mov cx,spaceX
		add cx,22 
		mov dx,spaceY
		add dx,27
		.if(spaceX <=ax && spaceX <= cx)
			.if(spaceY<=bx && spaceY <=dx)
				jmp exit_c

			.endif
		.endif

		



ret
spaceshipmove endp



makeitblacks proc
push bx
mov bx,spaceY
mov ycol, bx
mov bx,spaceX
mov xrow,bx
pop bx
;yeh experiment kiya tha
push breadth 
mov breadth , 17
push height
mov height, 20
mov cx,breadth 
mov si, offset black
draw_ball20:
push cx
push xrow
mov cx, height
draw_ball2I:
  push cx

push xrow
push ycol
  call make_it
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_ball2I
pop xrow
pop cx
add ycol, 1
loop draw_ball20
pop breadth 
pop height
ret
makeitblacks endp

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Trails xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

draw_trail proc
push bx
mov bx,trailY
mov ycol, bx
mov bx,trailX
mov xrow,bx
pop bx

push breadth 
mov breadth , 12
push height
mov height, 5
mov cx,breadth 
mov si, offset trail
draw_coin0_hmm:
push cx
push xrow
mov cx, height
draw_coinI_hmm:
  push cx

push xrow
push ycol
  call make_it
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_coinI_hmm
pop xrow
pop cx
add ycol, 1
loop draw_coin0_hmm
pop breadth 
pop height
ret
draw_trail endp
draw_trail2 proc
push bx
mov bx,trailrY
mov ycol, bx
mov bx,trailrX
mov xrow,bx
pop bx

push breadth 
mov breadth , 11
push height
mov height, 6
mov cx,breadth 
mov si, offset trailr
draw_coin0:
push cx
push xrow
mov cx, height
draw_coinI:
  push cx

push xrow
push ycol
  call make_it
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_coinI
pop xrow
pop cx
add ycol, 1
loop draw_coin0
pop breadth 
pop height
ret
draw_trail2 endp

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Obj 5 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
draw_enemy1 proc
push bx
mov bx,enemy1Y
mov ycol, bx
mov bx,enemy1X
mov xrow,bx
pop bx

push breadth 
mov breadth , 14
push height
mov height, 17
mov cx,breadth 
mov si, offset enemy1
draw_enemy10:
push cx
push xrow
mov cx, height
draw_enemy1I:
  push cx

push xrow
push ycol
  call make_it
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_enemy1I
pop xrow
pop cx
add ycol, 1
loop draw_enemy10
pop breadth 
pop height
ret
draw_enemy1 endp

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Waqt xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
draw_clock proc
MOV AH, 6
MOV AL, 0
MOV CX, 0
mov dh,00  ;row
mov dl, 50 ;col
mov bh,14h
INT 10H


t1:
cmp col, 6
jle red
MOV AH, 6
MOV AL, 0
MOV CX, 0
mov dh,0  ;row
mov dl,col  ;col
mov bh,10h ;kala
INT 10H
jmp time

red:
MOV AH, 6
MOV AL, 0
MOV CX, 0
mov dh,0  ;row
mov dl,col  ;col
mov bh,04h
INT 10H

time:
;for time delay
MOV CX, 01H
MOV DX, 4240H
MOV AH, 86H
INT 15H

MOV AH, 6
MOV AL, 0
MOV CX, 0
mov dh,0  ;row
mov dl,col  ;col
mov bh,8h; bag colo
INT 10H

dec col
cmp col, 0
je bahir

MOV AH, 6
MOV AL, 0
MOV CX, 0
mov dh,0  ;row
mov dl,0  ;col
mov bh,0
INT 10H
jmp t1
bahir:
ret
draw_clock endp
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Chalta wa waqt xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

dec_col proc
    cmp col, 6
    jle red


    MOV AH, 6
    MOV AL, 0
    MOV CX, 0
    mov dh,0  ;row
    mov dl,col  ;col
    mov bh,2h
    INT 10H

    ;for time delay
    MOV CX, 05H
    MOV DX, 4240H
    MOV AH, 86H
    INT 15H

    MOV AH, 6
    MOV AL, 0
    MOV CX, 0
    mov dh,0  ;row
    mov dl,col  ;col
    mov bh,10h
    INT 10H
jmp agay
red:
MOV AH, 6
    MOV AL, 0
    MOV CX, 0
    mov dh,0  ;row
    mov dl,col  ;col
    mov bh,04h
    INT 10H

    ;for time delay
    MOV CX, 01H
    MOV DX, 4240H
    MOV AH, 86H
    INT 15H

    MOV AH, 6
    MOV AL, 0
    MOV CX, 0
    mov dh,0  ;row
    mov dl,col  ;col
    mov bh,10h
    INT 10H

agay:
    dec col ; decrement column by 1

    ret
dec_col endp









game endp







chalo2:
call game2

EXIT_JUMP2:
mov ah,4ch
int 21h
;main endp
game2 proc
mov ah, 00h     
    mov al, 13h     
    int 10h

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  Making board xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


   	mov ah, 6
    mov al, 0
    mov bh, 00000110b ; orange color

    mov cx, 0
    mov dx, 80
    mov ch, 0
    mov dh, 80
    int 10h

    ; draw the black 60x60 box in the middle
    mov ah, 6
    mov al, 0
    mov bh, 00000000b ; black color

    mov cx, 5
    mov dx, 35
    mov ch, 2; top
    mov dh, 22;below
	mov cl,3; left
	mov dl,36; right

    int 10h


MOV AH, 6
MOV AL, 0
MOV CX, 0
mov dh,0  ;row
mov dl, 50 ;col
mov bh,25h
INT 10H

mov ah, 02h      ; Set the video cursor position function
mov bh, 0        ; Video page number
mov dh, 24       ; Set the row number to the last row of the screen
mov dl, 0       ; Set the column number to the last column of the screen
int 10h   

LEA DX, spaces1
MOV AH, 09H
INT 21H
LEA DX, score_msg
MOV AH, 09H
INT 21H
mov ah,02
mov dl,score_c
add dl,48
int 21h
LEA DX, spaces1
MOV AH, 09H
INT 21H


; for initial score
dec vark
dec vark
dec vark
    call drawBoxscore

mov si, 0
l1no:
mov dl,lives[si]
mov ah,02
int 21h
inc si
dec variable
cmp variable,0
je ehh
jmp l1no


ehh:
;lea dx,khali
;mov ah,09h
;int 21h

LEA DX, level_msg
MOV AH, 09H
INT 21H




;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Making all static objects xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
call draw_trail2_
call draw_trail22
call draw_ball12
;call draw_spaceship;asli wala
call draw_coin2
call draw_heart2
call draw_ball22
call draw_enemy12
;call draw_bar





call moveballs2

    mov ah, 4ch
    int 21h

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Movements xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
moveballs2 proc

l12:

	cmp var,60
	jz l22
	call dec_col
	;MOV CX, 01H
	;MOV DX, 4240H
	;MOV AH, 86H
	;INT 15H
 
	call makeitblack22
	call makeitblack2_
	inc ball_2X
	inc ball_1X
        inc enemy1X 
	call makeitblacks2 
	call spaceshipmove2
	call draw_spaceship2
	call draw_enemy12
	call draw_ball12
	call draw_ball22

	inc var
jmp l12

l22:

	cmp var,80
	jz l32

 
	MOV CX, 00H
	MOV DX, 4240H
	MOV AH, 86H
	INT 15H
	call makeitblack22
	call makeitblack2_
 
	dec ball_2Y
	dec ball_1X
	 
	call makeitblacks2 
	call spaceshipmove2
	call draw_spaceship2

	call draw_ball12 
	call draw_ball22
	inc var
	jmp l22

l32:
	cmp var,100
	jz L42

	;MOV CX, 01H
	;MOV DX, 4240H
	;MOV AH, 86H
	;INT 15H
	call makeitblack22
	call makeitblack2_
 
	inc ball_2Y
	INC ball_1X
	call makeitblacks2 
	call spaceshipmove2
	call draw_spaceship2

	call draw_ball12 
	call draw_ball22
	inc var
	JMP L32
L42:
	cmp var,160
	jz l52
	MOV CX, 01H
	MOV DX, 4240H
	MOV AH, 86H
	INT 15H
	call makeitblack22
	call makeitblack2_

	inc ball_2X
	INC ball_1Y
	call makeitblacks2 
	call spaceshipmove2
	call draw_spaceship2

	call draw_ball12 
	call draw_ball22
	inc var
	JMP L42
l52:
	cmp var,190
	jz l62

	;MOV CX, 01H
	;MOV DX, 4240H
	;MOV AH, 86H
	;INT 15H
	call makeitblack22
	call makeitblack2_

	dec ball_2X
	dec ball_1X
	call makeitblacks2
	call spaceshipmove2

	call draw_spaceship2

	call draw_ball12 
	call draw_ball22
	inc var
	JMP L52
l62:
	cmp var,220
	jz l72
	MOV CX, 00H
	MOV DX, 4240H
	MOV AH, 86H
	INT 15H
	call makeitblack22
	call makeitblack2_

	inc ball_2X
	DEC ball_1Y
	call makeitblacks2 
	call spaceshipmove2

	call draw_spaceship2
	call draw_ball12 
	call draw_ball22
	inc var
	JMP L62
l72:
	cmp var,240
	jz o_2
	;MOV CX, 01H
	;MOV DX, 4240H
	;MOV AH, 86H
	;INT 15H
	call makeitblack22
	call makeitblack2_
 
	dec ball_2Y
	INC ball_1Y
	call makeitblacks2 
	call spaceshipmove2

	call draw_spaceship2
	call draw_ball12 
	call draw_ball22
	inc var
	jmp l72
moveballs2 endp


o_2::
exit2::
cover x,y
mov ah,4ch
int 21h

exit_c2::
 mov ah, 0h ; clear screen
 int 10h
mov ah, 02h      ; Set the video cursor position function
mov bh, 0        ; Video page number
mov dh, 12       ; Set the row number to the last row of the screen
mov dl, 12       ; Set the column number to the last column of the screen
int 10h  
mov ah,09
lea dx,collision
int 21h

MOV CX, 0BH
	MOV DX, 4240H
	MOV AH, 86H
	INT 15H
MOV AH, 00H   
MOV AL, 03H   
INT 10H

mov ah,6 ;drawing a box
mov al,0 ;character for the box
mov bh,00000000b ;color selection
mov cl, 0 ; column of the upper left corner of the box
mov ch, 0 ; row
mov dh,35 ;row box
mov dl,80 ; ending col
int 10h



mov ah,6 ;drawing a box
mov al,0 ;character for the box
mov bh,01100000b ;color selection
mov cl, 6 ; column of the upper left corner of the box
mov ch, 3 ; row
mov dh,21;row box
mov dl,72 ; ending col
int 10h

; printing text

MOV AH,02H
mov bh,00000000B ;color selection
MOV DH, 10 ;Row Number
MOV DL, 0 ;Column Number
INT 10H



MOV AH,02H
MOV DH, 8 ;Row Number
MOV DL, 35 ;Column Number
INT 10H

lea dx, game_over
mov ah, 9
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

LEA DX, congratulations
MOV AH, 09H
INT 21H
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h

LEA DX, levels_completed2
MOV AH, 09H
INT 21H
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h


LEA DX, play_again
MOV AH, 09H
INT 21H
mov ah, 4ch
int 21h
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Making Pixels of all the objects xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
make_it2 proc
mov cx,2
    push cx
    push dx
    push ax

    cmp cx, 0
    jz exit_make_it2

    mov dx, ycol
drawPixO2:
    push cx
    mov cx, 2
drawPixI2:
    push cx
    mov ah, 0ch
    mov al, [si]
    mov cx, xrow
    int 10h
    pop cx
    inc xrow
    dec cx
    jnz drawPixI2

    pop cx
    inc ycol
    dec cx
    jnz drawPixO2

exit_make_it2:
    pop ax
    pop dx
    pop cx
    ret
make_it2 endp



;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx obj1 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
draw_ball12 proc
;reserving bx register for multiple usage
	push bx
;setting positions using coordinates
mov bx,ball_1Y
mov ycol, bx
mov bx,ball_1X
mov xrow,bx
;getting it back
	pop bx

push breadth 
;pixel sizings
mov breadth , 14
push height
mov height, 14
;loop it around until made length n breadth wise
mov cx,breadth 
mov si, offset ball_1
draw_ball1O2:
push cx
push xrow
mov cx, height
draw_ball1I2:
  push cx
;save
push xrow
push ycol
;group
  call make_it2
;restore
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_ball1I2
pop xrow
pop cx
add ycol, 1
loop draw_ball1O2
pop breadth 
pop height
ret
draw_ball12 endp


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Obj 2 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

draw_ball22 proc
;save 
	push bx
mov bx,ball_2Y

mov ycol, bx

mov bx,ball_2X

mov xrow,bx
	pop bx
;save dimensions
push breadth 
mov breadth , 14
push height
mov height, 14
mov cx,breadth 
mov si, offset ball_2
draw_ball202:
push cx
push xrow
mov cx, height
draw_ball2I2:
  push cx

push xrow
push ycol
  call make_it2
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_ball2I2
pop xrow
pop cx
add ycol, 1
loop draw_ball202
pop breadth 
pop height
ret
draw_ball22 endp
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Everthing is a Black box xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
makeitblack2_ proc
push bx
mov bx,ball_2Y
mov ycol, bx
mov bx,ball_2X
mov xrow,bx
pop bx

push breadth 
mov breadth , 14
push height
mov height, 14
mov cx,breadth 
mov si, offset black
draw_ball202:
push cx
push xrow
mov cx, height
draw_ball2I2:
  push cx

push xrow
push ycol
  call make_it2
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_ball2I2
pop xrow
pop cx
add ycol, 1
loop draw_ball202
pop breadth 
pop height
ret
makeitblack2_ endp
makeitblack22 proc
push bx
mov bx,ball_1Y
mov ycol, bx
mov bx,ball_1X
mov xrow,bx
pop bx

push breadth 
mov breadth , 14
push height
mov height, 14
mov cx,breadth 
mov si, offset black
draw_ball202h:
push cx
push xrow
mov cx, height
draw_ball2I2h:
  push cx

push xrow
push ycol
  call make_it2
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_ball2I2h
pop xrow
pop cx
add ycol, 1
loop draw_ball202h
pop breadth 
pop height
ret
makeitblack22 endp
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx SPACESHIP xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
draw_spaceship2 proc


push bx
mov bx,spaceY
mov ycol, bx
mov bx,spaceX
mov xrow,bx
pop bx

push breadth 
mov breadth , 22
push height
mov height, 28
mov cx,breadth 
mov si, offset spaceship_2
draw_spaceship02:
push cx
push xrow
mov cx, height
draw_spaceshipI2:
  push cx

push xrow
push ycol
  call make_it2
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_spaceshipI2
pop xrow
pop cx
add ycol, 1
loop draw_spaceship02
pop breadth 
pop height
ret
draw_spaceship2 endp
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx obj 3 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

draw_coin2 proc
push bx
mov bx,coinY
mov ycol, bx
mov bx,coinX
mov xrow,bx
pop bx

push breadth 
mov breadth , 14
push height
mov height, 12
mov cx,breadth 
mov si, offset coin
draw_coin02:
push cx
push xrow
mov cx, height
draw_coinI2:
  push cx

push xrow
push ycol
  call make_it2
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_coinI2
pop xrow
pop cx
add ycol, 1
loop draw_coin02
pop breadth 
pop height
ret
draw_coin2 endp

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Obj 4xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

draw_heart2 proc
push bx
mov bx,heartY
mov ycol, bx
mov bx,heartX
mov xrow,bx
pop bx

push breadth 
mov breadth , 12
push height
mov height, 14
mov cx,breadth 
mov si, offset heart
draw_heart02:
push cx
push xrow
mov cx, height
draw_heartI2:
  push cx

push xrow
push ycol
  call make_it2
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_heartI2
pop xrow
pop cx
add ycol, 1
loop draw_heart02
pop breadth 
pop height
ret
draw_heart2 endp
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Key press movement xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
spaceshipmove2 proc

mov ah, 01H
    int 16H
    jnz button2
	
	mov ax, 0
	jmp escaped2
	
	button2:
		mov ah, 00H
		int 16H
escaped2:
		.if(al == 'w' && spaceY >17)
			
			;dec spaceY
			 sub spaceY,2 
			;dec trailY
			 sub trailY,2
			;dec trailrY
			 sub trailrY,2
			call draw_trail2_
			
		.endif
		
		.if(al == 's' && spaceY < 158)
			inc spaceY
			inc trailY
			inc trailrY
			call draw_trail22
			
		.endif

		
		.if(al == 'd' && spaceX < 265)
			inc spaceX 
			inc trailrX
			inc trailX
			call draw_trail2_
		
			

			
		.endif

		.if(al == 'a'  && spaceX >25)
			dec spaceX

			dec trailrX
			dec trailX
			call draw_trail22
		.endif
		mov ax,ball_1X
		mov bx,ball_1Y
		mov cx,spaceX
		add cx,21 
		mov dx,spaceY
		add dx,27
		.if(spaceX <=ax && spaceX <= cx)
			.if(spaceY<=bx && spaceY <=dx)
				jmp exit_c2

			.endif
		.endif
		
		mov ax,ball_2X
		mov bx,ball_2Y
		mov cx,spaceX
		add cx,21 
		mov dx,spaceY
		add dx,27
		.if(spaceX <=ax && spaceX <= cx)
			.if(spaceY<=bx && spaceY <=dx)
				jmp exit_c2

			.endif
		.endif

		mov ax,enemy1X 
		mov bx,enemy1Y
		mov cx,spaceX
		add cx,21 
		mov dx,spaceY
		add dx,27
		.if(spaceX <=ax && spaceX <= cx)
			.if(spaceY<=bx && spaceY <=dx)
				jmp exit_c2

			.endif
		.endif

		



ret
spaceshipmove2 endp



makeitblacks2 proc
push bx
mov bx,spaceY
mov ycol, bx
mov bx,spaceX
mov xrow,bx
pop bx
;yeh experiment kiya tha
push breadth 
mov breadth , 17
push height
mov height, 20
mov cx,breadth 
mov si, offset black
draw_ball202_:
push cx
push xrow
mov cx, height
draw_ball2I2_:
  push cx

push xrow
push ycol
  call make_it2
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_ball2I2_
pop xrow
pop cx
add ycol, 1
loop draw_ball202_
pop breadth 
pop height
ret
makeitblacks2 endp

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Trails xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

draw_trail2_ proc
push bx
mov bx,trailY
mov ycol, bx
mov bx,trailX
mov xrow,bx
pop bx

push breadth 
mov breadth , 12
push height
mov height, 5
mov cx,breadth 
mov si, offset trail
draw_coin02_1:
push cx
push xrow
mov cx, height
draw_coinI2_1:
  push cx

push xrow
push ycol
  call make_it2
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_coinI2_1
pop xrow
pop cx
add ycol, 1
loop draw_coin02_1
pop breadth 
pop height
ret
draw_trail2_ endp
draw_trail22 proc
push bx
mov bx,trailrY
mov ycol, bx
mov bx,trailrX
mov xrow,bx
pop bx

push breadth 
mov breadth , 11
push height
mov height, 6
mov cx,breadth 
mov si, offset trailr
draw_coin02_1:
push cx
push xrow
mov cx, height
draw_coinI2_1:
  push cx

push xrow
push ycol
  call make_it2
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_coinI2_1
pop xrow
pop cx
add ycol, 1
loop draw_coin02_1
pop breadth 
pop height
ret
draw_trail22 endp

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Obj 5 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
draw_enemy12 proc
push bx
mov bx,enemy1Y
mov ycol, bx
mov bx,enemy1X
mov xrow,bx
pop bx

push breadth 
mov breadth , 14
push height
mov height, 17
mov cx,breadth 
mov si, offset enemy1
draw_enemy102:
push cx
push xrow
mov cx, height
draw_enemy1I2:
  push cx

push xrow
push ycol
  call make_it2
pop ycol
pop xrow

pop cx
add si, 1
add xrow, 1
loop draw_enemy1I2
pop xrow
pop cx
add ycol, 1
loop draw_enemy102
pop breadth 
pop height
ret
draw_enemy12 endp

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Waqt xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
draw_clock2 proc
MOV AH, 6
MOV AL, 0
MOV CX, 0
mov dh,00  ;row
mov dl, 50 ;col
mov bh,14h
INT 10H


t12:
cmp col, 6
jle red2
MOV AH, 6
MOV AL, 0
MOV CX, 0
mov dh,0  ;row
mov dl,col  ;col
mov bh,10h ;kala
INT 10H
jmp time2

red2:
MOV AH, 6
MOV AL, 0
MOV CX, 0
mov dh,0  ;row
mov dl,col  ;col
mov bh,04h
INT 10H

time2:
;for time delay
MOV CX, 01H
MOV DX, 4240H
MOV AH, 86H
INT 15H

MOV AH, 6
MOV AL, 0
MOV CX, 0
mov dh,0  ;row
mov dl,col  ;col
mov bh,8h; bag colo
INT 10H

dec col
cmp col, 0
je bahir2

MOV AH, 6
MOV AL, 0
MOV CX, 0
mov dh,0  ;row
mov dl,0  ;col
mov bh,0
INT 10H
jmp t12
bahir2:
ret
draw_clock2 endp
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Chalta wa waqt xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

dec_col2 proc
    cmp col1, 6
    jle red3


    MOV AH, 6
    MOV AL, 0
    MOV CX, 0
    mov dh,0  ;row
    mov dl,col1  ;col
    mov bh,2h
    INT 10H

    ;for time delay
    ;MOV CX, 01H
    ;MOV DX, 4240H
    ;MOV AH, 86H
    ;INT 15H

    MOV AH, 6
    MOV AL, 0
    MOV CX, 0
    mov dh,0  ;row
    mov dl,col1  ;col
    mov bh,10h
    INT 10H
jmp agay2
red3:
MOV AH, 6
    MOV AL, 0
    MOV CX, 0
    mov dh,0  ;row
    mov dl,col1  ;col
    mov bh,04h
    INT 10H

    ;for time delay
    ;MOV CX, 01H
    ;MOV DX, 4240H
    ;MOV AH, 86H
    ;INT 15H

    MOV AH, 6
    MOV AL, 0
    MOV CX, 0
    mov dh,0  ;row
    mov dl,col1  ;col
    mov bh,10h
    INT 10H

agay2:
    dec col1 ; decrement column by 1

    ret
dec_col2 endp

drawBoxscore PROC
    mov ah, 6
    mov al, 0
    mov bh, 00000110b ; orange color

    ;Draw Box
    mov cx, 0     ; top left x coordinate
    mov dx, 39     ; top left y coordinate
    mov ch, 24     ; bottom right x coordinate
    mov dh, 24     ; bottom right y coordinate
    int 10h

    mov ah, 02h      ; Set the video cursor position function
    mov bh, 0        ; Video page number
    mov dh, 24       ; Set the row number to the last row of the screen
    mov dl, 4       ; Set the column number to the last column of the screen
    int 10h

    mov ah,09
    lea dx,hi
    int 21h

    

;multi digit output
multi:
mov ax,count
mov dx,0
mov bx,10
mov cx,0
l3s:
div bx
mov q,dx
push q
mov dx,0
mov ah,0
inc cx
mov var1k,ax
cmp var1k,0
je out_s
jmp l3s
out_s:
l4s:
pop dx
add dx,48
mov ah,02
int 21h
loop l4s
    
    inc count

    


mov ah, 02h      ; Set the video cursor position function
    mov bh, 0        ; Video page number
    mov dh, 24       ; Set the row number to the last row of the screen
    mov dl, 16       ; Set the column number to the last column of the screen
    int 10h
   
mov bl,vark
mov si,0
eklabel:
mov dl,lives1[si]
mov ah,02
int 21h
inc si
dec bl
cmp bl,0
je bahirjao
jmp eklabel
bahirjao:

mov ah, 02h      ; Set the video cursor position function
    mov bh, 0        ; Video page number
    mov dh, 24       ; Set the row number to the last row of the screen
    mov dl, 28       ; Set the column number to the last column of the screen
    int 10h

	mov ah,09
    lea dx,level2_bottom
    int 21h

    mov ah, 86h
    mov cx, 05h
    mov dx, 4240h
    int 15h

    ret
drawBoxscore ENDP







game2 endp
end main