10 BORDER 0: PAPER 6: CLS
20 INPUT "NUMBER OF CORNERS:"; N
30 FOR R=0 TO 5
40 LET X1=128: LET Y1=172
50 PLOT X1, Y1
60 FOR I=1 TO N
70 LET X2=128+84*SIN(I*2*PI/N)
80 LET Y2=88+84*COS(I*2*PI/N)
90 DRAW PAPER R; INK 9; X2-X1, Y2-Y1
100 LET X1=X2: LET Y1=Y2
110 BEEP .05,R*Y1/18
120 NEXT I
130 BEEP 1, R*15-30
140 NEXT R