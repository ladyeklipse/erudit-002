10 POKE USR "A", BIN 00011000
20 POKE USR "A"+1, BIN 00011000
30 POKE USR "A"+2, BIN 11111111
40 POKE USR "A"+3, BIN 10111101
50 POKE USR "A"+4, BIN 00111100
60 POKE USR "A"+5, BIN 00111100
70 POKE USR "A"+6, BIN 00100100
80 POKE USR "A"+7, BIN 01100110
100 BORDER 5: PAPER 6: CLS
110 PRINT INK RND*7;"{A}";
120 GO TO 110