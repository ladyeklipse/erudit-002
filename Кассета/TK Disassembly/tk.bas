  10 REM tehni~eskij kontrolx
  15 CLEAR 31575: LOAD "TK V1.0R"CODE : RANDOMIZE USR 32520: POKE 23676,123
  20 BORDER 7: PAPER 7: INK 9: CLS 
 100 PRINT " █████ █  ▄█  tehni~.  kontrolx    █   █▄█▀   pbk ""|rudit-002 ""    █   █▀█▄   ©  piwowarow a.w.    █   █  ▀█  V1.0R  24.11.1990"
 120 PLOT 191,136: DRAW 57,0: DRAW 0,-129: DRAW -57,0: DRAW 0,129: PLOT 7,136: DRAW 177,0: DRAW 0,-129: DRAW -177,0: DRAW 0,129
 130 INPUT "": PRINT AT 5,24; INVERSE 1;" testy "
 140 RESTORE 1005: FOR i=1 TO 7: READ m$: PRINT AT i*2+4,25;m$(1 TO 4): NEXT i
1000 REM men£
1005 LET s$=" test ": DATA "tw  ","gromkogow.","pzu ","ozu ","klawiatury","magnitofona","dvojstika": RESTORE 1005
1010 PRINT AT 5,1; INVERSE 1;"       m e n £        ": GO SUB 9000: FOR i=1 TO 7: READ m$: PRINT AT i*2+4,2; INVERSE 1;i; INVERSE 0;s$;m$: NEXT i: PRINT AT 20,2;"8 wse testy"
1020 PAUSE 0: LET c$=INKEY$
1030 IF c$<"1" OR c$>"8" THEN GO TO 1020
1035 PRINT AT 5,24; INVERSE 1;" testy "
1040 IF c$="8" THEN GO TO 1100
1050 GO SUB ((VAL (c$)+1)*1000): GO SUB 9200: GO TO 1000
1100 PRINT AT 5,24; INVERSE 1;" testy ": LET err=0
1105 RESTORE 1005: FOR i=1 TO 7: READ m$: PRINT AT i*2+4,25;m$(1 TO 4): NEXT i
1110 GO SUB 2000: LET err=err OR er: GO SUB 3000: LET err=err OR er: GO SUB 4000: LET err=err OR er: GO SUB 5000: LET err=err OR er: GO SUB 6000: LET err=err OR er: GO SUB 7000: LET err=err OR er: GO SUB 8000: LET err=err OR er
1120 PRINT PAPER ((2-err)*2);AT 5,1;"      wse testy       ";AT 5,24;" testy ": GO SUB 9000
1130 IF NOT err THEN PRINT AT 11,3;"wse testy";AT 12,3;"pro{li.";AT 13,3;"pbk ""|rudit-002 """;AT 14,3;"goden!": GO TO 1150
1140 PRINT AT 11,3;"ne wse testy";AT 12,3;"pro{li.";AT 13,3;"pbk ""|rudit-002 """;AT 14,3;"negoden!"
1150 GO SUB 9200: GO TO 1000
2000 REM Teletest
2010 PRINT AT 5,1; INVERSE 1;"         t w          ";AT 6,25; INVERSE 0;"tw": GO SUB 9000: LET er=0: LET b$="swetlo": LET l$=""
2030 READ m$: LET x=20: LET y=3: LET i=0: LET f=0: GO SUB 2700: FOR i=1 TO 7: READ m$: LET l$="": LET x=x-1: LET y=3: LET f=0: GO SUB 2700: LET l$=b$: LET x=x-1: LET y=10: LET f=1: GO SUB 2700: NEXT i: READ m$: LET l$="": LET y=3: GO SUB 2700
2070 GO SUB 2650: GO SUB 9000: PRINT AT 13,8; FLASH 1;"migaet?"
2080 PRINT #0;" d da, n net": GO SUB 2660
2100 DATA "~[rnyj","sinij","krasnyj","purpuprnyj","zel[nyj","goluboj","v[ltyj","seryj","belyj"
2110 RESTORE 2100: PRINT AT 10,5;"cwet  bordera"
2130 FOR i=0 TO 7: READ m$: PRINT AT 13,7;"          ";AT 13,7;m$: BORDER i: PAUSE 200: NEXT i: GO SUB 2650
2510 GO SUB 9000: PRINT PAPER ((2-er)*2);AT 5,1;"         t w          ";AT 6,25;"tw": RETURN 
2650 PRINT #0;" prawilxnye cweta? d da, n net"
2660 PAUSE 0: GO SUB 9100: IF NOT tn THEN GO TO 2660
2665 INPUT "": IF c$="n" THEN LET er=1
2670 RETURN 
2700 PRINT PAPER i; BRIGHT f;AT x,2;"                    ";AT x,3;l$;AT x,y;m$: RETURN 
3000 REM gromkogowritelx
3010 PRINT AT 5,1; INVERSE 1;"   gromkogoworitelx   ";AT 8,25; INVERSE 0;"grom"
3020 GO SUB 9000: LET er=0
3030 PRINT AT 13,5;"sly{ite zwuk?";#0;" d da, n net"
3040 FOR i=0 TO 10: BEEP 0.05,i: GO SUB 9100: IF tn=1 THEN GO TO 3060
3050 NEXT i: GO TO 3040
3060 GO SUB 9000: INPUT "": IF c$="n" THEN LET er=1
3070 PRINT PAPER ((2-er)*2);AT 5,1;"   gromkogoworitelx   ";AT 8,25;"grom";: RETURN 
4000 REM pzu
4010 PRINT AT 5,1; INVERSE 1;"        p z u         ";AT 10,25; INVERSE 0;"pzu"
4020 GO SUB 9000: PRINT AT 7,4;"NⒶ  |ta-   kontr.";AT 8,8;"lon    summa": DATA 45631,33775: RESTORE 4020
4025 FOR i=1 TO 2: READ es: POKE 32108,32: POKE 32106,(i-1)*32: LET s=USR 32103
4026 PRINT AT 9+i,4;i;")";TAB 8;es;TAB 15;s: NEXT i: POKE 32108,64: POKE 32106,0
4035 LET es=13870: LET s=USR 32103
4040 PRINT AT 19,8;es;TAB 15;s
4070 LET er=0: IF s<>es THEN LET er=1
4080 PRINT PAPER ((2-er)*2);AT 5,1;"        p z u         ";AT 10,25;"pzu"
4090 PAUSE 200: RETURN 
5000 REM ozu
5010 PRINT AT 5,1; INVERSE 1;"        o z u         ";AT 12,25; INVERSE 0;"ozu"
5035 GO SUB 9000: LET s=USR 32129: LET er=(s<>0)
5040 IF er THEN PRINT AT 13,3;"o{ibka: ";s
5050 PRINT PAPER ((2-er)*2);AT 5,1;"        o z u         ";AT 12,25;"ozu": RETURN 
6000 REM Klawiatura
6010 PRINT INVERSE 1;AT 5,1;"      klawiatura      ";AT 14,25; INVERSE 0;"klaw": GO SUB 9000
6030 POKE 23676,127: PRINT PAPER 2;AT 9,4;"ⓄⒾⓃⒶⒷⒻⒼ{}ⒹⒸⓄ";AT 10,5;"1234567890]£";AT 11,4;"QWERTYUIOP~[";AT 12,3;"ASDFGHJKL;""Ⓙ";AT 13,4;"ⓅZXCVBNM|,.Ⓟ";AT 14,8;"ⓇⓈ ⓉⓊ"
6040 PRINT AT 16,3;"navmite wse";AT 17,3;"klawi{i po odnoj": RANDOMIZE USR 31944: LET i=16: GO SUB 9020
6041 REM 31944=7CC8
6070 PRINT PAPER 2;AT 9,4;"Ⓛ"; PAPER 7;AT 16,3;"navmite lewu£";AT 17,3;"klawi{u CAPS SHIFT": POKE 31946,1: POKE 31941,129: RANDOMIZE USR 31944: LET i=16: GO SUB 9020
6090 PRINT PAPER 2;AT 9,15;"Ⓞ"; PAPER 7;AT 16,3;"navmite prawu£";AT 17,3;"klawi{u CAPS SHIFT"
6092 POKE 31940,47: RANDOMIZE USR 31944: POKE 31940,36: POKE 31941,1: LET i=16: GO SUB 9020
6096 PRINT PAPER 2;AT 13,4;"Ⓟ"; PAPER 7;AT 16,3;"navmite lewu£";AT 17,3;"klawi{u SYMB SHIFT": POKE 31866,129: RANDOMIZE USR 31944: LET i=16: GO SUB 9020
6102 PRINT PAPER 2;AT 13,15;"Ⓟ"; PAPER 7;AT 16,3;"navmite prawu£";AT 17,3;"klawi{u SYMB SHIFT"
6104 POKE 31865,175: RANDOMIZE USR 31944: POKE 31865,164: POKE 31866,1: POKE 31946,63: POKE 23676,123
6120 LET er=0: PRINT PAPER 4;AT 5,1;"      klawiatura      ";AT 14,25;"klaw": RETURN 
7000 REM magnitofon
7010 PRINT AT 5,1; INVERSE 1;"      magnitofon      ";AT 16,25; INVERSE 0;"magn": GO SUB 9000
7030 PRINT AT 11,3;"wstawxte testowu£";AT 12,3;"kassetu";AT 13,3;"w magnitofon,";AT 14,3;"wkl£~ite";AT 15,3;"zapisx": GO SUB 9200: GO SUB 9000: RANDOMIZE USR 32066
7080 PRINT AT 11,3;"peremotajte lentu";AT 12,3;"k na~alu zapisi,";AT 13,3;"wkl£~ite";AT 14,3;"wosproizwedenie": LET er=USR 32078: GO SUB 9000
7100 PRINT PAPER ((2-er)*2);AT 5,1;"      magnitofon      ";AT 16,25;"magn": RETURN 
8000 REM dvojstik
8010 PRINT AT 5,1; INVERSE 1;"      dvojstik        ";AT 18,25; INVERSE 0;"dvoj": GO SUB 9000: PRINT AT 10,7;"uprawlqjte";#0;"proweriw, navmite l£bu£ klawi{u.": LET er=0
8020 LET x=IN 1: IF x=225 OR x=254 THEN LET m$="wprawo": GO SUB 8300
8030 IF x=226 OR x=253 THEN LET m$="wlewo": GO SUB 8300
8040 IF x=228 OR x=251 THEN LET m$="wniz": GO SUB 8300
8050 IF x=232 OR x=247 THEN LET m$="wwerh": GO SUB 8300
8060 IF x=240 OR x=239 THEN LET m$="ogonx": GO SUB 8300
8080 LET l$=INKEY$: IF l$="" THEN GO TO 8020
8090 PRINT #0;"uprawlqetsq prawilxno? d ili n": GO SUB 2660: PLOT 191,7: DRAW 57,0: PLOT 7,7: DRAW 177,0
8100 PRINT PAPER ((2-er)*2);AT 5,1;"      dvojstik        ";AT 18,25;"dvoj": RETURN 
8300 PRINT AT 13,9;"      ";AT 13,9;m$: RETURN 
9000 REM CLS
9010 FOR i=6 TO 20
9020 PRINT AT i,1;"                      "
9030 NEXT i: RETURN 
9100 REM }it d/n
9110 LET c$=INKEY$
9120 IF c$="d" OR c$="D" THEN LET c$="d": LET tn=1: RETURN 
9130 IF c$="n" OR c$="N" THEN LET c$="n": LET tn=1: RETURN 
9140 LET tn=0: RETURN 
9200 REM pauza
9210 PRINT #0;" navmite l£bu£ klawi{u": PAUSE 0: INPUT "": RETURN 
