
10 POKE 65495,1: PMODE 4,1:DIM EX(15,10):DIM EY(15,10)
20 PCLS: DIM X(15):DIM Y(15):DIM CX(15):DIM CY(15):DIM BX(64):DIM BY(64) : MR=85
30 FOR I = 0 TO 15:R = RND(0)*.365+.7: X(I) = SIN(I*3.14/8)*MR*R+120:Y(I) = COS(I*3.14/8)* MR*R+100:CX(I) = SIN(I*3.14/8)*10*R+120: CY(I) = COS(I*3.14/8)* 5*R+100


33 BX(I) = SIN((I+.5)*3.14/8)*MR +120:BY(I) = COS((I+.5)*3.14/8)*MR+100
34 BX(I+16) = SIN((I+.3)*3.14/8)*MR*.9 +120:BY(I+16) = COS((I+.3)*3.14/8)*MR*.9+100
35 BX(I+32) = SIN((I+.7)*3.14/8)*MR*.9 +120:BY(I+32) = COS((I+.7)*3.14/8)*MR*.9+100

36 PRINT "*";: NEXT 


40 FOR I=0 TO 15: LINE(X(I),Y(I))-(CX(I),CY(I)),PSET:
50 LINE(X(I),Y(I))-(X((I+1)AND 15),Y ((I+1)AND 15)  ), PSET
55 NEXT

56 FOR I= 0 TO 15: PRINT "*"; :FOR J= 1 TO 9

57 EX(I,J) = SIN((I+.5)*3.14/8)*MR*J/10 +120:EY(I,J) = COS((I+.5)*3.14/8)*MR*J/10+100

59 NEXT:NEXT:SCREEN 1,1


 
60 GOTO 80

65 A$=INKEY$:IF A$=" " THEN 600: ELSE IF A$="" THEN 100
66 LINE(BX(P),BY(P))-(BX(P+16),BY(P+16)),PRESET:LINE(BX(P),BY(P))-(BX(P+32),BY(P+32)),PRESET

70 IF A$="A" THEN P=(P-1) AND 15:ELSE IF A$="D" THEN P=(P+1) AND 15
 

80  LINE(BX(P),BY(P))-(BX(P+16),BY(P+16)),PSET:LINE(BX(P),BY(P))-(BX(P+32),BY(P+32)),PSET

99 REM MOVE OR CREATE 
100 A = INT(RND(0)*11)
110 IF A > C THEN EP(C)=INT(RND(0)*16):D(C) = 1: A=C:C=C+1: GOSUB 400 
120 Z=0 : IF A>C THEN 65
130 CIRCLE(EX(EP(A),D(A)),EY(EP(A),D(A))), 15/(11-D(A)),0: IF Z THEN RETURN
140 B = INT(RND(0)*4): IF B=0 THEN EP(A)=EP(A)-1:ELSE IF B=1 THEN EP(A)=EP(A)+1:ELSE D(A)=D(A)+B-1
145 EP(A) = EP(A) AND 15:IF D(A)>9 THEN GOSUB 700: D(A)=1: GOSUB 400: ELSE GOSUB 400

200 GOTO 65

31 REM EP  is enemy column, D is enemy distance, C is enemy count

400 CIRCLE(EX(EP(A),D(A)),EY(EP(A),D(A))), 15/(11-D(A)),1
410 RETURN

599 LASERS
600 LINE (BX(P),BY(P)) - ( 120,100), PSET
605 FOR A = 0 TO C: IF P = EP(A) THEN Z=1:GOSUB 130:EP(A)=(EP(A)+5)AND 15: D(A)=1: NEXT: ELSE NEXT
610 LINE (BX(P),BY(P)) - ( 120,100), PRESET
620 GOTO 100

700 FOR I = 1 TO 9: CIRCLE(EX(EP(A),I),EY(EP(A),I)), 15/(10-I),1 :NEXT
710 RETURN


9999 GOTO 9999


