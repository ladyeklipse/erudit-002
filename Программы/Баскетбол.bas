10 INK 6: PAPER 4: BORDER 4: CLS
20 FOR K=0 TO PI STEP PI/400
30 LET X=42*SIN(K): LET Y=42*COS(K)
40 PLOT 128-X,133-Y: DRAW 2*X, 2*Y
50 NEXT K
60 FOR I=1 TO 6
70 READ X1, Y1, X2, Y2, K
80 PLOT X1, Y1: DRAW OVER 1; X2, Y2, K*PI/180
90 NEXT I
100 DATA 163,109,-74,40,87, 102,100,41,72,68, 86,130,35,44,129, 170,143,-22,-47,103, 106,0,-28,83,42, 177,83,-28,-83,42
110 FOR I=1 TO 16
120 READ X1,Y1,X2,Y2
130 PLOT X1,Y1: DRAW X2,Y2
140 NEXT I
150 DATA 78,84,99,0,78,83,99,0,86,73,12,10,93,61,25,22,99,47,39,36,104,32,54,51,106,14,72,69,113,0,42,41,133,0,16,16,158,83,11,-10,138,83,24,-23,118,83,38,-37,98,83,54,-53,78,83,71,-69,102,39,40,-39,106,16,16,-16
160 FOR I=0 TO 21
170 FOR J=1 TO 23 STEP 22
180 PRINT AT I,J; PAPER RND*7; INK 9; "dinamo"
190 NEXT J: NEXT I