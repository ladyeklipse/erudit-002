0000  00                 nop
0001  74                 ld (hl),h
0002  6B                 ld l,e
0003  20 20              jr nz,$0025
0005  20 20              jr nz,$0027
0007  20 20              jr nz,$0029
0009  20 20              jr nz,$002B
000B  31 1D 0A           ld sp,$0A1D
000E  00                 nop
000F  DD 1C              inc e
0000  00                 nop
0001  0A                 ld a,(bc)
0002  1C                 inc e
0003  00                 nop
0004  EA 14 01           jp pe,$0114
0007  74                 ld (hl),h
0008  65                 ld h,l
0009  68                 ld l,b
000A  6E                 ld l,(hl)
000B  69                 ld l,c
000C  7E                 ld a,(hl)
000D  65                 ld h,l
000E  73                 ld (hl),e
000F  6B                 ld l,e
0010  69                 ld l,c
0011  6A                 ld l,d
0012  20 6B              jr nz,$007F
0014  6F                 ld l,a
0015  6E                 ld l,(hl)
0016  74                 ld (hl),h
0017  72                 ld (hl),d
0018  6F                 ld l,a
0019  6C                 ld l,h
001A  78                 ld a,b
001B  14                 inc d
001C  00                 nop
001D  14                 inc d
001E  00                 nop
001F  0D                 dec c
0020  00                 nop
0021  0F                 rrca
0022  3F                 ccf
0023  00                 nop
0024  FD 33              inc sp
0026  31 35 37           ld sp,$3735
0029  35                 dec (hl)
002A  0E 00              ld c,0
002C  00                 nop
002D  57                 ld d,a
002E  7B                 ld a,e
002F  00                 nop
0030  3A EF 22           ld a,($22EF)
0033  54                 ld d,h
0034  4B                 ld c,e
0035  20 56              jr nz,$008D
0037  31 2E 30           ld sp,$302E
003A  52                 ld d,d
003B  22 AF 3A           ld ($3AAF),hl
003E  F9                 ld sp,hl
003F  C0                 ret nz
0040  33                 inc sp
0041  32 35 32           ld ($3235),a
0044  30 0E              jr nc,$0054
0046  00                 nop
0047  00                 nop
0048  08                 ex af,af'
0049  7F                 ld a,a
004A  00                 nop
004B  3A F4 32           ld a,($32F4)
004E  33                 inc sp
004F  36 37              ld (hl),55
0051  36 0E              ld (hl),14
0053  00                 nop
0054  00                 nop
0055  7C                 ld a,h
0056  5C                 ld e,h
0057  00                 nop
0058  2C                 inc l
0059  31 32 33           ld sp,$3332
005C  0E 00              ld c,0
005E  00                 nop
005F  7B                 ld a,e
0060  00                 nop
0061  00                 nop
0062  0D                 dec c
0063  00                 nop
0064  14                 inc d
0065  1D                 dec e
0066  00                 nop
0067  E7                 rst 20h
0068  37                 scf
0069  0E 00              ld c,0
006B  00                 nop
006C  07                 rlca
006D  00                 nop
006E  00                 nop
006F  3A DA 37           ld a,($37DA)
0072  0E 00              ld c,0
0074  00                 nop
0075  07                 rlca
0076  00                 nop
0077  00                 nop
0078  3A D9 39           ld a,($39D9)
007B  0E 00              ld c,0
007D  00                 nop
007E  09                 add hl,bc
007F  00                 nop
0080  00                 nop
0081  3A FB 0D           ld a,($0DFB)
0084  00                 nop
0085  64                 ld h,h
0086  89                 adc a,c
0087  00                 nop
0088  F5                 push af
0089  22 20 8F           ld ($8F20),hl
008C  8F                 adc a,a
008D  8F                 adc a,a
008E  8F                 adc a,a
008F  8F                 adc a,a
0090  20 8F              jr nz,$0021
0092  20 20              jr nz,$00B4
0094  8C                 adc a,h
0095  8F                 adc a,a
0096  20 20              jr nz,$00B8
0098  14                 inc d
0099  00                 nop
009A  74                 ld (hl),h
009B  65                 ld h,l
009C  68                 ld l,b
009D  6E                 ld l,(hl)
009E  69                 ld l,c
009F  7E                 ld a,(hl)
00A0  2E 20              ld l,32
00A2  20 6B              jr nz,$010F
00A4  6F                 ld l,a
00A5  6E                 ld l,(hl)
00A6  74                 ld (hl),h
00A7  72                 ld (hl),d
00A8  6F                 ld l,a
00A9  6C                 ld l,h
00AA  78                 ld a,b
00AB  20 20              jr nz,$00CD
00AD  20 20              jr nz,$00CF
00AF  8F                 adc a,a
00B0  20 20              jr nz,$00D2
00B2  20 8F              jr nz,$0043
00B4  8C                 adc a,h
00B5  8F                 adc a,a
00B6  83                 add a,e
00B7  20 20              jr nz,$00D9
00B9  20 70              jr nz,$012B
00BB  62                 ld h,d
00BC  6B                 ld l,e
00BD  20 22              jr nz,$00E1
00BF  22 7C 72           ld ($727C),hl
00C2  75                 ld (hl),l
00C3  64                 ld h,h
00C4  69                 ld l,c
00C5  74                 ld (hl),h
00C6  2D                 dec l
00C7  30 30              jr nc,$00F9
00C9  32 20 22           ld ($2220),a
00CC  22 20 20           ld ($2020),hl
00CF  20 20              jr nz,$00F1
00D1  8F                 adc a,a
00D2  20 20              jr nz,$00F4
00D4  20 8F              jr nz,$0065
00D6  83                 add a,e
00D7  8F                 adc a,a
00D8  14                 inc d
00D9  00                 nop
00DA  8C                 adc a,h
00DB  20 20              jr nz,$00FD
00DD  20 7F              jr nz,$015E
00DF  20 20              jr nz,$0101
00E1  70                 ld (hl),b
00E2  69                 ld l,c
00E3  77                 ld (hl),a
00E4  6F                 ld l,a
00E5  77                 ld (hl),a
00E6  61                 ld h,c
00E7  72                 ld (hl),d
00E8  6F                 ld l,a
00E9  77                 ld (hl),a
00EA  20 61              jr nz,$014D
00EC  2E 77              ld l,119
00EE  2E 20              ld l,32
00F0  20 20              jr nz,$0112
00F2  20 8F              jr nz,$0083
00F4  20 20              jr nz,$0116
00F6  20 8F              jr nz,$0087
00F8  20 20              jr nz,$011A
00FA  83                 add a,e
00FB  8F                 adc a,a
00FC  20 20              jr nz,$011E
00FE  56                 ld d,(hl)
00FF  31 2E 30           ld sp,$302E
0102  52                 ld d,d
0103  20 20              jr nz,$0125
0105  32 34 2E           ld ($2E34),a
0108  31 31 2E           ld sp,$2E31
010B  31 39 39           ld sp,$3939
010E  30 22              jr nc,$0132
0110  0D                 dec c
0111  00                 nop
0112  78                 ld a,b
0113  C2 00 F6           jp nz,$F600
0116  31 39 31           ld sp,$3139
0119  0E 00              ld c,0
011B  00                 nop
011C  BF                 cp a
011D  00                 nop
011E  00                 nop
011F  2C                 inc l
0120  31 33 36           ld sp,$3633
0123  0E 00              ld c,0
0125  00                 nop
0126  88                 adc a,b
0127  00                 nop
0128  00                 nop
0129  3A FC 35           ld a,($35FC)
012C  37                 scf
012D  0E 00              ld c,0
012F  00                 nop
0130  39                 add hl,sp
0131  00                 nop
0132  00                 nop
0133  2C                 inc l
0134  30 0E              jr nc,$0144
0136  00                 nop
0137  00                 nop
0138  00                 nop
0139  00                 nop
013A  00                 nop
013B  3A FC 30           ld a,($30FC)
013E  0E 00              ld c,0
0140  00                 nop
0141  00                 nop
0142  00                 nop
0143  00                 nop
0144  2C                 inc l
0145  2D                 dec l
0146  31 32 39           ld sp,$3932
0149  0E 00              ld c,0
014B  00                 nop
014C  81                 add a,c
014D  00                 nop
014E  00                 nop
014F  3A FC 2D           ld a,($2DFC)
0152  35                 dec (hl)
0153  37                 scf
0154  0E 00              ld c,0
0156  00                 nop
0157  39                 add hl,sp
0158  00                 nop
0159  00                 nop
015A  2C                 inc l
015B  30 0E              jr nc,$016B
015D  00                 nop
015E  00                 nop
015F  00                 nop
0160  00                 nop
0161  00                 nop
0162  3A FC 30           ld a,($30FC)
0165  0E 00              ld c,0
0167  00                 nop
0168  00                 nop
0169  00                 nop
016A  00                 nop
016B  2C                 inc l
016C  31 32 39           ld sp,$3932
016F  0E 00              ld c,0
0171  00                 nop
0172  81                 add a,c
0173  00                 nop
0174  00                 nop
0175  3A F6 37           ld a,($37F6)
0178  0E 00              ld c,0
017A  00                 nop
017B  07                 rlca
017C  00                 nop
017D  00                 nop
017E  2C                 inc l
017F  31 33 36           ld sp,$3633
0182  0E 00              ld c,0
0184  00                 nop
0185  88                 adc a,b
0186  00                 nop
0187  00                 nop
0188  3A FC 31           ld a,($31FC)
018B  37                 scf
018C  37                 scf
018D  0E 00              ld c,0
018F  00                 nop
0190  B1                 or c
0191  00                 nop
0192  00                 nop
0193  2C                 inc l
0194  30 0E              jr nc,$01A4
0196  00                 nop
0197  00                 nop
0198  00                 nop
0199  00                 nop
019A  00                 nop
019B  3A FC 30           ld a,($30FC)
019E  0E 00              ld c,0
01A0  00                 nop
01A1  00                 nop
01A2  00                 nop
01A3  00                 nop
01A4  2C                 inc l
01A5  2D                 dec l
01A6  31 32 39           ld sp,$3932
01A9  0E 00              ld c,0
01AB  00                 nop
01AC  81                 add a,c
01AD  00                 nop
01AE  00                 nop
01AF  3A FC 2D           ld a,($2DFC)
01B2  31 37 37           ld sp,$3737
01B5  0E 00              ld c,0
01B7  00                 nop
01B8  B1                 or c
01B9  00                 nop
01BA  00                 nop
01BB  2C                 inc l
01BC  30 0E              jr nc,$01CC
01BE  00                 nop
01BF  00                 nop
01C0  00                 nop
01C1  00                 nop
01C2  00                 nop
01C3  3A FC 30           ld a,($30FC)
01C6  0E 00              ld c,0
01C8  00                 nop
01C9  00                 nop
01CA  00                 nop
01CB  00                 nop
01CC  2C                 inc l
01CD  31 32 39           ld sp,$3932
01D0  0E 00              ld c,0
01D2  00                 nop
01D3  81                 add a,c
01D4  00                 nop
01D5  00                 nop
01D6  0D                 dec c
01D7  00                 nop
01D8  82                 add a,d
01D9  2A 00 EE           ld hl,($EE00)
01DC  22 22 3A           ld ($3A22),hl
01DF  F5                 push af
01E0  AC                 xor h
01E1  35                 dec (hl)
01E2  0E 00              ld c,0
01E4  00                 nop
01E5  05                 dec b
01E6  00                 nop
01E7  00                 nop
01E8  2C                 inc l
01E9  32 34 0E           ld ($0E34),a
01EC  00                 nop
01ED  00                 nop
01EE  18 00              jr $01F0
01F0  00                 nop
01F1  3B                 dec sp
01F2  DD 31 0E 00        ld sp,$000E
01F6  00                 nop
01F7  01 00 00           ld bc,0
01FA  3B                 dec sp
01FB  22 20 74           ld ($7420),hl
01FE  65                 ld h,l
01FF  73                 ld (hl),e
0200  74                 ld (hl),h
0201  79                 ld a,c
0202  20 22              jr nz,$0226
0204  0D                 dec c
0205  00                 nop
0206  8C                 adc a,h
0207  57                 ld d,a
0208  00                 nop
0209  E5                 push hl
020A  31 30 30           ld sp,$3030
020D  35                 dec (hl)
020E  0E 00              ld c,0
0210  00                 nop
0211  ED 03              ???
0213  00                 nop
0214  3A EB 69           ld a,($69EB)
0217  3D                 dec a
0218  31 0E 00           ld sp,$000E
021B  00                 nop
021C  01 00 00           ld bc,0
021F  CC 37 0E           call z,$0E37
0222  00                 nop
0223  00                 nop
0224  07                 rlca
0225  00                 nop
0226  00                 nop
0227  3A E3 6D           ld a,($6DE3)
022A  24                 inc h
022B  3A F5 AC           ld a,($ACF5)
022E  69                 ld l,c
022F  2A 32 0E           ld hl,($0E32)
0232  00                 nop
0233  00                 nop
0234  02                 ld (bc),a
0235  00                 nop
0236  00                 nop
0237  2B                 dec hl
0238  34                 inc (hl)
0239  0E 00              ld c,0
023B  00                 nop
023C  04                 inc b
023D  00                 nop
023E  00                 nop
023F  2C                 inc l
0240  32 35 0E           ld ($0E35),a
0243  00                 nop
0244  00                 nop
0245  19                 add hl,de
0246  00                 nop
0247  00                 nop
0248  3B                 dec sp
0249  6D                 ld l,l
024A  24                 inc h
024B  28 31              jr z,$027E
024D  0E 00              ld c,0
024F  00                 nop
0250  01 00 00           ld bc,0
0253  CC 34 0E           call z,$0E34
0256  00                 nop
0257  00                 nop
0258  04                 inc b
0259  00                 nop
025A  00                 nop
025B  29                 add hl,hl
025C  3A F3 69           ld a,($69F3)
025F  0D                 dec c
0260  03                 inc bc
0261  E8                 ret pe
0262  0A                 ld a,(bc)
0263  00                 nop
0264  EA 14 01           jp pe,$0114
0267  6D                 ld l,l
0268  65                 ld h,l
0269  6E                 ld l,(hl)
026A  60                 ld h,b
026B  14                 inc d
026C  00                 nop
026D  0D                 dec c
026E  03                 inc bc
026F  ED 63 00 F1        ld ($F100),hl
0273  73                 ld (hl),e
0274  24                 inc h
0275  3D                 dec a
0276  22 20 74           ld ($7420),hl
0279  65                 ld h,l
027A  73                 ld (hl),e
027B  74                 ld (hl),h
027C  20 22              jr nz,$02A0
027E  3A E4 22           ld a,($22E4)
0281  74                 ld (hl),h
0282  77                 ld (hl),a
0283  20 20              jr nz,$02A5
0285  22 2C 22           ld ($222C),hl
0288  67                 ld h,a
0289  72                 ld (hl),d
028A  6F                 ld l,a
028B  6D                 ld l,l
028C  6B                 ld l,e
028D  6F                 ld l,a
028E  67                 ld h,a
028F  6F                 ld l,a
0290  77                 ld (hl),a
0291  2E 22              ld l,34
0293  2C                 inc l
0294  22 70 7A           ld ($7A70),hl
0297  75                 ld (hl),l
0298  20 22              jr nz,$02BC
029A  2C                 inc l
029B  22 6F 7A           ld ($7A6F),hl
029E  75                 ld (hl),l
029F  20 22              jr nz,$02C3
02A1  2C                 inc l
02A2  22 6B 6C           ld ($6C6B),hl
02A5  61                 ld h,c
02A6  77                 ld (hl),a
02A7  69                 ld l,c
02A8  61                 ld h,c
02A9  74                 ld (hl),h
02AA  75                 ld (hl),l
02AB  72                 ld (hl),d
02AC  79                 ld a,c
02AD  22 2C 22           ld ($222C),hl
02B0  6D                 ld l,l
02B1  61                 ld h,c
02B2  67                 ld h,a
02B3  6E                 ld l,(hl)
02B4  69                 ld l,c
02B5  74                 ld (hl),h
02B6  6F                 ld l,a
02B7  66                 ld h,(hl)
02B8  6F                 ld l,a
02B9  6E                 ld l,(hl)
02BA  61                 ld h,c
02BB  22 2C 22           ld ($222C),hl
02BE  64                 ld h,h
02BF  76                 halt
02C0  6F                 ld l,a
02C1  6A                 ld l,d
02C2  73                 ld (hl),e
02C3  74                 ld (hl),h
02C4  69                 ld l,c
02C5  6B                 ld l,e
02C6  61                 ld h,c
02C7  22 3A E5           ld ($E53A),hl
02CA  31 30 30           ld sp,$3030
02CD  35                 dec (hl)
02CE  0E 00              ld c,0
02D0  00                 nop
02D1  ED 03              ???
02D3  00                 nop
02D4  0D                 dec c
02D5  03                 inc bc
02D6  F2 B5 00           jp p,$00B5
02D9  F5                 push af
02DA  AC                 xor h
02DB  35                 dec (hl)
02DC  0E 00              ld c,0
02DE  00                 nop
02DF  05                 dec b
02E0  00                 nop
02E1  00                 nop
02E2  2C                 inc l
02E3  31 0E 00           ld sp,$000E
02E6  00                 nop
02E7  01 00 00           ld bc,0
02EA  3B                 dec sp
02EB  DD 31 0E 00        ld sp,$000E
02EF  00                 nop
02F0  01 00 00           ld bc,0
02F3  3B                 dec sp
02F4  22 20 20           ld ($2020),hl
02F7  20 20              jr nz,$0319
02F9  20 20              jr nz,$031B
02FB  20 6D              jr nz,$036A
02FD  20 65              jr nz,$0364
02FF  20 6E              jr nz,$036F
0301  20 60              jr nz,$0363
0303  20 20              jr nz,$0325
0305  20 20              jr nz,$0327
0307  20 20              jr nz,$0329
0309  20 20              jr nz,$032B
030B  22 3A ED           ld ($ED3A),hl
030E  39                 add hl,sp
030F  30 30              jr nc,$0341
0311  30 0E              jr nc,$0321
0313  00                 nop
0314  00                 nop
0315  28 23              jr z,$033A
0317  00                 nop
0318  3A EB 69           ld a,($69EB)
031B  3D                 dec a
031C  31 0E 00           ld sp,$000E
031F  00                 nop
0320  01 00 00           ld bc,0
0323  CC 37 0E           call z,$0E37
0326  00                 nop
0327  00                 nop
0328  07                 rlca
0329  00                 nop
032A  00                 nop
032B  3A E3 6D           ld a,($6DE3)
032E  24                 inc h
032F  3A F5 AC           ld a,($ACF5)
0332  69                 ld l,c
0333  2A 32 0E           ld hl,($0E32)
0336  00                 nop
0337  00                 nop
0338  02                 ld (bc),a
0339  00                 nop
033A  00                 nop
033B  2B                 dec hl
033C  34                 inc (hl)
033D  0E 00              ld c,0
033F  00                 nop
0340  04                 inc b
0341  00                 nop
0342  00                 nop
0343  2C                 inc l
0344  32 0E 00           ld ($000E),a
0347  00                 nop
0348  02                 ld (bc),a
0349  00                 nop
034A  00                 nop
034B  3B                 dec sp
034C  DD 31 0E 00        ld sp,$000E
0350  00                 nop
0351  01 00 00           ld bc,0
0354  3B                 dec sp
0355  69                 ld l,c
0356  3B                 dec sp
0357  DD 30 0E           jr nc,$0368
035A  00                 nop
035B  00                 nop
035C  00                 nop
035D  00                 nop
035E  00                 nop
035F  3B                 dec sp
0360  73                 ld (hl),e
0361  24                 inc h
0362  3B                 dec sp
0363  6D                 ld l,l
0364  24                 inc h
0365  3A F3 69           ld a,($69F3)
0368  3A F5 AC           ld a,($ACF5)
036B  32 30 0E           ld ($0E30),a
036E  00                 nop
036F  00                 nop
0370  14                 inc d
0371  00                 nop
0372  00                 nop
0373  2C                 inc l
0374  32 0E 00           ld ($000E),a
0377  00                 nop
0378  02                 ld (bc),a
0379  00                 nop
037A  00                 nop
037B  3B                 dec sp
037C  22 14 01           ld ($0114),hl
037F  38 14              jr c,$0395
0381  00                 nop
0382  20 77              jr nz,$03FB
0384  73                 ld (hl),e
0385  65                 ld h,l
0386  20 74              jr nz,$03FC
0388  65                 ld h,l
0389  73                 ld (hl),e
038A  74                 ld (hl),h
038B  79                 ld a,c
038C  22 0D 03           ld ($030D),hl
038F  FC 0F 00           call m,$000F
0392  F2 30 0E           jp p,$0E30
0395  00                 nop
0396  00                 nop
0397  00                 nop
0398  00                 nop
0399  00                 nop
039A  3A F1 63           ld a,($63F1)
039D  24                 inc h
039E  3D                 dec a
039F  A6                 and (hl)
03A0  0D                 dec c
03A1  04                 inc b
03A2  06 1B              ld b,27
03A4  00                 nop
03A5  FA 63 24           jp m,$2463
03A8  3C                 inc a
03A9  22 31 22           ld ($2231),hl
03AC  C5                 push bc
03AD  63                 ld h,e
03AE  24                 inc h
03AF  3E 22              ld a,34
03B1  38 22              jr c,$03D5
03B3  CB EC              set 5,h
03B5  31 30 32           ld sp,$3230
03B8  30 0E              jr nc,$03C8
03BA  00                 nop
03BB  00                 nop
03BC  FC 03 00           call m,$0003
03BF  0D                 dec c
03C0  04                 inc b
03C1  0B                 dec bc
03C2  26 00              ld h,0
03C4  F5                 push af
03C5  AC                 xor h
03C6  35                 dec (hl)
03C7  0E 00              ld c,0
03C9  00                 nop
03CA  05                 dec b
03CB  00                 nop
03CC  00                 nop
03CD  2C                 inc l
03CE  32 34 0E           ld ($0E34),a
03D1  00                 nop
03D2  00                 nop
03D3  18 00              jr $03D5
03D5  00                 nop
03D6  3B                 dec sp
03D7  DD 31 0E 00        ld sp,$000E
03DB  00                 nop
03DC  01 00 00           ld bc,0
03DF  3B                 dec sp
03E0  22 20 74           ld ($7420),hl
03E3  65                 ld h,l
03E4  73                 ld (hl),e
03E5  74                 ld (hl),h
03E6  79                 ld a,c
03E7  20 22              jr nz,$040B
03E9  0D                 dec c
03EA  04                 inc b
03EB  10 14              djnz $0401
03ED  00                 nop
03EE  FA 63 24           jp m,$2463
03F1  3D                 dec a
03F2  22 38 22           ld ($2238),hl
03F5  CB EC              set 5,h
03F7  31 31 30           ld sp,$3031
03FA  30 0E              jr nc,$040A
03FC  00                 nop
03FD  00                 nop
03FE  4C                 ld c,h
03FF  04                 inc b
0400  00                 nop
0401  0D                 dec c
0402  04                 inc b
0403  1A                 ld a,(de)
0404  36 00              ld (hl),0
0406  ED 28              bsla de,b
0408  28 B0              jr z,$03BA
040A  28 63              jr z,$046F
040C  24                 inc h
040D  29                 add hl,hl
040E  2B                 dec hl
040F  31 0E 00           ld sp,$000E
0412  00                 nop
0413  01 00 00           ld bc,0
0416  29                 add hl,hl
0417  2A 31 30           ld hl,($3031)
041A  30 30              jr nc,$044C
041C  0E 00              ld c,0
041E  00                 nop
041F  E8                 ret pe
0420  03                 inc bc
0421  00                 nop
0422  29                 add hl,hl
0423  3A ED 39           ld a,($39ED)
0426  32 30 30           ld ($3030),a
0429  0E 00              ld c,0
042B  00                 nop
042C  F0                 ret p
042D  23                 inc hl
042E  00                 nop
042F  3A EC 31           ld a,($31EC)
0432  30 30              jr nc,$0464
0434  30 0E              jr nc,$0444
0436  00                 nop
0437  00                 nop
0438  E8                 ret pe
0439  03                 inc bc
043A  00                 nop
043B  0D                 dec c
043C  04                 inc b
043D  4C                 ld c,h
043E  33                 inc sp
043F  00                 nop
0440  F5                 push af
0441  AC                 xor h
0442  35                 dec (hl)
0443  0E 00              ld c,0
0445  00                 nop
0446  05                 dec b
0447  00                 nop
0448  00                 nop
0449  2C                 inc l
044A  32 34 0E           ld ($0E34),a
044D  00                 nop
044E  00                 nop
044F  18 00              jr $0451
0451  00                 nop
0452  3B                 dec sp
0453  DD 31 0E 00        ld sp,$000E
0457  00                 nop
0458  01 00 00           ld bc,0
045B  3B                 dec sp
045C  22 20 74           ld ($7420),hl
045F  65                 ld h,l
0460  73                 ld (hl),e
0461  74                 ld (hl),h
0462  79                 ld a,c
0463  20 22              jr nz,$0487
0465  3A F1 65           ld a,($65F1)
0468  72                 ld (hl),d
0469  72                 ld (hl),d
046A  3D                 dec a
046B  30 0E              jr nc,$047B
046D  00                 nop
046E  00                 nop
046F  00                 nop
0470  00                 nop
0471  00                 nop
0472  0D                 dec c
0473  04                 inc b
0474  51                 ld d,c
0475  57                 ld d,a
0476  00                 nop
0477  E5                 push hl
0478  31 30 30           ld sp,$3030
047B  35                 dec (hl)
047C  0E 00              ld c,0
047E  00                 nop
047F  ED 03              ???
0481  00                 nop
0482  3A EB 69           ld a,($69EB)
0485  3D                 dec a
0486  31 0E 00           ld sp,$000E
0489  00                 nop
048A  01 00 00           ld bc,0
048D  CC 37 0E           call z,$0E37
0490  00                 nop
0491  00                 nop
0492  07                 rlca
0493  00                 nop
0494  00                 nop
0495  3A E3 6D           ld a,($6DE3)
0498  24                 inc h
0499  3A F5 AC           ld a,($ACF5)
049C  69                 ld l,c
049D  2A 32 0E           ld hl,($0E32)
04A0  00                 nop
04A1  00                 nop
04A2  02                 ld (bc),a
04A3  00                 nop
04A4  00                 nop
04A5  2B                 dec hl
04A6  34                 inc (hl)
04A7  0E 00              ld c,0
04A9  00                 nop
04AA  04                 inc b
04AB  00                 nop
04AC  00                 nop
04AD  2C                 inc l
04AE  32 35 0E           ld ($0E35),a
04B1  00                 nop
04B2  00                 nop
04B3  19                 add hl,de
04B4  00                 nop
04B5  00                 nop
04B6  3B                 dec sp
04B7  6D                 ld l,l
04B8  24                 inc h
04B9  28 31              jr z,$04EC
04BB  0E 00              ld c,0
04BD  00                 nop
04BE  01 00 00           ld bc,0
04C1  CC 34 0E           call z,$0E34
04C4  00                 nop
04C5  00                 nop
04C6  04                 inc b
04C7  00                 nop
04C8  00                 nop
04C9  29                 add hl,hl
04CA  3A F3 69           ld a,($69F3)
04CD  0D                 dec c
04CE  04                 inc b
04CF  56                 ld d,(hl)
04D0  A8                 xor b
04D1  00                 nop
04D2  ED 32              add de,a
04D4  30 30              jr nc,$0506
04D6  30 0E              jr nc,$04E6
04D8  00                 nop
04D9  00                 nop
04DA  D0                 ret nc
04DB  07                 rlca
04DC  00                 nop
04DD  3A F1 65           ld a,($65F1)
04E0  72                 ld (hl),d
04E1  72                 ld (hl),d
04E2  3D                 dec a
04E3  65                 ld h,l
04E4  72                 ld (hl),d
04E5  72                 ld (hl),d
04E6  C5                 push bc
04E7  65                 ld h,l
04E8  72                 ld (hl),d
04E9  3A ED 33           ld a,($33ED)
04EC  30 30              jr nc,$051E
04EE  30 0E              jr nc,$04FE
04F0  00                 nop
04F1  00                 nop
04F2  B8                 cp b
04F3  0B                 dec bc
04F4  00                 nop
04F5  3A F1 65           ld a,($65F1)
04F8  72                 ld (hl),d
04F9  72                 ld (hl),d
04FA  3D                 dec a
04FB  65                 ld h,l
04FC  72                 ld (hl),d
04FD  72                 ld (hl),d
04FE  C5                 push bc
04FF  65                 ld h,l
0500  72                 ld (hl),d
0501  3A ED 34           ld a,($34ED)
0504  30 30              jr nc,$0536
0506  30 0E              jr nc,$0516
0508  00                 nop
0509  00                 nop
050A  A0                 and b
050B  0F                 rrca
050C  00                 nop
050D  3A F1 65           ld a,($65F1)
0510  72                 ld (hl),d
0511  72                 ld (hl),d
0512  3D                 dec a
0513  65                 ld h,l
0514  72                 ld (hl),d
0515  72                 ld (hl),d
0516  C5                 push bc
0517  65                 ld h,l
0518  72                 ld (hl),d
0519  3A ED 35           ld a,($35ED)
051C  30 30              jr nc,$054E
051E  30 0E              jr nc,$052E
0520  00                 nop
0521  00                 nop
0522  88                 adc a,b
0523  13                 inc de
0524  00                 nop
0525  3A F1 65           ld a,($65F1)
0528  72                 ld (hl),d
0529  72                 ld (hl),d
052A  3D                 dec a
052B  65                 ld h,l
052C  72                 ld (hl),d
052D  72                 ld (hl),d
052E  C5                 push bc
052F  65                 ld h,l
0530  72                 ld (hl),d
0531  3A ED 36           ld a,($36ED)
0534  30 30              jr nc,$0566
0536  30 0E              jr nc,$0546
0538  00                 nop
0539  00                 nop
053A  70                 ld (hl),b
053B  17                 rla
053C  00                 nop
053D  3A F1 65           ld a,($65F1)
0540  72                 ld (hl),d
0541  72                 ld (hl),d
0542  3D                 dec a
0543  65                 ld h,l
0544  72                 ld (hl),d
0545  72                 ld (hl),d
0546  C5                 push bc
0547  65                 ld h,l
0548  72                 ld (hl),d
0549  3A ED 37           ld a,($37ED)
054C  30 30              jr nc,$057E
054E  30 0E              jr nc,$055E
0550  00                 nop
0551  00                 nop
0552  58                 ld e,b
0553  1B                 dec de
0554  00                 nop
0555  3A F1 65           ld a,($65F1)
0558  72                 ld (hl),d
0559  72                 ld (hl),d
055A  3D                 dec a
055B  65                 ld h,l
055C  72                 ld (hl),d
055D  72                 ld (hl),d
055E  C5                 push bc
055F  65                 ld h,l
0560  72                 ld (hl),d
0561  3A ED 38           ld a,($38ED)
0564  30 30              jr nc,$0596
0566  30 0E              jr nc,$0576
0568  00                 nop
0569  00                 nop
056A  40                 ld b,b
056B  1F                 rra
056C  00                 nop
056D  3A F1 65           ld a,($65F1)
0570  72                 ld (hl),d
0571  72                 ld (hl),d
0572  3D                 dec a
0573  65                 ld h,l
0574  72                 ld (hl),d
0575  72                 ld (hl),d
0576  C5                 push bc
0577  65                 ld h,l
0578  72                 ld (hl),d
0579  0D                 dec c
057A  04                 inc b
057B  60                 ld h,b
057C  6C                 ld l,h
057D  00                 nop
057E  F5                 push af
057F  DA 28 28           jp c,$2828
0582  32 0E 00           ld ($000E),a
0585  00                 nop
0586  02                 ld (bc),a
0587  00                 nop
0588  00                 nop
0589  2D                 dec l
058A  65                 ld h,l
058B  72                 ld (hl),d
058C  72                 ld (hl),d
058D  29                 add hl,hl
058E  2A 32 0E           ld hl,($0E32)
0591  00                 nop
0592  00                 nop
0593  02                 ld (bc),a
0594  00                 nop
0595  00                 nop
0596  29                 add hl,hl
0597  3B                 dec sp
0598  AC                 xor h
0599  35                 dec (hl)
059A  0E 00              ld c,0
059C  00                 nop
059D  05                 dec b
059E  00                 nop
059F  00                 nop
05A0  2C                 inc l
05A1  31 0E 00           ld sp,$000E
05A4  00                 nop
05A5  01 00 00           ld bc,0
05A8  3B                 dec sp
05A9  22 20 20           ld ($2020),hl
05AC  20 20              jr nz,$05CE
05AE  20 20              jr nz,$05D0
05B0  77                 ld (hl),a
05B1  73                 ld (hl),e
05B2  65                 ld h,l
05B3  20 74              jr nz,$0629
05B5  65                 ld h,l
05B6  73                 ld (hl),e
05B7  74                 ld (hl),h
05B8  79                 ld a,c
05B9  20 20              jr nz,$05DB
05BB  20 20              jr nz,$05DD
05BD  20 20              jr nz,$05DF
05BF  20 22              jr nz,$05E3
05C1  3B                 dec sp
05C2  AC                 xor h
05C3  35                 dec (hl)
05C4  0E 00              ld c,0
05C6  00                 nop
05C7  05                 dec b
05C8  00                 nop
05C9  00                 nop
05CA  2C                 inc l
05CB  32 34 0E           ld ($0E34),a
05CE  00                 nop
05CF  00                 nop
05D0  18 00              jr $05D2
05D2  00                 nop
05D3  3B                 dec sp
05D4  22 20 74           ld ($7420),hl
05D7  65                 ld h,l
05D8  73                 ld (hl),e
05D9  74                 ld (hl),h
05DA  79                 ld a,c
05DB  20 22              jr nz,$05FF
05DD  3A ED 39           ld a,($39ED)
05E0  30 30              jr nc,$0612
05E2  30 0E              jr nc,$05F2
05E4  00                 nop
05E5  00                 nop
05E6  28 23              jr z,$060B
05E8  00                 nop
05E9  0D                 dec c
05EA  04                 inc b
05EB  6A                 ld l,d
05EC  90                 sub b
05ED  00                 nop
05EE  FA C3 65           jp m,$65C3
05F1  72                 ld (hl),d
05F2  72                 ld (hl),d
05F3  CB F5              set 6,l
05F5  AC                 xor h
05F6  31 31 0E           ld sp,$0E31
05F9  00                 nop
05FA  00                 nop
05FB  0B                 dec bc
05FC  00                 nop
05FD  00                 nop
05FE  2C                 inc l
05FF  33                 inc sp
0600  0E 00              ld c,0
0602  00                 nop
0603  03                 inc bc
0604  00                 nop
0605  00                 nop
0606  3B                 dec sp
0607  22 77 73           ld ($7377),hl
060A  65                 ld h,l
060B  20 74              jr nz,$0681
060D  65                 ld h,l
060E  73                 ld (hl),e
060F  74                 ld (hl),h
0610  79                 ld a,c
0611  22 3B AC           ld ($AC3B),hl
0614  31 32 0E           ld sp,$0E32
0617  00                 nop
0618  00                 nop
0619  0C                 inc c
061A  00                 nop
061B  00                 nop
061C  2C                 inc l
061D  33                 inc sp
061E  0E 00              ld c,0
0620  00                 nop
0621  03                 inc bc
0622  00                 nop
0623  00                 nop
0624  3B                 dec sp
0625  22 70 72           ld ($7270),hl
0628  6F                 ld l,a
0629  7B                 ld a,e
062A  6C                 ld l,h
062B  69                 ld l,c
062C  2E 22              ld l,34
062E  3B                 dec sp
062F  AC                 xor h
0630  31 33 0E           ld sp,$0E33
0633  00                 nop
0634  00                 nop
0635  0D                 dec c
0636  00                 nop
0637  00                 nop
0638  2C                 inc l
0639  33                 inc sp
063A  0E 00              ld c,0
063C  00                 nop
063D  03                 inc bc
063E  00                 nop
063F  00                 nop
0640  3B                 dec sp
0641  22 70 62           ld ($6270),hl
0644  6B                 ld l,e
0645  20 22              jr nz,$0669
0647  22 7C 72           ld ($727C),hl
064A  75                 ld (hl),l
064B  64                 ld h,h
064C  69                 ld l,c
064D  74                 ld (hl),h
064E  2D                 dec l
064F  30 30              jr nc,$0681
0651  32 20 22           ld ($2220),a
0654  22 22 3B           ld ($3B22),hl
0657  AC                 xor h
0658  31 34 0E           ld sp,$0E34
065B  00                 nop
065C  00                 nop
065D  0E 00              ld c,0
065F  00                 nop
0660  2C                 inc l
0661  33                 inc sp
0662  0E 00              ld c,0
0664  00                 nop
0665  03                 inc bc
0666  00                 nop
0667  00                 nop
0668  3B                 dec sp
0669  22 67 6F           ld ($6F67),hl
066C  64                 ld h,h
066D  65                 ld h,l
066E  6E                 ld l,(hl)
066F  21 22 3A           ld hl,$3A22
0672  EC 31 31           call pe,$3131
0675  35                 dec (hl)
0676  30 0E              jr nc,$0686
0678  00                 nop
0679  00                 nop
067A  7E                 ld a,(hl)
067B  04                 inc b
067C  00                 nop
067D  0D                 dec c
067E  04                 inc b
067F  74                 ld (hl),h
0680  83                 add a,e
0681  00                 nop
0682  F5                 push af
0683  AC                 xor h
0684  31 31 0E           ld sp,$0E31
0687  00                 nop
0688  00                 nop
0689  0B                 dec bc
068A  00                 nop
068B  00                 nop
068C  2C                 inc l
068D  33                 inc sp
068E  0E 00              ld c,0
0690  00                 nop
0691  03                 inc bc
0692  00                 nop
0693  00                 nop
0694  3B                 dec sp
0695  22 6E 65           ld ($656E),hl
0698  20 77              jr nz,$0711
069A  73                 ld (hl),e
069B  65                 ld h,l
069C  20 74              jr nz,$0712
069E  65                 ld h,l
069F  73                 ld (hl),e
06A0  74                 ld (hl),h
06A1  79                 ld a,c
06A2  22 3B AC           ld ($AC3B),hl
06A5  31 32 0E           ld sp,$0E32
06A8  00                 nop
06A9  00                 nop
06AA  0C                 inc c
06AB  00                 nop
06AC  00                 nop
06AD  2C                 inc l
06AE  33                 inc sp
06AF  0E 00              ld c,0
06B1  00                 nop
06B2  03                 inc bc
06B3  00                 nop
06B4  00                 nop
06B5  3B                 dec sp
06B6  22 70 72           ld ($7270),hl
06B9  6F                 ld l,a
06BA  7B                 ld a,e
06BB  6C                 ld l,h
06BC  69                 ld l,c
06BD  2E 22              ld l,34
06BF  3B                 dec sp
06C0  AC                 xor h
06C1  31 33 0E           ld sp,$0E33
06C4  00                 nop
06C5  00                 nop
06C6  0D                 dec c
06C7  00                 nop
06C8  00                 nop
06C9  2C                 inc l
06CA  33                 inc sp
06CB  0E 00              ld c,0
06CD  00                 nop
06CE  03                 inc bc
06CF  00                 nop
06D0  00                 nop
06D1  3B                 dec sp
06D2  22 70 62           ld ($6270),hl
06D5  6B                 ld l,e
06D6  20 22              jr nz,$06FA
06D8  22 7C 72           ld ($727C),hl
06DB  75                 ld (hl),l
06DC  64                 ld h,h
06DD  69                 ld l,c
06DE  74                 ld (hl),h
06DF  2D                 dec l
06E0  30 30              jr nc,$0712
06E2  32 20 22           ld ($2220),a
06E5  22 22 3B           ld ($3B22),hl
06E8  AC                 xor h
06E9  31 34 0E           ld sp,$0E34
06EC  00                 nop
06ED  00                 nop
06EE  0E 00              ld c,0
06F0  00                 nop
06F1  2C                 inc l
06F2  33                 inc sp
06F3  0E 00              ld c,0
06F5  00                 nop
06F6  03                 inc bc
06F7  00                 nop
06F8  00                 nop
06F9  3B                 dec sp
06FA  22 6E 65           ld ($656E),hl
06FD  67                 ld h,a
06FE  6F                 ld l,a
06FF  64                 ld h,h
0700  65                 ld h,l
0701  6E                 ld l,(hl)
0702  21 22 0D           ld hl,$0D22
0705  04                 inc b
0706  7E                 ld a,(hl)
0707  18 00              jr $0709
0709  ED 39              ???
070B  32 30 30           ld ($3030),a
070E  0E 00              ld c,0
0710  00                 nop
0711  F0                 ret p
0712  23                 inc hl
0713  00                 nop
0714  3A EC 31           ld a,($31EC)
0717  30 30              jr nc,$0749
0719  30 0E              jr nc,$0729
071B  00                 nop
071C  00                 nop
071D  E8                 ret pe
071E  03                 inc bc
071F  00                 nop
0720  0D                 dec c
0721  07                 rlca
0722  D0                 ret nc
0723  10 00              djnz $0725
0725  EA 14 01           jp pe,$0114
0728  54                 ld d,h
0729  65                 ld h,l
072A  6C                 ld l,h
072B  65                 ld h,l
072C  74                 ld (hl),h
072D  65                 ld h,l
072E  73                 ld (hl),e
072F  74                 ld (hl),h
0730  14                 inc d
0731  00                 nop
0732  14                 inc d
0733  00                 nop
0734  0D                 dec c
0735  07                 rlca
0736  DA 80 00           jp c,$0080
0739  F5                 push af
073A  AC                 xor h
073B  35                 dec (hl)
073C  0E 00              ld c,0
073E  00                 nop
073F  05                 dec b
0740  00                 nop
0741  00                 nop
0742  2C                 inc l
0743  31 0E 00           ld sp,$000E
0746  00                 nop
0747  01 00 00           ld bc,0
074A  3B                 dec sp
074B  DD 31 0E 00        ld sp,$000E
074F  00                 nop
0750  01 00 00           ld bc,0
0753  3B                 dec sp
0754  22 20 20           ld ($2020),hl
0757  20 20              jr nz,$0779
0759  20 20              jr nz,$077B
075B  20 20              jr nz,$077D
075D  20 74              jr nz,$07D3
075F  20 77              jr nz,$07D8
0761  20 20              jr nz,$0783
0763  20 20              jr nz,$0785
0765  20 20              jr nz,$0787
0767  20 20              jr nz,$0789
0769  20 20              jr nz,$078B
076B  22 3B AC           ld ($AC3B),hl
076E  36 0E              ld (hl),14
0770  00                 nop
0771  00                 nop
0772  06 00              ld b,0
0774  00                 nop
0775  2C                 inc l
0776  32 35 0E           ld ($0E35),a
0779  00                 nop
077A  00                 nop
077B  19                 add hl,de
077C  00                 nop
077D  00                 nop
077E  3B                 dec sp
077F  DD 30 0E           jr nc,$0790
0782  00                 nop
0783  00                 nop
0784  00                 nop
0785  00                 nop
0786  00                 nop
0787  3B                 dec sp
0788  22 74 77           ld ($7774),hl
078B  22 3A ED           ld ($ED3A),hl
078E  39                 add hl,sp
078F  30 30              jr nc,$07C1
0791  30 0E              jr nc,$07A1
0793  00                 nop
0794  00                 nop
0795  28 23              jr z,$07BA
0797  00                 nop
0798  3A F1 65           ld a,($65F1)
079B  72                 ld (hl),d
079C  3D                 dec a
079D  30 0E              jr nc,$07AD
079F  00                 nop
07A0  00                 nop
07A1  00                 nop
07A2  00                 nop
07A3  00                 nop
07A4  3A F1 62           ld a,($62F1)
07A7  24                 inc h
07A8  3D                 dec a
07A9  22 73 77           ld ($7773),hl
07AC  65                 ld h,l
07AD  74                 ld (hl),h
07AE  6C                 ld l,h
07AF  6F                 ld l,a
07B0  22 3A F1           ld ($F13A),hl
07B3  6C                 ld l,h
07B4  24                 inc h
07B5  3D                 dec a
07B6  22 22 0D           ld ($0D22),hl
07B9  07                 rlca
07BA  EE E6              xor $E6
07BC  00                 nop
07BD  E3                 ex (sp),hl
07BE  6D                 ld l,l
07BF  24                 inc h
07C0  3A F1 78           ld a,($78F1)
07C3  3D                 dec a
07C4  32 30 0E           ld ($0E30),a
07C7  00                 nop
07C8  00                 nop
07C9  14                 inc d
07CA  00                 nop
07CB  00                 nop
07CC  3A F1 79           ld a,($79F1)
07CF  3D                 dec a
07D0  33                 inc sp
07D1  0E 00              ld c,0
07D3  00                 nop
07D4  03                 inc bc
07D5  00                 nop
07D6  00                 nop
07D7  3A F1 69           ld a,($69F1)
07DA  3D                 dec a
07DB  30 0E              jr nc,$07EB
07DD  00                 nop
07DE  00                 nop
07DF  00                 nop
07E0  00                 nop
07E1  00                 nop
07E2  3A F1 66           ld a,($66F1)
07E5  3D                 dec a
07E6  30 0E              jr nc,$07F6
07E8  00                 nop
07E9  00                 nop
07EA  00                 nop
07EB  00                 nop
07EC  00                 nop
07ED  3A ED 32           ld a,($32ED)
07F0  37                 scf
07F1  30 30              jr nc,$0823
07F3  0E 00              ld c,0
07F5  00                 nop
07F6  8C                 adc a,h
07F7  0A                 ld a,(bc)
07F8  00                 nop
07F9  3A EB 69           ld a,($69EB)
07FC  3D                 dec a
07FD  31 0E 00           ld sp,$000E
0800  00                 nop
0801  01 00 00           ld bc,0
0804  CC 37 0E           call z,$0E37
0807  00                 nop
0808  00                 nop
0809  07                 rlca
080A  00                 nop
080B  00                 nop
080C  3A E3 6D           ld a,($6DE3)
080F  24                 inc h
0810  3A F1 6C           ld a,($6CF1)
0813  24                 inc h
0814  3D                 dec a
0815  22 22 3A           ld ($3A22),hl
0818  F1                 pop af
0819  78                 ld a,b
081A  3D                 dec a
081B  78                 ld a,b
081C  2D                 dec l
081D  31 0E 00           ld sp,$000E
0820  00                 nop
0821  01 00 00           ld bc,0
0824  3A F1 79           ld a,($79F1)
0827  3D                 dec a
0828  33                 inc sp
0829  0E 00              ld c,0
082B  00                 nop
082C  03                 inc bc
082D  00                 nop
082E  00                 nop
082F  3A F1 66           ld a,($66F1)
0832  3D                 dec a
0833  30 0E              jr nc,$0843
0835  00                 nop
0836  00                 nop
0837  00                 nop
0838  00                 nop
0839  00                 nop
083A  3A ED 32           ld a,($32ED)
083D  37                 scf
083E  30 30              jr nc,$0870
0840  0E 00              ld c,0
0842  00                 nop
0843  8C                 adc a,h
0844  0A                 ld a,(bc)
0845  00                 nop
0846  3A F1 6C           ld a,($6CF1)
0849  24                 inc h
084A  3D                 dec a
084B  62                 ld h,d
084C  24                 inc h
084D  3A F1 78           ld a,($78F1)
0850  3D                 dec a
0851  78                 ld a,b
0852  2D                 dec l
0853  31 0E 00           ld sp,$000E
0856  00                 nop
0857  01 00 00           ld bc,0
085A  3A F1 79           ld a,($79F1)
085D  3D                 dec a
085E  31 30 0E           ld sp,$0E30
0861  00                 nop
0862  00                 nop
0863  0A                 ld a,(bc)
0864  00                 nop
0865  00                 nop
0866  3A F1 66           ld a,($66F1)
0869  3D                 dec a
086A  31 0E 00           ld sp,$000E
086D  00                 nop
086E  01 00 00           ld bc,0
0871  3A ED 32           ld a,($32ED)
0874  37                 scf
0875  30 30              jr nc,$08A7
0877  0E 00              ld c,0
0879  00                 nop
087A  8C                 adc a,h
087B  0A                 ld a,(bc)
087C  00                 nop
087D  3A F3 69           ld a,($69F3)
0880  3A E3 6D           ld a,($6DE3)
0883  24                 inc h
0884  3A F1 6C           ld a,($6CF1)
0887  24                 inc h
0888  3D                 dec a
0889  22 22 3A           ld ($3A22),hl
088C  F1                 pop af
088D  79                 ld a,c
088E  3D                 dec a
088F  33                 inc sp
0890  0E 00              ld c,0
0892  00                 nop
0893  03                 inc bc
0894  00                 nop
0895  00                 nop
0896  3A ED 32           ld a,($32ED)
0899  37                 scf
089A  30 30              jr nc,$08CC
089C  0E 00              ld c,0
089E  00                 nop
089F  8C                 adc a,h
08A0  0A                 ld a,(bc)
08A1  00                 nop
08A2  0D                 dec c
08A3  08                 ex af,af'
08A4  16 3E              ld d,62
08A6  00                 nop
08A7  ED 32              add de,a
08A9  36 35              ld (hl),53
08AB  30 0E              jr nc,$08BB
08AD  00                 nop
08AE  00                 nop
08AF  5A                 ld e,d
08B0  0A                 ld a,(bc)
08B1  00                 nop
08B2  3A ED 39           ld a,($39ED)
08B5  30 30              jr nc,$08E7
08B7  30 0E              jr nc,$08C7
08B9  00                 nop
08BA  00                 nop
08BB  28 23              jr z,$08E0
08BD  00                 nop
08BE  3A F5 AC           ld a,($ACF5)
08C1  31 33 0E           ld sp,$0E33
08C4  00                 nop
08C5  00                 nop
08C6  0D                 dec c
08C7  00                 nop
08C8  00                 nop
08C9  2C                 inc l
08CA  38 0E              jr c,$08DA
08CC  00                 nop
08CD  00                 nop
08CE  08                 ex af,af'
08CF  00                 nop
08D0  00                 nop
08D1  3B                 dec sp
08D2  DB 31              in a,($31)
08D4  0E 00              ld c,0
08D6  00                 nop
08D7  01 00 00           ld bc,0
08DA  3B                 dec sp
08DB  22 6D 69           ld ($696D),hl
08DE  67                 ld h,a
08DF  61                 ld h,c
08E0  65                 ld h,l
08E1  74                 ld (hl),h
08E2  3F                 ccf
08E3  22 0D 08           ld ($080D),hl
08E6  20 31              jr nz,$0919
08E8  00                 nop
08E9  F5                 push af
08EA  23                 inc hl
08EB  30 0E              jr nc,$08FB
08ED  00                 nop
08EE  00                 nop
08EF  00                 nop
08F0  00                 nop
08F1  00                 nop
08F2  3B                 dec sp
08F3  22 20 14           ld ($1420),hl
08F6  01 64 14           ld bc,$1464
08F9  00                 nop
08FA  20 64              jr nz,$0960
08FC  61                 ld h,c
08FD  2C                 inc l
08FE  20 14              jr nz,$0914
0900  00                 nop
0901  14                 inc d
0902  01 6E 14           ld bc,$146E
0905  00                 nop
0906  20 6E              jr nz,$0976
0908  65                 ld h,l
0909  74                 ld (hl),h
090A  22 3A ED           ld ($ED3A),hl
090D  32 36 36           ld ($3636),a
0910  30 14              jr nc,$0926
0912  00                 nop
0913  0E 00              ld c,0
0915  00                 nop
0916  64                 ld h,h
0917  0A                 ld a,(bc)
0918  00                 nop
0919  0D                 dec c
091A  08                 ex af,af'
091B  34                 inc (hl)
091C  56                 ld d,(hl)
091D  00                 nop
091E  E4 22 7E           call po,$7E22
0921  5B                 ld e,e
0922  72                 ld (hl),d
0923  6E                 ld l,(hl)
0924  79                 ld a,c
0925  6A                 ld l,d
0926  22 2C 22           ld ($222C),hl
0929  73                 ld (hl),e
092A  69                 ld l,c
092B  6E                 ld l,(hl)
092C  69                 ld l,c
092D  6A                 ld l,d
092E  22 2C 22           ld ($222C),hl
0931  6B                 ld l,e
0932  72                 ld (hl),d
0933  61                 ld h,c
0934  73                 ld (hl),e
0935  6E                 ld l,(hl)
0936  79                 ld a,c
0937  6A                 ld l,d
0938  22 2C 22           ld ($222C),hl
093B  70                 ld (hl),b
093C  75                 ld (hl),l
093D  72                 ld (hl),d
093E  70                 ld (hl),b
093F  75                 ld (hl),l
0940  70                 ld (hl),b
0941  72                 ld (hl),d
0942  6E                 ld l,(hl)
0943  79                 ld a,c
0944  6A                 ld l,d
0945  22 2C 22           ld ($222C),hl
0948  7A                 ld a,d
0949  65                 ld h,l
094A  6C                 ld l,h
094B  5B                 ld e,e
094C  6E                 ld l,(hl)
094D  79                 ld a,c
094E  6A                 ld l,d
094F  22 2C 22           ld ($222C),hl
0952  67                 ld h,a
0953  6F                 ld l,a
0954  6C                 ld l,h
0955  75                 ld (hl),l
0956  62                 ld h,d
0957  6F                 ld l,a
0958  6A                 ld l,d
0959  22 2C 22           ld ($222C),hl
095C  76                 halt
095D  5B                 ld e,e
095E  6C                 ld l,h
095F  74                 ld (hl),h
0960  79                 ld a,c
0961  6A                 ld l,d
0962  22 2C 22           ld ($222C),hl
0965  73                 ld (hl),e
0966  65                 ld h,l
0967  72                 ld (hl),d
0968  79                 ld a,c
0969  6A                 ld l,d
096A  22 2C 22           ld ($222C),hl
096D  62                 ld h,d
096E  65                 ld h,l
096F  6C                 ld l,h
0970  79                 ld a,c
0971  6A                 ld l,d
0972  22 0D 08           ld ($080D),hl
0975  3E 2F              ld a,47
0977  00                 nop
0978  E5                 push hl
0979  32 31 30           ld ($3031),a
097C  30 0E              jr nc,$098C
097E  00                 nop
097F  00                 nop
0980  34                 inc (hl)
0981  08                 ex af,af'
0982  00                 nop
0983  3A F5 AC           ld a,($ACF5)
0986  31 30 0E           ld sp,$0E30
0989  00                 nop
098A  00                 nop
098B  0A                 ld a,(bc)
098C  00                 nop
098D  00                 nop
098E  2C                 inc l
098F  35                 dec (hl)
0990  0E 00              ld c,0
0992  00                 nop
0993  05                 dec b
0994  00                 nop
0995  00                 nop
0996  3B                 dec sp
0997  22 63 77           ld ($7763),hl
099A  65                 ld h,l
099B  74                 ld (hl),h
099C  20 20              jr nz,$09BE
099E  62                 ld h,d
099F  6F                 ld l,a
09A0  72                 ld (hl),d
09A1  64                 ld h,h
09A2  65                 ld h,l
09A3  72                 ld (hl),d
09A4  61                 ld h,c
09A5  22 0D 08           ld ($080D),hl
09A8  52                 ld d,d
09A9  69                 ld l,c
09AA  00                 nop
09AB  EB                 ex de,hl
09AC  69                 ld l,c
09AD  3D                 dec a
09AE  30 0E              jr nc,$09BE
09B0  00                 nop
09B1  00                 nop
09B2  00                 nop
09B3  00                 nop
09B4  00                 nop
09B5  CC 37 0E           call z,$0E37
09B8  00                 nop
09B9  00                 nop
09BA  07                 rlca
09BB  00                 nop
09BC  00                 nop
09BD  3A E3 6D           ld a,($6DE3)
09C0  24                 inc h
09C1  3A F5 AC           ld a,($ACF5)
09C4  31 33 0E           ld sp,$0E33
09C7  00                 nop
09C8  00                 nop
09C9  0D                 dec c
09CA  00                 nop
09CB  00                 nop
09CC  2C                 inc l
09CD  37                 scf
09CE  0E 00              ld c,0
09D0  00                 nop
09D1  07                 rlca
09D2  00                 nop
09D3  00                 nop
09D4  3B                 dec sp
09D5  22 20 20           ld ($2020),hl
09D8  20 20              jr nz,$09FA
09DA  20 20              jr nz,$09FC
09DC  20 20              jr nz,$09FE
09DE  20 20              jr nz,$0A00
09E0  22 3B AC           ld ($AC3B),hl
09E3  31 33 0E           ld sp,$0E33
09E6  00                 nop
09E7  00                 nop
09E8  0D                 dec c
09E9  00                 nop
09EA  00                 nop
09EB  2C                 inc l
09EC  37                 scf
09ED  0E 00              ld c,0
09EF  00                 nop
09F0  07                 rlca
09F1  00                 nop
09F2  00                 nop
09F3  3B                 dec sp
09F4  6D                 ld l,l
09F5  24                 inc h
09F6  3A E7 69           ld a,($69E7)
09F9  3A F2 32           ld a,($32F2)
09FC  30 30              jr nc,$0A2E
09FE  0E 00              ld c,0
0A00  00                 nop
0A01  C8                 ret z
0A02  00                 nop
0A03  00                 nop
0A04  3A F3 69           ld a,($69F3)
0A07  3A ED 32           ld a,($32ED)
0A0A  36 35              ld (hl),53
0A0C  30 0E              jr nc,$0A1C
0A0E  00                 nop
0A0F  00                 nop
0A10  5A                 ld e,d
0A11  0A                 ld a,(bc)
0A12  00                 nop
0A13  0D                 dec c
0A14  09                 add hl,bc
0A15  CE 68              adc a,104
0A17  00                 nop
0A18  ED 39              ???
0A1A  30 30              jr nc,$0A4C
0A1C  30 0E              jr nc,$0A2C
0A1E  00                 nop
0A1F  00                 nop
0A20  28 23              jr z,$0A45
0A22  00                 nop
0A23  3A F5 DA           ld a,($DAF5)
0A26  28 28              jr z,$0A50
0A28  32 0E 00           ld ($000E),a
0A2B  00                 nop
0A2C  02                 ld (bc),a
0A2D  00                 nop
0A2E  00                 nop
0A2F  2D                 dec l
0A30  65                 ld h,l
0A31  72                 ld (hl),d
0A32  29                 add hl,hl
0A33  2A 32 0E           ld hl,($0E32)
0A36  00                 nop
0A37  00                 nop
0A38  02                 ld (bc),a
0A39  00                 nop
0A3A  00                 nop
0A3B  29                 add hl,hl
0A3C  3B                 dec sp
0A3D  AC                 xor h
0A3E  35                 dec (hl)
0A3F  0E 00              ld c,0
0A41  00                 nop
0A42  05                 dec b
0A43  00                 nop
0A44  00                 nop
0A45  2C                 inc l
0A46  31 0E 00           ld sp,$000E
0A49  00                 nop
0A4A  01 00 00           ld bc,0
0A4D  3B                 dec sp
0A4E  22 20 20           ld ($2020),hl
0A51  20 20              jr nz,$0A73
0A53  20 20              jr nz,$0A75
0A55  20 20              jr nz,$0A77
0A57  20 74              jr nz,$0ACD
0A59  20 77              jr nz,$0AD2
0A5B  20 20              jr nz,$0A7D
0A5D  20 20              jr nz,$0A7F
0A5F  20 20              jr nz,$0A81
0A61  20 20              jr nz,$0A83
0A63  20 20              jr nz,$0A85
0A65  22 3B AC           ld ($AC3B),hl
0A68  36 0E              ld (hl),14
0A6A  00                 nop
0A6B  00                 nop
0A6C  06 00              ld b,0
0A6E  00                 nop
0A6F  2C                 inc l
0A70  32 35 0E           ld ($0E35),a
0A73  00                 nop
0A74  00                 nop
0A75  19                 add hl,de
0A76  00                 nop
0A77  00                 nop
0A78  3B                 dec sp
0A79  22 74 77           ld ($7774),hl
0A7C  22 3A FE           ld ($FE3A),hl
0A7F  0D                 dec c
0A80  0A                 ld a,(bc)
0A81  5A                 ld e,d
0A82  33                 inc sp
0A83  00                 nop
0A84  F5                 push af
0A85  23                 inc hl
0A86  30 0E              jr nc,$0A96
0A88  00                 nop
0A89  00                 nop
0A8A  00                 nop
0A8B  00                 nop
0A8C  00                 nop
0A8D  3B                 dec sp
0A8E  22 20 70           ld ($7020),hl
0A91  72                 ld (hl),d
0A92  61                 ld h,c
0A93  77                 ld (hl),a
0A94  69                 ld l,c
0A95  6C                 ld l,h
0A96  78                 ld a,b
0A97  6E                 ld l,(hl)
0A98  79                 ld a,c
0A99  65                 ld h,l
0A9A  20 63              jr nz,$0AFF
0A9C  77                 ld (hl),a
0A9D  65                 ld h,l
0A9E  74                 ld (hl),h
0A9F  61                 ld h,c
0AA0  3F                 ccf
0AA1  20 14              jr nz,$0AB7
0AA3  01 64 14           ld bc,$1464
0AA6  00                 nop
0AA7  20 64              jr nz,$0B0D
0AA9  61                 ld h,c
0AAA  2C                 inc l
0AAB  20 14              jr nz,$0AC1
0AAD  01 6E 14           ld bc,$146E
0AB0  00                 nop
0AB1  20 6E              jr nz,$0B21
0AB3  65                 ld h,l
0AB4  74                 ld (hl),h
0AB5  22 0D 0A           ld ($0A0D),hl
0AB8  64                 ld h,h
0AB9  26 00              ld h,0
0ABB  F2 30 0E           jp p,$0E30
0ABE  00                 nop
0ABF  00                 nop
0AC0  00                 nop
0AC1  00                 nop
0AC2  00                 nop
0AC3  3A ED 39           ld a,($39ED)
0AC6  31 30 30           ld sp,$3030
0AC9  0E 00              ld c,0
0ACB  00                 nop
0ACC  8C                 adc a,h
0ACD  23                 inc hl
0ACE  00                 nop
0ACF  3A FA C3           ld a,($C3FA)
0AD2  74                 ld (hl),h
0AD3  6E                 ld l,(hl)
0AD4  CB EC              set 5,h
0AD6  32 36 36           ld ($3636),a
0AD9  30 0E              jr nc,$0AE9
0ADB  00                 nop
0ADC  00                 nop
0ADD  64                 ld h,h
0ADE  0A                 ld a,(bc)
0ADF  00                 nop
0AE0  0D                 dec c
0AE1  0A                 ld a,(bc)
0AE2  69                 ld l,c
0AE3  18 00              jr $0AE5
0AE5  EE 22              xor $22
0AE7  22 3A FA           ld ($FA3A),hl
0AEA  63                 ld h,e
0AEB  24                 inc h
0AEC  3D                 dec a
0AED  22 6E 22           ld ($226E),hl
0AF0  CB F1              set 6,c
0AF2  65                 ld h,l
0AF3  72                 ld (hl),d
0AF4  3D                 dec a
0AF5  31 0E 00           ld sp,$000E
0AF8  00                 nop
0AF9  01 00 00           ld bc,0
0AFC  0D                 dec c
0AFD  0A                 ld a,(bc)
0AFE  6E                 ld l,(hl)
0AFF  02                 ld (bc),a
0B00  00                 nop
0B01  FE 0D              cp 13
0B03  0A                 ld a,(bc)
0B04  8C                 adc a,h
0B05  41                 ld b,c
0B06  00                 nop
0B07  F5                 push af
0B08  DA 69 3B           jp c,$3B69
0B0B  DC 66 3B           call c,$3B66
0B0E  AC                 xor h
0B0F  78                 ld a,b
0B10  2C                 inc l
0B11  32 0E 00           ld ($000E),a
0B14  00                 nop
0B15  02                 ld (bc),a
0B16  00                 nop
0B17  00                 nop
0B18  3B                 dec sp
0B19  22 20 20           ld ($2020),hl
0B1C  20 20              jr nz,$0B3E
0B1E  20 20              jr nz,$0B40
0B20  20 20              jr nz,$0B42
0B22  20 20              jr nz,$0B44
0B24  20 20              jr nz,$0B46
0B26  20 20              jr nz,$0B48
0B28  20 20              jr nz,$0B4A
0B2A  20 20              jr nz,$0B4C
0B2C  20 20              jr nz,$0B4E
0B2E  22 3B AC           ld ($AC3B),hl
0B31  78                 ld a,b
0B32  2C                 inc l
0B33  33                 inc sp
0B34  0E 00              ld c,0
0B36  00                 nop
0B37  03                 inc bc
0B38  00                 nop
0B39  00                 nop
0B3A  3B                 dec sp
0B3B  6C                 ld l,h
0B3C  24                 inc h
0B3D  3B                 dec sp
0B3E  AC                 xor h
0B3F  78                 ld a,b
0B40  2C                 inc l
0B41  79                 ld a,c
0B42  3B                 dec sp
0B43  6D                 ld l,l
0B44  24                 inc h
0B45  3A FE 0D           ld a,($0DFE)
0B48  0B                 dec bc
0B49  B8                 cp b
0B4A  17                 rla
0B4B  00                 nop
0B4C  EA 14 01           jp pe,$0114
0B4F  67                 ld h,a
0B50  72                 ld (hl),d
0B51  6F                 ld l,a
0B52  6D                 ld l,l
0B53  6B                 ld l,e
0B54  6F                 ld l,a
0B55  67                 ld h,a
0B56  6F                 ld l,a
0B57  77                 ld (hl),a
0B58  72                 ld (hl),d
0B59  69                 ld l,c
0B5A  74                 ld (hl),h
0B5B  65                 ld h,l
0B5C  6C                 ld l,h
0B5D  78                 ld a,b
0B5E  14                 inc d
0B5F  00                 nop
0B60  14                 inc d
0B61  00                 nop
0B62  0D                 dec c
0B63  0B                 dec bc
0B64  C2 56 00           jp nz,$0056
0B67  F5                 push af
0B68  AC                 xor h
0B69  35                 dec (hl)
0B6A  0E 00              ld c,0
0B6C  00                 nop
0B6D  05                 dec b
0B6E  00                 nop
0B6F  00                 nop
0B70  2C                 inc l
0B71  31 0E 00           ld sp,$000E
0B74  00                 nop
0B75  01 00 00           ld bc,0
0B78  3B                 dec sp
0B79  DD 31 0E 00        ld sp,$000E
0B7D  00                 nop
0B7E  01 00 00           ld bc,0
0B81  3B                 dec sp
0B82  22 20 20           ld ($2020),hl
0B85  20 67              jr nz,$0BEE
0B87  72                 ld (hl),d
0B88  6F                 ld l,a
0B89  6D                 ld l,l
0B8A  6B                 ld l,e
0B8B  6F                 ld l,a
0B8C  67                 ld h,a
0B8D  6F                 ld l,a
0B8E  77                 ld (hl),a
0B8F  6F                 ld l,a
0B90  72                 ld (hl),d
0B91  69                 ld l,c
0B92  74                 ld (hl),h
0B93  65                 ld h,l
0B94  6C                 ld l,h
0B95  78                 ld a,b
0B96  20 20              jr nz,$0BB8
0B98  20 22              jr nz,$0BBC
0B9A  3B                 dec sp
0B9B  AC                 xor h
0B9C  38 0E              jr c,$0BAC
0B9E  00                 nop
0B9F  00                 nop
0BA0  08                 ex af,af'
0BA1  00                 nop
0BA2  00                 nop
0BA3  2C                 inc l
0BA4  32 35 0E           ld ($0E35),a
0BA7  00                 nop
0BA8  00                 nop
0BA9  19                 add hl,de
0BAA  00                 nop
0BAB  00                 nop
0BAC  3B                 dec sp
0BAD  DD 30 0E           jr nc,$0BBE
0BB0  00                 nop
0BB1  00                 nop
0BB2  00                 nop
0BB3  00                 nop
0BB4  00                 nop
0BB5  3B                 dec sp
0BB6  22 67 72           ld ($7267),hl
0BB9  6F                 ld l,a
0BBA  6D                 ld l,l
0BBB  22 0D 0B           ld ($0B0D),hl
0BBE  CC 18 00           call z,$0018
0BC1  ED 39              ???
0BC3  30 30              jr nc,$0BF5
0BC5  30 0E              jr nc,$0BD5
0BC7  00                 nop
0BC8  00                 nop
0BC9  28 23              jr z,$0BEE
0BCB  00                 nop
0BCC  3A F1 65           ld a,($65F1)
0BCF  72                 ld (hl),d
0BD0  3D                 dec a
0BD1  30 0E              jr nc,$0BE1
0BD3  00                 nop
0BD4  00                 nop
0BD5  00                 nop
0BD6  00                 nop
0BD7  00                 nop
0BD8  0D                 dec c
0BD9  0B                 dec bc
0BDA  D6 43              sub 67
0BDC  00                 nop
0BDD  F5                 push af
0BDE  AC                 xor h
0BDF  31 33 0E           ld sp,$0E33
0BE2  00                 nop
0BE3  00                 nop
0BE4  0D                 dec c
0BE5  00                 nop
0BE6  00                 nop
0BE7  2C                 inc l
0BE8  35                 dec (hl)
0BE9  0E 00              ld c,0
0BEB  00                 nop
0BEC  05                 dec b
0BED  00                 nop
0BEE  00                 nop
0BEF  3B                 dec sp
0BF0  22 73 6C           ld ($6C73),hl
0BF3  79                 ld a,c
0BF4  7B                 ld a,e
0BF5  69                 ld l,c
0BF6  74                 ld (hl),h
0BF7  65                 ld h,l
0BF8  20 7A              jr nz,$0C74
0BFA  77                 ld (hl),a
0BFB  75                 ld (hl),l
0BFC  6B                 ld l,e
0BFD  3F                 ccf
0BFE  22 3B 23           ld ($233B),hl
0C01  30 0E              jr nc,$0C11
0C03  00                 nop
0C04  00                 nop
0C05  00                 nop
0C06  00                 nop
0C07  00                 nop
0C08  3B                 dec sp
0C09  22 20 14           ld ($1420),hl
0C0C  01 64 14           ld bc,$1464
0C0F  00                 nop
0C10  20 64              jr nz,$0C76
0C12  61                 ld h,c
0C13  2C                 inc l
0C14  20 14              jr nz,$0C2A
0C16  01 6E 14           ld bc,$146E
0C19  00                 nop
0C1A  20 6E              jr nz,$0C8A
0C1C  65                 ld h,l
0C1D  74                 ld (hl),h
0C1E  22 0D 0B           ld ($0B0D),hl
0C21  E0                 ret po
0C22  46                 ld b,(hl)
0C23  00                 nop
0C24  EB                 ex de,hl
0C25  69                 ld l,c
0C26  3D                 dec a
0C27  30 0E              jr nc,$0C37
0C29  00                 nop
0C2A  00                 nop
0C2B  00                 nop
0C2C  00                 nop
0C2D  00                 nop
0C2E  CC 31 30           call z,$3031
0C31  0E 00              ld c,0
0C33  00                 nop
0C34  0A                 ld a,(bc)
0C35  00                 nop
0C36  00                 nop
0C37  3A D7 30           ld a,($30D7)
0C3A  2E 30              ld l,48
0C3C  35                 dec (hl)
0C3D  0E 7C              ld c,124
0C3F  4C                 ld c,h
0C40  CC CC CC           call z,$CCCC
0C43  2C                 inc l
0C44  69                 ld l,c
0C45  3A ED 39           ld a,($39ED)
0C48  31 30 30           ld sp,$3030
0C4B  0E 00              ld c,0
0C4D  00                 nop
0C4E  8C                 adc a,h
0C4F  23                 inc hl
0C50  00                 nop
0C51  3A FA 74           ld a,($74FA)
0C54  6E                 ld l,(hl)
0C55  3D                 dec a
0C56  31 0E 00           ld sp,$000E
0C59  00                 nop
0C5A  01 00 00           ld bc,0
0C5D  CB EC              set 5,h
0C5F  33                 inc sp
0C60  30 36              jr nc,$0C98
0C62  30 0E              jr nc,$0C72
0C64  00                 nop
0C65  00                 nop
0C66  F4 0B 00           call p,$000B
0C69  0D                 dec c
0C6A  0B                 dec bc
0C6B  EA 0F 00           jp pe,$000F
0C6E  F3                 di
0C6F  69                 ld l,c
0C70  3A EC 33           ld a,($33EC)
0C73  30 34              jr nc,$0CA9
0C75  30 0E              jr nc,$0C85
0C77  00                 nop
0C78  00                 nop
0C79  E0                 ret po
0C7A  0B                 dec bc
0C7B  00                 nop
0C7C  0D                 dec c
0C7D  0B                 dec bc
0C7E  F4 24 00           call p,$0024
0C81  ED 39              ???
0C83  30 30              jr nc,$0CB5
0C85  30 0E              jr nc,$0C95
0C87  00                 nop
0C88  00                 nop
0C89  28 23              jr z,$0CAE
0C8B  00                 nop
0C8C  3A EE 22           ld a,($22EE)
0C8F  22 3A FA           ld ($FA3A),hl
0C92  63                 ld h,e
0C93  24                 inc h
0C94  3D                 dec a
0C95  22 6E 22           ld ($226E),hl
0C98  CB F1              set 6,c
0C9A  65                 ld h,l
0C9B  72                 ld (hl),d
0C9C  3D                 dec a
0C9D  31 0E 00           ld sp,$000E
0CA0  00                 nop
0CA1  01 00 00           ld bc,0
0CA4  0D                 dec c
0CA5  0B                 dec bc
0CA6  FE 5F              cp 95
0CA8  00                 nop
0CA9  F5                 push af
0CAA  DA 28 28           jp c,$2828
0CAD  32 0E 00           ld ($000E),a
0CB0  00                 nop
0CB1  02                 ld (bc),a
0CB2  00                 nop
0CB3  00                 nop
0CB4  2D                 dec l
0CB5  65                 ld h,l
0CB6  72                 ld (hl),d
0CB7  29                 add hl,hl
0CB8  2A 32 0E           ld hl,($0E32)
0CBB  00                 nop
0CBC  00                 nop
0CBD  02                 ld (bc),a
0CBE  00                 nop
0CBF  00                 nop
0CC0  29                 add hl,hl
0CC1  3B                 dec sp
0CC2  AC                 xor h
0CC3  35                 dec (hl)
0CC4  0E 00              ld c,0
0CC6  00                 nop
0CC7  05                 dec b
0CC8  00                 nop
0CC9  00                 nop
0CCA  2C                 inc l
0CCB  31 0E 00           ld sp,$000E
0CCE  00                 nop
0CCF  01 00 00           ld bc,0
0CD2  3B                 dec sp
0CD3  22 20 20           ld ($2020),hl
0CD6  20 67              jr nz,$0D3F
0CD8  72                 ld (hl),d
0CD9  6F                 ld l,a
0CDA  6D                 ld l,l
0CDB  6B                 ld l,e
0CDC  6F                 ld l,a
0CDD  67                 ld h,a
0CDE  6F                 ld l,a
0CDF  77                 ld (hl),a
0CE0  6F                 ld l,a
0CE1  72                 ld (hl),d
0CE2  69                 ld l,c
0CE3  74                 ld (hl),h
0CE4  65                 ld h,l
0CE5  6C                 ld l,h
0CE6  78                 ld a,b
0CE7  20 20              jr nz,$0D09
0CE9  20 22              jr nz,$0D0D
0CEB  3B                 dec sp
0CEC  AC                 xor h
0CED  38 0E              jr c,$0CFD
0CEF  00                 nop
0CF0  00                 nop
0CF1  08                 ex af,af'
0CF2  00                 nop
0CF3  00                 nop
0CF4  2C                 inc l
0CF5  32 35 0E           ld ($0E35),a
0CF8  00                 nop
0CF9  00                 nop
0CFA  19                 add hl,de
0CFB  00                 nop
0CFC  00                 nop
0CFD  3B                 dec sp
0CFE  22 67 72           ld ($7267),hl
0D01  6F                 ld l,a
0D02  6D                 ld l,l
0D03  22 3B 3A           ld ($3A3B),hl
0D06  FE 0D              cp 13
0D08  0F                 rrca
0D09  A0                 and b
0D0A  09                 add hl,bc
0D0B  00                 nop
0D0C  EA 14 01           jp pe,$0114
0D0F  70                 ld (hl),b
0D10  7A                 ld a,d
0D11  75                 ld (hl),l
0D12  14                 inc d
0D13  00                 nop
0D14  0D                 dec c
0D15  0F                 rrca
0D16  AA                 xor d
0D17  56                 ld d,(hl)
0D18  00                 nop
0D19  F5                 push af
0D1A  AC                 xor h
0D1B  35                 dec (hl)
0D1C  0E 00              ld c,0
0D1E  00                 nop
0D1F  05                 dec b
0D20  00                 nop
0D21  00                 nop
0D22  2C                 inc l
0D23  31 0E 00           ld sp,$000E
0D26  00                 nop
0D27  01 00 00           ld bc,0
0D2A  3B                 dec sp
0D2B  DD 31 0E 00        ld sp,$000E
0D2F  00                 nop
0D30  01 00 00           ld bc,0
0D33  3B                 dec sp
0D34  22 20 20           ld ($2020),hl
0D37  20 20              jr nz,$0D59
0D39  20 20              jr nz,$0D5B
0D3B  20 20              jr nz,$0D5D
0D3D  70                 ld (hl),b
0D3E  20 7A              jr nz,$0DBA
0D40  20 75              jr nz,$0DB7
0D42  20 20              jr nz,$0D64
0D44  20 20              jr nz,$0D66
0D46  20 20              jr nz,$0D68
0D48  20 20              jr nz,$0D6A
0D4A  20 22              jr nz,$0D6E
0D4C  3B                 dec sp
0D4D  AC                 xor h
0D4E  31 30 0E           ld sp,$0E30
0D51  00                 nop
0D52  00                 nop
0D53  0A                 ld a,(bc)
0D54  00                 nop
0D55  00                 nop
0D56  2C                 inc l
0D57  32 35 0E           ld ($0E35),a
0D5A  00                 nop
0D5B  00                 nop
0D5C  19                 add hl,de
0D5D  00                 nop
0D5E  00                 nop
0D5F  3B                 dec sp
0D60  DD 30 0E           jr nc,$0D71
0D63  00                 nop
0D64  00                 nop
0D65  00                 nop
0D66  00                 nop
0D67  00                 nop
0D68  3B                 dec sp
0D69  22 70 7A           ld ($7A70),hl
0D6C  75                 ld (hl),l
0D6D  22 0D 0F           ld ($0F0D),hl
0D70  B4                 or h
0D71  77                 ld (hl),a
0D72  00                 nop
0D73  ED 39              ???
0D75  30 30              jr nc,$0DA7
0D77  30 0E              jr nc,$0D87
0D79  00                 nop
0D7A  00                 nop
0D7B  28 23              jr z,$0DA0
0D7D  00                 nop
0D7E  3A F5 AC           ld a,($ACF5)
0D81  37                 scf
0D82  0E 00              ld c,0
0D84  00                 nop
0D85  07                 rlca
0D86  00                 nop
0D87  00                 nop
0D88  2C                 inc l
0D89  34                 inc (hl)
0D8A  0E 00              ld c,0
0D8C  00                 nop
0D8D  04                 inc b
0D8E  00                 nop
0D8F  00                 nop
0D90  3B                 dec sp
0D91  22 4E 90           ld ($904E),hl
0D94  20 20              jr nz,$0DB6
0D96  7C                 ld a,h
0D97  74                 ld (hl),h
0D98  61                 ld h,c
0D99  2D                 dec l
0D9A  20 20              jr nz,$0DBC
0D9C  20 6B              jr nz,$0E09
0D9E  6F                 ld l,a
0D9F  6E                 ld l,(hl)
0DA0  74                 ld (hl),h
0DA1  72                 ld (hl),d
0DA2  2E 22              ld l,34
0DA4  3B                 dec sp
0DA5  AC                 xor h
0DA6  38 0E              jr c,$0DB6
0DA8  00                 nop
0DA9  00                 nop
0DAA  08                 ex af,af'
0DAB  00                 nop
0DAC  00                 nop
0DAD  2C                 inc l
0DAE  38 0E              jr c,$0DBE
0DB0  00                 nop
0DB1  00                 nop
0DB2  08                 ex af,af'
0DB3  00                 nop
0DB4  00                 nop
0DB5  3B                 dec sp
0DB6  22 6C 6F           ld ($6F6C),hl
0DB9  6E                 ld l,(hl)
0DBA  20 20              jr nz,$0DDC
0DBC  20 20              jr nz,$0DDE
0DBE  73                 ld (hl),e
0DBF  75                 ld (hl),l
0DC0  6D                 ld l,l
0DC1  6D                 ld l,l
0DC2  61                 ld h,c
0DC3  22 3A E4           ld ($E43A),hl
0DC6  34                 inc (hl)
0DC7  35                 dec (hl)
0DC8  36 33              ld (hl),51
0DCA  31 0E 00           ld sp,$000E
0DCD  00                 nop
0DCE  3F                 ccf
0DCF  B2                 or d
0DD0  00                 nop
0DD1  2C                 inc l
0DD2  33                 inc sp
0DD3  33                 inc sp
0DD4  37                 scf
0DD5  37                 scf
0DD6  35                 dec (hl)
0DD7  0E 00              ld c,0
0DD9  00                 nop
0DDA  EF                 rst 28h
0DDB  83                 add a,e
0DDC  00                 nop
0DDD  3A E5 34           ld a,($34E5)
0DE0  30 32              jr nc,$0E14
0DE2  30 0E              jr nc,$0DF2
0DE4  00                 nop
0DE5  00                 nop
0DE6  B4                 or h
0DE7  0F                 rrca
0DE8  00                 nop
0DE9  0D                 dec c
0DEA  0F                 rrca
0DEB  B9                 cp c
0DEC  5F                 ld e,a
0DED  00                 nop
0DEE  EB                 ex de,hl
0DEF  69                 ld l,c
0DF0  3D                 dec a
0DF1  31 0E 00           ld sp,$000E
0DF4  00                 nop
0DF5  01 00 00           ld bc,0
0DF8  CC 32 0E           call z,$0E32
0DFB  00                 nop
0DFC  00                 nop
0DFD  02                 ld (bc),a
0DFE  00                 nop
0DFF  00                 nop
0E00  3A E3 65           ld a,($65E3)
0E03  73                 ld (hl),e
0E04  3A F4 33           ld a,($33F4)
0E07  32 31 30           ld ($3031),a
0E0A  38 0E              jr c,$0E1A
0E0C  00                 nop
0E0D  00                 nop
0E0E  6C                 ld l,h
0E0F  7D                 ld a,l
0E10  00                 nop
0E11  2C                 inc l
0E12  33                 inc sp
0E13  32 0E 00           ld ($000E),a
0E16  00                 nop
0E17  20 00              jr nz,$0E19
0E19  00                 nop
0E1A  3A F4 33           ld a,($33F4)
0E1D  32 31 30           ld ($3031),a
0E20  36 0E              ld (hl),14
0E22  00                 nop
0E23  00                 nop
0E24  6A                 ld l,d
0E25  7D                 ld a,l
0E26  00                 nop
0E27  2C                 inc l
0E28  28 69              jr z,$0E93
0E2A  2D                 dec l
0E2B  31 0E 00           ld sp,$000E
0E2E  00                 nop
0E2F  01 00 00           ld bc,0
0E32  29                 add hl,hl
0E33  2A 33 32           ld hl,($3233)
0E36  0E 00              ld c,0
0E38  00                 nop
0E39  20 00              jr nz,$0E3B
0E3B  00                 nop
0E3C  3A F1 73           ld a,($73F1)
0E3F  3D                 dec a
0E40  C0                 ret nz
0E41  33                 inc sp
0E42  32 31 30           ld ($3031),a
0E45  33                 inc sp
0E46  0E 00              ld c,0
0E48  00                 nop
0E49  67                 ld h,a
0E4A  7D                 ld a,l
0E4B  00                 nop
0E4C  0D                 dec c
0E4D  0F                 rrca
0E4E  BA                 cp d
0E4F  60                 ld h,b
0E50  00                 nop
0E51  F5                 push af
0E52  AC                 xor h
0E53  39                 add hl,sp
0E54  0E 00              ld c,0
0E56  00                 nop
0E57  09                 add hl,bc
0E58  00                 nop
0E59  00                 nop
0E5A  2B                 dec hl
0E5B  69                 ld l,c
0E5C  2C                 inc l
0E5D  34                 inc (hl)
0E5E  0E 00              ld c,0
0E60  00                 nop
0E61  04                 inc b
0E62  00                 nop
0E63  00                 nop
0E64  3B                 dec sp
0E65  69                 ld l,c
0E66  3B                 dec sp
0E67  22 29 22           ld ($2229),hl
0E6A  3B                 dec sp
0E6B  AD                 xor l
0E6C  38 0E              jr c,$0E7C
0E6E  00                 nop
0E6F  00                 nop
0E70  08                 ex af,af'
0E71  00                 nop
0E72  00                 nop
0E73  3B                 dec sp
0E74  65                 ld h,l
0E75  73                 ld (hl),e
0E76  3B                 dec sp
0E77  AD                 xor l
0E78  31 35 0E           ld sp,$0E35
0E7B  00                 nop
0E7C  00                 nop
0E7D  0F                 rrca
0E7E  00                 nop
0E7F  00                 nop
0E80  3B                 dec sp
0E81  73                 ld (hl),e
0E82  3A F3 69           ld a,($69F3)
0E85  3A F4 33           ld a,($33F4)
0E88  32 31 30           ld ($3031),a
0E8B  38 0E              jr c,$0E9B
0E8D  00                 nop
0E8E  00                 nop
0E8F  6C                 ld l,h
0E90  7D                 ld a,l
0E91  00                 nop
0E92  2C                 inc l
0E93  36 34              ld (hl),52
0E95  0E 00              ld c,0
0E97  00                 nop
0E98  40                 ld b,b
0E99  00                 nop
0E9A  00                 nop
0E9B  3A F4 33           ld a,($33F4)
0E9E  32 31 30           ld ($3031),a
0EA1  36 0E              ld (hl),14
0EA3  00                 nop
0EA4  00                 nop
0EA5  6A                 ld l,d
0EA6  7D                 ld a,l
0EA7  00                 nop
0EA8  2C                 inc l
0EA9  30 0E              jr nc,$0EB9
0EAB  00                 nop
0EAC  00                 nop
0EAD  00                 nop
0EAE  00                 nop
0EAF  00                 nop
0EB0  0D                 dec c
0EB1  0F                 rrca
0EB2  C3 20 00           jp $0020
0EB5  F1                 pop af
0EB6  65                 ld h,l
0EB7  73                 ld (hl),e
0EB8  3D                 dec a
0EB9  31 33 38           ld sp,$3833
0EBC  37                 scf
0EBD  30 0E              jr nc,$0ECD
0EBF  00                 nop
0EC0  00                 nop
0EC1  2E 36              ld l,54
0EC3  00                 nop
0EC4  3A F1 73           ld a,($73F1)
0EC7  3D                 dec a
0EC8  C0                 ret nz
0EC9  33                 inc sp
0ECA  32 31 30           ld ($3031),a
0ECD  33                 inc sp
0ECE  0E 00              ld c,0
0ED0  00                 nop
0ED1  67                 ld h,a
0ED2  7D                 ld a,l
0ED3  00                 nop
0ED4  0D                 dec c
0ED5  0F                 rrca
0ED6  C8                 ret z
0ED7  22 00 F5           ld ($F500),hl
0EDA  AC                 xor h
0EDB  31 39 0E           ld sp,$0E39
0EDE  00                 nop
0EDF  00                 nop
0EE0  13                 inc de
0EE1  00                 nop
0EE2  00                 nop
0EE3  2C                 inc l
0EE4  38 0E              jr c,$0EF4
0EE6  00                 nop
0EE7  00                 nop
0EE8  08                 ex af,af'
0EE9  00                 nop
0EEA  00                 nop
0EEB  3B                 dec sp
0EEC  65                 ld h,l
0EED  73                 ld (hl),e
0EEE  3B                 dec sp
0EEF  AD                 xor l
0EF0  31 35 0E           ld sp,$0E35
0EF3  00                 nop
0EF4  00                 nop
0EF5  0F                 rrca
0EF6  00                 nop
0EF7  00                 nop
0EF8  3B                 dec sp
0EF9  73                 ld (hl),e
0EFA  0D                 dec c
0EFB  0F                 rrca
0EFC  E6 1E              and $1E
0EFE  00                 nop
0EFF  F1                 pop af
0F00  65                 ld h,l
0F01  72                 ld (hl),d
0F02  3D                 dec a
0F03  30 0E              jr nc,$0F13
0F05  00                 nop
0F06  00                 nop
0F07  00                 nop
0F08  00                 nop
0F09  00                 nop
0F0A  3A FA 73           ld a,($73FA)
0F0D  C9                 ret
0F0E  65                 ld h,l
0F0F  73                 ld (hl),e
0F10  CB F1              set 6,c
0F12  65                 ld h,l
0F13  72                 ld (hl),d
0F14  3D                 dec a
0F15  31 0E 00           ld sp,$000E
0F18  00                 nop
0F19  01 00 00           ld bc,0
0F1C  0D                 dec c
0F1D  0F                 rrca
0F1E  F0                 ret p
0F1F  5C                 ld e,h
0F20  00                 nop
0F21  F5                 push af
0F22  DA 28 28           jp c,$2828
0F25  32 0E 00           ld ($000E),a
0F28  00                 nop
0F29  02                 ld (bc),a
0F2A  00                 nop
0F2B  00                 nop
0F2C  2D                 dec l
0F2D  65                 ld h,l
0F2E  72                 ld (hl),d
0F2F  29                 add hl,hl
0F30  2A 32 0E           ld hl,($0E32)
0F33  00                 nop
0F34  00                 nop
0F35  02                 ld (bc),a
0F36  00                 nop
0F37  00                 nop
0F38  29                 add hl,hl
0F39  3B                 dec sp
0F3A  AC                 xor h
0F3B  35                 dec (hl)
0F3C  0E 00              ld c,0
0F3E  00                 nop
0F3F  05                 dec b
0F40  00                 nop
0F41  00                 nop
0F42  2C                 inc l
0F43  31 0E 00           ld sp,$000E
0F46  00                 nop
0F47  01 00 00           ld bc,0
0F4A  3B                 dec sp
0F4B  22 20 20           ld ($2020),hl
0F4E  20 20              jr nz,$0F70
0F50  20 20              jr nz,$0F72
0F52  20 20              jr nz,$0F74
0F54  70                 ld (hl),b
0F55  20 7A              jr nz,$0FD1
0F57  20 75              jr nz,$0FCE
0F59  20 20              jr nz,$0F7B
0F5B  20 20              jr nz,$0F7D
0F5D  20 20              jr nz,$0F7F
0F5F  20 20              jr nz,$0F81
0F61  20 22              jr nz,$0F85
0F63  3B                 dec sp
0F64  AC                 xor h
0F65  31 30 0E           ld sp,$0E30
0F68  00                 nop
0F69  00                 nop
0F6A  0A                 ld a,(bc)
0F6B  00                 nop
0F6C  00                 nop
0F6D  2C                 inc l
0F6E  32 35 0E           ld ($0E35),a
0F71  00                 nop
0F72  00                 nop
0F73  19                 add hl,de
0F74  00                 nop
0F75  00                 nop
0F76  3B                 dec sp
0F77  22 70 7A           ld ($7A70),hl
0F7A  75                 ld (hl),l
0F7B  22 0D 0F           ld ($0F0D),hl
0F7E  FA 0D 00           jp m,$000D
0F81  F2 32 30           jp p,$3032
0F84  30 0E              jr nc,$0F94
0F86  00                 nop
0F87  00                 nop
0F88  C8                 ret z
0F89  00                 nop
0F8A  00                 nop
0F8B  3A FE 0D           ld a,($0DFE)
0F8E  13                 inc de
0F8F  88                 adc a,b
0F90  09                 add hl,bc
0F91  00                 nop
0F92  EA 14 01           jp pe,$0114
0F95  6F                 ld l,a
0F96  7A                 ld a,d
0F97  75                 ld (hl),l
0F98  14                 inc d
0F99  00                 nop
0F9A  0D                 dec c
0F9B  13                 inc de
0F9C  92                 sub d
0F9D  56                 ld d,(hl)
0F9E  00                 nop
0F9F  F5                 push af
0FA0  AC                 xor h
0FA1  35                 dec (hl)
0FA2  0E 00              ld c,0
0FA4  00                 nop
0FA5  05                 dec b
0FA6  00                 nop
0FA7  00                 nop
0FA8  2C                 inc l
0FA9  31 0E 00           ld sp,$000E
0FAC  00                 nop
0FAD  01 00 00           ld bc,0
0FB0  3B                 dec sp
0FB1  DD 31 0E 00        ld sp,$000E
0FB5  00                 nop
0FB6  01 00 00           ld bc,0
0FB9  3B                 dec sp
0FBA  22 20 20           ld ($2020),hl
0FBD  20 20              jr nz,$0FDF
0FBF  20 20              jr nz,$0FE1
0FC1  20 20              jr nz,$0FE3
0FC3  6F                 ld l,a
0FC4  20 7A              jr nz,$1040
0FC6  20 75              jr nz,$103D
0FC8  20 20              jr nz,$0FEA
0FCA  20 20              jr nz,$0FEC
0FCC  20 20              jr nz,$0FEE
0FCE  20 20              jr nz,$0FF0
0FD0  20 22              jr nz,$0FF4
0FD2  3B                 dec sp
0FD3  AC                 xor h
0FD4  31 32 0E           ld sp,$0E32
0FD7  00                 nop
0FD8  00                 nop
0FD9  0C                 inc c
0FDA  00                 nop
0FDB  00                 nop
0FDC  2C                 inc l
0FDD  32 35 0E           ld ($0E35),a
0FE0  00                 nop
0FE1  00                 nop
0FE2  19                 add hl,de
0FE3  00                 nop
0FE4  00                 nop
0FE5  3B                 dec sp
0FE6  DD 30 0E           jr nc,$0FF7
0FE9  00                 nop
0FEA  00                 nop
0FEB  00                 nop
0FEC  00                 nop
0FED  00                 nop
0FEE  3B                 dec sp
0FEF  22 6F 7A           ld ($7A6F),hl
0FF2  75                 ld (hl),l
0FF3  22 0D 13           ld ($130D),hl
0FF6  AB                 xor e
0FF7  2C                 inc l
0FF8  00                 nop
0FF9  ED 39              ???
0FFB  30 30              jr nc,$102D
0FFD  30 0E              jr nc,$100D
0FFF  00                 nop
1000  00                 nop
1001  28 23              jr z,$1026
1003  00                 nop
1004  3A F1 73           ld a,($73F1)
1007  3D                 dec a
1008  C0                 ret nz
1009  33                 inc sp
100A  32 31 32           ld ($3231),a
100D  39                 add hl,sp
100E  0E 00              ld c,0
1010  00                 nop
1011  81                 add a,c
1012  7D                 ld a,l
1013  00                 nop
1014  3A F1 65           ld a,($65F1)
1017  72                 ld (hl),d
1018  3D                 dec a
1019  28 73              jr z,$108E
101B  C9                 ret
101C  30 0E              jr nc,$102C
101E  00                 nop
101F  00                 nop
1020  00                 nop
1021  00                 nop
1022  00                 nop
1023  29                 add hl,hl
1024  0D                 dec c
1025  13                 inc de
1026  B0                 or b
1027  24                 inc h
1028  00                 nop
1029  FA 65 72           jp m,$7265
102C  CB F5              set 6,l
102E  AC                 xor h
102F  31 33 0E           ld sp,$0E33
1032  00                 nop
1033  00                 nop
1034  0D                 dec c
1035  00                 nop
1036  00                 nop
1037  2C                 inc l
1038  33                 inc sp
1039  0E 00              ld c,0
103B  00                 nop
103C  03                 inc bc
103D  00                 nop
103E  00                 nop
103F  3B                 dec sp
1040  22 6F 7B           ld ($7B6F),hl
1043  69                 ld l,c
1044  62                 ld h,d
1045  6B                 ld l,e
1046  61                 ld h,c
1047  3A 20 22           ld a,($2220)
104A  3B                 dec sp
104B  73                 ld (hl),e
104C  0D                 dec c
104D  13                 inc de
104E  BA                 cp d
104F  5E                 ld e,(hl)
1050  00                 nop
1051  F5                 push af
1052  DA 28 28           jp c,$2828
1055  32 0E 00           ld ($000E),a
1058  00                 nop
1059  02                 ld (bc),a
105A  00                 nop
105B  00                 nop
105C  2D                 dec l
105D  65                 ld h,l
105E  72                 ld (hl),d
105F  29                 add hl,hl
1060  2A 32 0E           ld hl,($0E32)
1063  00                 nop
1064  00                 nop
1065  02                 ld (bc),a
1066  00                 nop
1067  00                 nop
1068  29                 add hl,hl
1069  3B                 dec sp
106A  AC                 xor h
106B  35                 dec (hl)
106C  0E 00              ld c,0
106E  00                 nop
106F  05                 dec b
1070  00                 nop
1071  00                 nop
1072  2C                 inc l
1073  31 0E 00           ld sp,$000E
1076  00                 nop
1077  01 00 00           ld bc,0
107A  3B                 dec sp
107B  22 20 20           ld ($2020),hl
107E  20 20              jr nz,$10A0
1080  20 20              jr nz,$10A2
1082  20 20              jr nz,$10A4
1084  6F                 ld l,a
1085  20 7A              jr nz,$1101
1087  20 75              jr nz,$10FE
1089  20 20              jr nz,$10AB
108B  20 20              jr nz,$10AD
108D  20 20              jr nz,$10AF
108F  20 20              jr nz,$10B1
1091  20 22              jr nz,$10B5
1093  3B                 dec sp
1094  AC                 xor h
1095  31 32 0E           ld sp,$0E32
1098  00                 nop
1099  00                 nop
109A  0C                 inc c
109B  00                 nop
109C  00                 nop
109D  2C                 inc l
109E  32 35 0E           ld ($0E35),a
10A1  00                 nop
10A2  00                 nop
10A3  19                 add hl,de
10A4  00                 nop
10A5  00                 nop
10A6  3B                 dec sp
10A7  22 6F 7A           ld ($7A6F),hl
10AA  75                 ld (hl),l
10AB  22 3A FE           ld ($FE3A),hl
10AE  0D                 dec c
10AF  17                 rla
10B0  70                 ld (hl),b
10B1  10 00              djnz $10B3
10B3  EA 14 01           jp pe,$0114
10B6  4B                 ld c,e
10B7  6C                 ld l,h
10B8  61                 ld h,c
10B9  77                 ld (hl),a
10BA  69                 ld l,c
10BB  61                 ld h,c
10BC  74                 ld (hl),h
10BD  75                 ld (hl),l
10BE  72                 ld (hl),d
10BF  61                 ld h,c
10C0  14                 inc d
10C1  00                 nop
10C2  0D                 dec c
10C3  17                 rla
10C4  7A                 ld a,d
10C5  63                 ld h,e
10C6  00                 nop
10C7  F5                 push af
10C8  DD 31 0E 00        ld sp,$000E
10CC  00                 nop
10CD  01 00 00           ld bc,0
10D0  3B                 dec sp
10D1  AC                 xor h
10D2  35                 dec (hl)
10D3  0E 00              ld c,0
10D5  00                 nop
10D6  05                 dec b
10D7  00                 nop
10D8  00                 nop
10D9  2C                 inc l
10DA  31 0E 00           ld sp,$000E
10DD  00                 nop
10DE  01 00 00           ld bc,0
10E1  3B                 dec sp
10E2  22 20 20           ld ($2020),hl
10E5  20 20              jr nz,$1107
10E7  20 20              jr nz,$1109
10E9  6B                 ld l,e
10EA  6C                 ld l,h
10EB  61                 ld h,c
10EC  77                 ld (hl),a
10ED  69                 ld l,c
10EE  61                 ld h,c
10EF  74                 ld (hl),h
10F0  75                 ld (hl),l
10F1  72                 ld (hl),d
10F2  61                 ld h,c
10F3  20 20              jr nz,$1115
10F5  20 20              jr nz,$1117
10F7  20 20              jr nz,$1119
10F9  22 3B AC           ld ($AC3B),hl
10FC  31 34 0E           ld sp,$0E34
10FF  00                 nop
1100  00                 nop
1101  0E 00              ld c,0
1103  00                 nop
1104  2C                 inc l
1105  32 35 0E           ld ($0E35),a
1108  00                 nop
1109  00                 nop
110A  19                 add hl,de
110B  00                 nop
110C  00                 nop
110D  3B                 dec sp
110E  DD 30 0E           jr nc,$111F
1111  00                 nop
1112  00                 nop
1113  00                 nop
1114  00                 nop
1115  00                 nop
1116  3B                 dec sp
1117  22 6B 6C           ld ($6C6B),hl
111A  61                 ld h,c
111B  77                 ld (hl),a
111C  22 3A ED           ld ($ED3A),hl
111F  39                 add hl,sp
1120  30 30              jr nc,$1152
1122  30 0E              jr nc,$1132
1124  00                 nop
1125  00                 nop
1126  28 23              jr z,$114B
1128  00                 nop
1129  0D                 dec c
112A  17                 rla
112B  8E                 adc a,(hl)
112C  E0                 ret po
112D  00                 nop
112E  F4 32 33           call p,$3332
1131  36 37              ld (hl),55
1133  36 0E              ld (hl),14
1135  00                 nop
1136  00                 nop
1137  7C                 ld a,h
1138  5C                 ld e,h
1139  00                 nop
113A  2C                 inc l
113B  31 32 37           ld sp,$3732
113E  0E 00              ld c,0
1140  00                 nop
1141  7F                 ld a,a
1142  00                 nop
1143  00                 nop
1144  3A F5 DA           ld a,($DAF5)
1147  32 0E 00           ld ($000E),a
114A  00                 nop
114B  02                 ld (bc),a
114C  00                 nop
114D  00                 nop
114E  3B                 dec sp
114F  AC                 xor h
1150  39                 add hl,sp
1151  0E 00              ld c,0
1153  00                 nop
1154  09                 add hl,bc
1155  00                 nop
1156  00                 nop
1157  2C                 inc l
1158  34                 inc (hl)
1159  0E 00              ld c,0
115B  00                 nop
115C  04                 inc b
115D  00                 nop
115E  00                 nop
115F  3B                 dec sp
1160  22 9E 98           ld ($989E),hl
1163  9D                 sbc a,l
1164  90                 sub b
1165  91                 sub c
1166  95                 sub l
1167  96                 sub (hl)
1168  7B                 ld a,e
1169  7D                 ld a,l
116A  93                 sub e
116B  92                 sub d
116C  9E                 sbc a,(hl)
116D  22 3B AC           ld ($AC3B),hl
1170  31 30 0E           ld sp,$0E30
1173  00                 nop
1174  00                 nop
1175  0A                 ld a,(bc)
1176  00                 nop
1177  00                 nop
1178  2C                 inc l
1179  35                 dec (hl)
117A  0E 00              ld c,0
117C  00                 nop
117D  05                 dec b
117E  00                 nop
117F  00                 nop
1180  3B                 dec sp
1181  22 31 32           ld ($3231),hl
1184  33                 inc sp
1185  34                 inc (hl)
1186  35                 dec (hl)
1187  36 37              ld (hl),55
1189  38 39              jr c,$11C4
118B  30 5D              jr nc,$11EA
118D  60                 ld h,b
118E  22 3B AC           ld ($AC3B),hl
1191  31 31 0E           ld sp,$0E31
1194  00                 nop
1195  00                 nop
1196  0B                 dec bc
1197  00                 nop
1198  00                 nop
1199  2C                 inc l
119A  34                 inc (hl)
119B  0E 00              ld c,0
119D  00                 nop
119E  04                 inc b
119F  00                 nop
11A0  00                 nop
11A1  3B                 dec sp
11A2  22 51 57           ld ($5751),hl
11A5  45                 ld b,l
11A6  52                 ld d,d
11A7  54                 ld d,h
11A8  59                 ld e,c
11A9  55                 ld d,l
11AA  49                 ld c,c
11AB  4F                 ld c,a
11AC  50                 ld d,b
11AD  7E                 ld a,(hl)
11AE  5B                 ld e,e
11AF  22 3B AC           ld ($AC3B),hl
11B2  31 32 0E           ld sp,$0E32
11B5  00                 nop
11B6  00                 nop
11B7  0C                 inc c
11B8  00                 nop
11B9  00                 nop
11BA  2C                 inc l
11BB  33                 inc sp
11BC  0E 00              ld c,0
11BE  00                 nop
11BF  03                 inc bc
11C0  00                 nop
11C1  00                 nop
11C2  3B                 dec sp
11C3  22 41 53           ld ($5341),hl
11C6  44                 ld b,h
11C7  46                 ld b,(hl)
11C8  47                 ld b,a
11C9  48                 ld c,b
11CA  4A                 ld c,d
11CB  4B                 ld c,e
11CC  4C                 ld c,h
11CD  3B                 dec sp
11CE  22 22 99           ld ($9922),hl
11D1  22 3B AC           ld ($AC3B),hl
11D4  31 33 0E           ld sp,$0E33
11D7  00                 nop
11D8  00                 nop
11D9  0D                 dec c
11DA  00                 nop
11DB  00                 nop
11DC  2C                 inc l
11DD  34                 inc (hl)
11DE  0E 00              ld c,0
11E0  00                 nop
11E1  04                 inc b
11E2  00                 nop
11E3  00                 nop
11E4  3B                 dec sp
11E5  22 9F 5A           ld ($5A9F),hl
11E8  58                 ld e,b
11E9  43                 ld b,e
11EA  56                 ld d,(hl)
11EB  42                 ld b,d
11EC  4E                 ld c,(hl)
11ED  4D                 ld c,l
11EE  7C                 ld a,h
11EF  2C                 inc l
11F0  2E 9F              ld l,-97
11F2  22 3B AC           ld ($AC3B),hl
11F5  31 34 0E           ld sp,$0E34
11F8  00                 nop
11F9  00                 nop
11FA  0E 00              ld c,0
11FC  00                 nop
11FD  2C                 inc l
11FE  38 0E              jr c,$120E
1200  00                 nop
1201  00                 nop
1202  08                 ex af,af'
1203  00                 nop
1204  00                 nop
1205  3B                 dec sp
1206  22 A1 A2           ld ($A2A1),hl
1209  20 A3              jr nz,$11AE
120B  A4                 and h
120C  22 0D 17           ld ($170D),hl
120F  98                 sbc a,b
1210  6C                 ld l,h
1211  00                 nop
1212  F5                 push af
1213  AC                 xor h
1214  31 36 0E           ld sp,$0E36
1217  00                 nop
1218  00                 nop
1219  10 00              djnz $121B
121B  00                 nop
121C  2C                 inc l
121D  33                 inc sp
121E  0E 00              ld c,0
1220  00                 nop
1221  03                 inc bc
1222  00                 nop
1223  00                 nop
1224  3B                 dec sp
1225  22 6E 61           ld ($616E),hl
1228  76                 halt
1229  6D                 ld l,l
122A  69                 ld l,c
122B  74                 ld (hl),h
122C  65                 ld h,l
122D  20 77              jr nz,$12A6
122F  73                 ld (hl),e
1230  65                 ld h,l
1231  22 3B AC           ld ($AC3B),hl
1234  31 37 0E           ld sp,$0E37
1237  00                 nop
1238  00                 nop
1239  11 00 00           ld de,0
123C  2C                 inc l
123D  33                 inc sp
123E  0E 00              ld c,0
1240  00                 nop
1241  03                 inc bc
1242  00                 nop
1243  00                 nop
1244  3B                 dec sp
1245  22 6B 6C           ld ($6C6B),hl
1248  61                 ld h,c
1249  77                 ld (hl),a
124A  69                 ld l,c
124B  7B                 ld a,e
124C  69                 ld l,c
124D  20 70              jr nz,$12BF
124F  6F                 ld l,a
1250  20 6F              jr nz,$12C1
1252  64                 ld h,h
1253  6E                 ld l,(hl)
1254  6F                 ld l,a
1255  6A                 ld l,d
1256  22 3A F9           ld ($F93A),hl
1259  C0                 ret nz
125A  33                 inc sp
125B  31 39 34           ld sp,$3439
125E  34                 inc (hl)
125F  0E 00              ld c,0
1261  00                 nop
1262  C8                 ret z
1263  7C                 ld a,h
1264  00                 nop
1265  3A F1 69           ld a,($69F1)
1268  3D                 dec a
1269  31 36 0E           ld sp,$0E36
126C  00                 nop
126D  00                 nop
126E  10 00              djnz $1270
1270  00                 nop
1271  3A ED 39           ld a,($39ED)
1274  30 32              jr nc,$12A8
1276  30 0E              jr nc,$1286
1278  00                 nop
1279  00                 nop
127A  3C                 inc a
127B  23                 inc hl
127C  00                 nop
127D  0D                 dec c
127E  17                 rla
127F  B6                 or (hl)
1280  C7                 rst 00h
1281  00                 nop
1282  F5                 push af
1283  DA 32 0E           jp c,$0E32
1286  00                 nop
1287  00                 nop
1288  02                 ld (bc),a
1289  00                 nop
128A  00                 nop
128B  3B                 dec sp
128C  AC                 xor h
128D  39                 add hl,sp
128E  0E 00              ld c,0
1290  00                 nop
1291  09                 add hl,bc
1292  00                 nop
1293  00                 nop
1294  2C                 inc l
1295  34                 inc (hl)
1296  0E 00              ld c,0
1298  00                 nop
1299  04                 inc b
129A  00                 nop
129B  00                 nop
129C  3B                 dec sp
129D  22 9B 22           ld ($229B),hl
12A0  3B                 dec sp
12A1  DA 37 0E           jp c,$0E37
12A4  00                 nop
12A5  00                 nop
12A6  07                 rlca
12A7  00                 nop
12A8  00                 nop
12A9  3B                 dec sp
12AA  AC                 xor h
12AB  31 36 0E           ld sp,$0E36
12AE  00                 nop
12AF  00                 nop
12B0  10 00              djnz $12B2
12B2  00                 nop
12B3  2C                 inc l
12B4  33                 inc sp
12B5  0E 00              ld c,0
12B7  00                 nop
12B8  03                 inc bc
12B9  00                 nop
12BA  00                 nop
12BB  3B                 dec sp
12BC  22 6E 61           ld ($616E),hl
12BF  76                 halt
12C0  6D                 ld l,l
12C1  69                 ld l,c
12C2  74                 ld (hl),h
12C3  65                 ld h,l
12C4  20 6C              jr nz,$1332
12C6  65                 ld h,l
12C7  77                 ld (hl),a
12C8  75                 ld (hl),l
12C9  60                 ld h,b
12CA  22 3B AC           ld ($AC3B),hl
12CD  31 37 0E           ld sp,$0E37
12D0  00                 nop
12D1  00                 nop
12D2  11 00 00           ld de,0
12D5  2C                 inc l
12D6  33                 inc sp
12D7  0E 00              ld c,0
12D9  00                 nop
12DA  03                 inc bc
12DB  00                 nop
12DC  00                 nop
12DD  3B                 dec sp
12DE  22 6B 6C           ld ($6C6B),hl
12E1  61                 ld h,c
12E2  77                 ld (hl),a
12E3  69                 ld l,c
12E4  7B                 ld a,e
12E5  75                 ld (hl),l
12E6  20 14              jr nz,$12FC
12E8  01 43 41           ld bc,$4143
12EB  50                 ld d,b
12EC  53                 ld d,e
12ED  20 53              jr nz,$1342
12EF  48                 ld c,b
12F0  49                 ld c,c
12F1  46                 ld b,(hl)
12F2  54                 ld d,h
12F3  14                 inc d
12F4  00                 nop
12F5  22 3A F4           ld ($F43A),hl
12F8  33                 inc sp
12F9  31 39 34           ld sp,$3439
12FC  36 0E              ld (hl),14
12FE  00                 nop
12FF  00                 nop
1300  CA 7C 00           jp z,$007C
1303  2C                 inc l
1304  31 0E 00           ld sp,$000E
1307  00                 nop
1308  01 00 00           ld bc,0
130B  3A F4 33           ld a,($33F4)
130E  31 39 34           ld sp,$3439
1311  31 0E 00           ld sp,$000E
1314  00                 nop
1315  C5                 push bc
1316  7C                 ld a,h
1317  00                 nop
1318  2C                 inc l
1319  31 32 39           ld sp,$3932
131C  0E 00              ld c,0
131E  00                 nop
131F  81                 add a,c
1320  00                 nop
1321  00                 nop
1322  3A F9 C0           ld a,($C0F9)
1325  33                 inc sp
1326  31 39 34           ld sp,$3439
1329  34                 inc (hl)
132A  0E 00              ld c,0
132C  00                 nop
132D  C8                 ret z
132E  7C                 ld a,h
132F  00                 nop
1330  3A F1 69           ld a,($69F1)
1333  3D                 dec a
1334  31 36 0E           ld sp,$0E36
1337  00                 nop
1338  00                 nop
1339  10 00              djnz $133B
133B  00                 nop
133C  3A ED 39           ld a,($39ED)
133F  30 32              jr nc,$1373
1341  30 0E              jr nc,$1351
1343  00                 nop
1344  00                 nop
1345  3C                 inc a
1346  23                 inc hl
1347  00                 nop
1348  0D                 dec c
1349  17                 rla
134A  CA 77 00           jp z,$0077
134D  F5                 push af
134E  DA 32 0E           jp c,$0E32
1351  00                 nop
1352  00                 nop
1353  02                 ld (bc),a
1354  00                 nop
1355  00                 nop
1356  3B                 dec sp
1357  AC                 xor h
1358  39                 add hl,sp
1359  0E 00              ld c,0
135B  00                 nop
135C  09                 add hl,bc
135D  00                 nop
135E  00                 nop
135F  2C                 inc l
1360  31 35 0E           ld sp,$0E35
1363  00                 nop
1364  00                 nop
1365  0F                 rrca
1366  00                 nop
1367  00                 nop
1368  3B                 dec sp
1369  22 9E 22           ld ($229E),hl
136C  3B                 dec sp
136D  DA 37 0E           jp c,$0E37
1370  00                 nop
1371  00                 nop
1372  07                 rlca
1373  00                 nop
1374  00                 nop
1375  3B                 dec sp
1376  AC                 xor h
1377  31 36 0E           ld sp,$0E36
137A  00                 nop
137B  00                 nop
137C  10 00              djnz $137E
137E  00                 nop
137F  2C                 inc l
1380  33                 inc sp
1381  0E 00              ld c,0
1383  00                 nop
1384  03                 inc bc
1385  00                 nop
1386  00                 nop
1387  3B                 dec sp
1388  22 6E 61           ld ($616E),hl
138B  76                 halt
138C  6D                 ld l,l
138D  69                 ld l,c
138E  74                 ld (hl),h
138F  65                 ld h,l
1390  20 70              jr nz,$1402
1392  72                 ld (hl),d
1393  61                 ld h,c
1394  77                 ld (hl),a
1395  75                 ld (hl),l
1396  60                 ld h,b
1397  22 3B AC           ld ($AC3B),hl
139A  31 37 0E           ld sp,$0E37
139D  00                 nop
139E  00                 nop
139F  11 00 00           ld de,0
13A2  2C                 inc l
13A3  33                 inc sp
13A4  0E 00              ld c,0
13A6  00                 nop
13A7  03                 inc bc
13A8  00                 nop
13A9  00                 nop
13AA  3B                 dec sp
13AB  22 6B 6C           ld ($6C6B),hl
13AE  61                 ld h,c
13AF  77                 ld (hl),a
13B0  69                 ld l,c
13B1  7B                 ld a,e
13B2  75                 ld (hl),l
13B3  20 14              jr nz,$13C9
13B5  01 43 41           ld bc,$4143
13B8  50                 ld d,b
13B9  53                 ld d,e
13BA  20 53              jr nz,$140F
13BC  48                 ld c,b
13BD  49                 ld c,c
13BE  46                 ld b,(hl)
13BF  54                 ld d,h
13C0  14                 inc d
13C1  00                 nop
13C2  22 0D 17           ld ($170D),hl
13C5  CC 67 00           call z,$0067
13C8  F4 33 31           call p,$3133
13CB  39                 add hl,sp
13CC  34                 inc (hl)
13CD  30 0E              jr nc,$13DD
13CF  00                 nop
13D0  00                 nop
13D1  C4 7C 00           call nz,$007C
13D4  2C                 inc l
13D5  34                 inc (hl)
13D6  37                 scf
13D7  0E 00              ld c,0
13D9  00                 nop
13DA  2F                 cpl
13DB  00                 nop
13DC  00                 nop
13DD  3A F9 C0           ld a,($C0F9)
13E0  33                 inc sp
13E1  31 39 34           ld sp,$3439
13E4  34                 inc (hl)
13E5  0E 00              ld c,0
13E7  00                 nop
13E8  C8                 ret z
13E9  7C                 ld a,h
13EA  00                 nop
13EB  3A F4 33           ld a,($33F4)
13EE  31 39 34           ld sp,$3439
13F1  30 0E              jr nc,$1401
13F3  00                 nop
13F4  00                 nop
13F5  C4 7C 00           call nz,$007C
13F8  2C                 inc l
13F9  33                 inc sp
13FA  36 0E              ld (hl),14
13FC  00                 nop
13FD  00                 nop
13FE  24                 inc h
13FF  00                 nop
1400  00                 nop
1401  3A F4 33           ld a,($33F4)
1404  31 39 34           ld sp,$3439
1407  31 0E 00           ld sp,$000E
140A  00                 nop
140B  C5                 push bc
140C  7C                 ld a,h
140D  00                 nop
140E  2C                 inc l
140F  31 0E 00           ld sp,$000E
1412  00                 nop
1413  01 00 00           ld bc,0
1416  3A F1 69           ld a,($69F1)
1419  3D                 dec a
141A  31 36 0E           ld sp,$0E36
141D  00                 nop
141E  00                 nop
141F  10 00              djnz $1421
1421  00                 nop
1422  3A ED 39           ld a,($39ED)
1425  30 32              jr nc,$1459
1427  30 0E              jr nc,$1437
1429  00                 nop
142A  00                 nop
142B  3C                 inc a
142C  23                 inc hl
142D  00                 nop
142E  0D                 dec c
142F  17                 rla
1430  D0                 ret nc
1431  B3                 or e
1432  00                 nop
1433  F5                 push af
1434  DA 32 0E           jp c,$0E32
1437  00                 nop
1438  00                 nop
1439  02                 ld (bc),a
143A  00                 nop
143B  00                 nop
143C  3B                 dec sp
143D  AC                 xor h
143E  31 33 0E           ld sp,$0E33
1441  00                 nop
1442  00                 nop
1443  0D                 dec c
1444  00                 nop
1445  00                 nop
1446  2C                 inc l
1447  34                 inc (hl)
1448  0E 00              ld c,0
144A  00                 nop
144B  04                 inc b
144C  00                 nop
144D  00                 nop
144E  3B                 dec sp
144F  22 9F 22           ld ($229F),hl
1452  3B                 dec sp
1453  DA 37 0E           jp c,$0E37
1456  00                 nop
1457  00                 nop
1458  07                 rlca
1459  00                 nop
145A  00                 nop
145B  3B                 dec sp
145C  AC                 xor h
145D  31 36 0E           ld sp,$0E36
1460  00                 nop
1461  00                 nop
1462  10 00              djnz $1464
1464  00                 nop
1465  2C                 inc l
1466  33                 inc sp
1467  0E 00              ld c,0
1469  00                 nop
146A  03                 inc bc
146B  00                 nop
146C  00                 nop
146D  3B                 dec sp
146E  22 6E 61           ld ($616E),hl
1471  76                 halt
1472  6D                 ld l,l
1473  69                 ld l,c
1474  74                 ld (hl),h
1475  65                 ld h,l
1476  20 6C              jr nz,$14E4
1478  65                 ld h,l
1479  77                 ld (hl),a
147A  75                 ld (hl),l
147B  60                 ld h,b
147C  22 3B AC           ld ($AC3B),hl
147F  31 37 0E           ld sp,$0E37
1482  00                 nop
1483  00                 nop
1484  11 00 00           ld de,0
1487  2C                 inc l
1488  33                 inc sp
1489  0E 00              ld c,0
148B  00                 nop
148C  03                 inc bc
148D  00                 nop
148E  00                 nop
148F  3B                 dec sp
1490  22 6B 6C           ld ($6C6B),hl
1493  61                 ld h,c
1494  77                 ld (hl),a
1495  69                 ld l,c
1496  7B                 ld a,e
1497  75                 ld (hl),l
1498  20 14              jr nz,$14AE
149A  01 53 59           ld bc,$5953
149D  4D                 ld c,l
149E  42                 ld b,d
149F  20 53              jr nz,$14F4
14A1  48                 ld c,b
14A2  49                 ld c,c
14A3  46                 ld b,(hl)
14A4  54                 ld d,h
14A5  14                 inc d
14A6  00                 nop
14A7  22 3A F4           ld ($F43A),hl
14AA  33                 inc sp
14AB  31 38 36           ld sp,$3638
14AE  36 0E              ld (hl),14
14B0  00                 nop
14B1  00                 nop
14B2  7A                 ld a,d
14B3  7C                 ld a,h
14B4  00                 nop
14B5  2C                 inc l
14B6  31 32 39           ld sp,$3932
14B9  0E 00              ld c,0
14BB  00                 nop
14BC  81                 add a,c
14BD  00                 nop
14BE  00                 nop
14BF  3A F9 C0           ld a,($C0F9)
14C2  33                 inc sp
14C3  31 39 34           ld sp,$3439
14C6  34                 inc (hl)
14C7  0E 00              ld c,0
14C9  00                 nop
14CA  C8                 ret z
14CB  7C                 ld a,h
14CC  00                 nop
14CD  3A F1 69           ld a,($69F1)
14D0  3D                 dec a
14D1  31 36 0E           ld sp,$0E36
14D4  00                 nop
14D5  00                 nop
14D6  10 00              djnz $14D8
14D8  00                 nop
14D9  3A ED 39           ld a,($39ED)
14DC  30 32              jr nc,$1510
14DE  30 0E              jr nc,$14EE
14E0  00                 nop
14E1  00                 nop
14E2  3C                 inc a
14E3  23                 inc hl
14E4  00                 nop
14E5  0D                 dec c
14E6  17                 rla
14E7  D6 78              sub 120
14E9  00                 nop
14EA  F5                 push af
14EB  DA 32 0E           jp c,$0E32
14EE  00                 nop
14EF  00                 nop
14F0  02                 ld (bc),a
14F1  00                 nop
14F2  00                 nop
14F3  3B                 dec sp
14F4  AC                 xor h
14F5  31 33 0E           ld sp,$0E33
14F8  00                 nop
14F9  00                 nop
14FA  0D                 dec c
14FB  00                 nop
14FC  00                 nop
14FD  2C                 inc l
14FE  31 35 0E           ld sp,$0E35
1501  00                 nop
1502  00                 nop
1503  0F                 rrca
1504  00                 nop
1505  00                 nop
1506  3B                 dec sp
1507  22 9F 22           ld ($229F),hl
150A  3B                 dec sp
150B  DA 37 0E           jp c,$0E37
150E  00                 nop
150F  00                 nop
1510  07                 rlca
1511  00                 nop
1512  00                 nop
1513  3B                 dec sp
1514  AC                 xor h
1515  31 36 0E           ld sp,$0E36
1518  00                 nop
1519  00                 nop
151A  10 00              djnz $151C
151C  00                 nop
151D  2C                 inc l
151E  33                 inc sp
151F  0E 00              ld c,0
1521  00                 nop
1522  03                 inc bc
1523  00                 nop
1524  00                 nop
1525  3B                 dec sp
1526  22 6E 61           ld ($616E),hl
1529  76                 halt
152A  6D                 ld l,l
152B  69                 ld l,c
152C  74                 ld (hl),h
152D  65                 ld h,l
152E  20 70              jr nz,$15A0
1530  72                 ld (hl),d
1531  61                 ld h,c
1532  77                 ld (hl),a
1533  75                 ld (hl),l
1534  60                 ld h,b
1535  22 3B AC           ld ($AC3B),hl
1538  31 37 0E           ld sp,$0E37
153B  00                 nop
153C  00                 nop
153D  11 00 00           ld de,0
1540  2C                 inc l
1541  33                 inc sp
1542  0E 00              ld c,0
1544  00                 nop
1545  03                 inc bc
1546  00                 nop
1547  00                 nop
1548  3B                 dec sp
1549  22 6B 6C           ld ($6C6B),hl
154C  61                 ld h,c
154D  77                 ld (hl),a
154E  69                 ld l,c
154F  7B                 ld a,e
1550  75                 ld (hl),l
1551  20 14              jr nz,$1567
1553  01 53 59           ld bc,$5953
1556  4D                 ld c,l
1557  42                 ld b,d
1558  20 53              jr nz,$15AD
155A  48                 ld c,b
155B  49                 ld c,c
155C  46                 ld b,(hl)
155D  54                 ld d,h
155E  14                 inc d
155F  00                 nop
1560  22 0D 17           ld ($170D),hl
1563  D8                 ret c
1564  7E                 ld a,(hl)
1565  00                 nop
1566  F4 33 31           call p,$3133
1569  38 36              jr c,$15A1
156B  35                 dec (hl)
156C  0E 00              ld c,0
156E  00                 nop
156F  79                 ld a,c
1570  7C                 ld a,h
1571  00                 nop
1572  2C                 inc l
1573  31 37 35           ld sp,$3537
1576  0E 00              ld c,0
1578  00                 nop
1579  AF                 xor a
157A  00                 nop
157B  00                 nop
157C  3A F9 C0           ld a,($C0F9)
157F  33                 inc sp
1580  31 39 34           ld sp,$3439
1583  34                 inc (hl)
1584  0E 00              ld c,0
1586  00                 nop
1587  C8                 ret z
1588  7C                 ld a,h
1589  00                 nop
158A  3A F4 33           ld a,($33F4)
158D  31 38 36           ld sp,$3638
1590  35                 dec (hl)
1591  0E 00              ld c,0
1593  00                 nop
1594  79                 ld a,c
1595  7C                 ld a,h
1596  00                 nop
1597  2C                 inc l
1598  31 36 34           ld sp,$3436
159B  0E 00              ld c,0
159D  00                 nop
159E  A4                 and h
159F  00                 nop
15A0  00                 nop
15A1  3A F4 33           ld a,($33F4)
15A4  31 38 36           ld sp,$3638
15A7  36 0E              ld (hl),14
15A9  00                 nop
15AA  00                 nop
15AB  7A                 ld a,d
15AC  7C                 ld a,h
15AD  00                 nop
15AE  2C                 inc l
15AF  31 0E 00           ld sp,$000E
15B2  00                 nop
15B3  01 00 00           ld bc,0
15B6  3A F4 33           ld a,($33F4)
15B9  31 39 34           ld sp,$3439
15BC  36 0E              ld (hl),14
15BE  00                 nop
15BF  00                 nop
15C0  CA 7C 00           jp z,$007C
15C3  2C                 inc l
15C4  36 33              ld (hl),51
15C6  0E 00              ld c,0
15C8  00                 nop
15C9  3F                 ccf
15CA  00                 nop
15CB  00                 nop
15CC  3A F4 32           ld a,($32F4)
15CF  33                 inc sp
15D0  36 37              ld (hl),55
15D2  36 0E              ld (hl),14
15D4  00                 nop
15D5  00                 nop
15D6  7C                 ld a,h
15D7  5C                 ld e,h
15D8  00                 nop
15D9  2C                 inc l
15DA  31 32 33           ld sp,$3332
15DD  0E 00              ld c,0
15DF  00                 nop
15E0  7B                 ld a,e
15E1  00                 nop
15E2  00                 nop
15E3  0D                 dec c
15E4  17                 rla
15E5  E8                 ret pe
15E6  5C                 ld e,h
15E7  00                 nop
15E8  F1                 pop af
15E9  65                 ld h,l
15EA  72                 ld (hl),d
15EB  3D                 dec a
15EC  30 0E              jr nc,$15FC
15EE  00                 nop
15EF  00                 nop
15F0  00                 nop
15F1  00                 nop
15F2  00                 nop
15F3  3A F5 DA           ld a,($DAF5)
15F6  34                 inc (hl)
15F7  0E 00              ld c,0
15F9  00                 nop
15FA  04                 inc b
15FB  00                 nop
15FC  00                 nop
15FD  3B                 dec sp
15FE  AC                 xor h
15FF  35                 dec (hl)
1600  0E 00              ld c,0
1602  00                 nop
1603  05                 dec b
1604  00                 nop
1605  00                 nop
1606  2C                 inc l
1607  31 0E 00           ld sp,$000E
160A  00                 nop
160B  01 00 00           ld bc,0
160E  3B                 dec sp
160F  22 20 20           ld ($2020),hl
1612  20 20              jr nz,$1634
1614  20 20              jr nz,$1636
1616  6B                 ld l,e
1617  6C                 ld l,h
1618  61                 ld h,c
1619  77                 ld (hl),a
161A  69                 ld l,c
161B  61                 ld h,c
161C  74                 ld (hl),h
161D  75                 ld (hl),l
161E  72                 ld (hl),d
161F  61                 ld h,c
1620  20 20              jr nz,$1642
1622  20 20              jr nz,$1644
1624  20 20              jr nz,$1646
1626  22 3B AC           ld ($AC3B),hl
1629  31 34 0E           ld sp,$0E34
162C  00                 nop
162D  00                 nop
162E  0E 00              ld c,0
1630  00                 nop
1631  2C                 inc l
1632  32 35 0E           ld ($0E35),a
1635  00                 nop
1636  00                 nop
1637  19                 add hl,de
1638  00                 nop
1639  00                 nop
163A  3B                 dec sp
163B  22 6B 6C           ld ($6C6B),hl
163E  61                 ld h,c
163F  77                 ld (hl),a
1640  22 3A FE           ld ($FE3A),hl
1643  0D                 dec c
1644  1B                 dec de
1645  58                 ld e,b
1646  10 00              djnz $1648
1648  EA 14 01           jp pe,$0114
164B  6D                 ld l,l
164C  61                 ld h,c
164D  67                 ld h,a
164E  6E                 ld l,(hl)
164F  69                 ld l,c
1650  74                 ld (hl),h
1651  6F                 ld l,a
1652  66                 ld h,(hl)
1653  6F                 ld l,a
1654  6E                 ld l,(hl)
1655  14                 inc d
1656  00                 nop
1657  0D                 dec c
1658  1B                 dec de
1659  62                 ld h,d
165A  63                 ld h,e
165B  00                 nop
165C  F5                 push af
165D  AC                 xor h
165E  35                 dec (hl)
165F  0E 00              ld c,0
1661  00                 nop
1662  05                 dec b
1663  00                 nop
1664  00                 nop
1665  2C                 inc l
1666  31 0E 00           ld sp,$000E
1669  00                 nop
166A  01 00 00           ld bc,0
166D  3B                 dec sp
166E  DD 31 0E 00        ld sp,$000E
1672  00                 nop
1673  01 00 00           ld bc,0
1676  3B                 dec sp
1677  22 20 20           ld ($2020),hl
167A  20 20              jr nz,$169C
167C  20 20              jr nz,$169E
167E  6D                 ld l,l
167F  61                 ld h,c
1680  67                 ld h,a
1681  6E                 ld l,(hl)
1682  69                 ld l,c
1683  74                 ld (hl),h
1684  6F                 ld l,a
1685  66                 ld h,(hl)
1686  6F                 ld l,a
1687  6E                 ld l,(hl)
1688  20 20              jr nz,$16AA
168A  20 20              jr nz,$16AC
168C  20 20              jr nz,$16AE
168E  22 3B AC           ld ($AC3B),hl
1691  31 36 0E           ld sp,$0E36
1694  00                 nop
1695  00                 nop
1696  10 00              djnz $1698
1698  00                 nop
1699  2C                 inc l
169A  32 35 0E           ld ($0E35),a
169D  00                 nop
169E  00                 nop
169F  19                 add hl,de
16A0  00                 nop
16A1  00                 nop
16A2  3B                 dec sp
16A3  DD 30 0E           jr nc,$16B4
16A6  00                 nop
16A7  00                 nop
16A8  00                 nop
16A9  00                 nop
16AA  00                 nop
16AB  3B                 dec sp
16AC  22 6D 61           ld ($616D),hl
16AF  67                 ld h,a
16B0  6E                 ld l,(hl)
16B1  22 3A ED           ld ($ED3A),hl
16B4  39                 add hl,sp
16B5  30 30              jr nc,$16E7
16B7  30 0E              jr nc,$16C7
16B9  00                 nop
16BA  00                 nop
16BB  28 23              jr z,$16E0
16BD  00                 nop
16BE  0D                 dec c
16BF  1B                 dec de
16C0  76                 halt
16C1  C3 00 F5           jp $F500
16C4  AC                 xor h
16C5  31 31 0E           ld sp,$0E31
16C8  00                 nop
16C9  00                 nop
16CA  0B                 dec bc
16CB  00                 nop
16CC  00                 nop
16CD  2C                 inc l
16CE  33                 inc sp
16CF  0E 00              ld c,0
16D1  00                 nop
16D2  03                 inc bc
16D3  00                 nop
16D4  00                 nop
16D5  3B                 dec sp
16D6  22 77 73           ld ($7377),hl
16D9  74                 ld (hl),h
16DA  61                 ld h,c
16DB  77                 ld (hl),a
16DC  78                 ld a,b
16DD  74                 ld (hl),h
16DE  65                 ld h,l
16DF  20 74              jr nz,$1755
16E1  65                 ld h,l
16E2  73                 ld (hl),e
16E3  74                 ld (hl),h
16E4  6F                 ld l,a
16E5  77                 ld (hl),a
16E6  75                 ld (hl),l
16E7  60                 ld h,b
16E8  22 3B AC           ld ($AC3B),hl
16EB  31 32 0E           ld sp,$0E32
16EE  00                 nop
16EF  00                 nop
16F0  0C                 inc c
16F1  00                 nop
16F2  00                 nop
16F3  2C                 inc l
16F4  33                 inc sp
16F5  0E 00              ld c,0
16F7  00                 nop
16F8  03                 inc bc
16F9  00                 nop
16FA  00                 nop
16FB  3B                 dec sp
16FC  22 6B 61           ld ($616B),hl
16FF  73                 ld (hl),e
1700  73                 ld (hl),e
1701  65                 ld h,l
1702  74                 ld (hl),h
1703  75                 ld (hl),l
1704  22 3B AC           ld ($AC3B),hl
1707  31 33 0E           ld sp,$0E33
170A  00                 nop
170B  00                 nop
170C  0D                 dec c
170D  00                 nop
170E  00                 nop
170F  2C                 inc l
1710  33                 inc sp
1711  0E 00              ld c,0
1713  00                 nop
1714  03                 inc bc
1715  00                 nop
1716  00                 nop
1717  3B                 dec sp
1718  22 77 20           ld ($2077),hl
171B  6D                 ld l,l
171C  61                 ld h,c
171D  67                 ld h,a
171E  6E                 ld l,(hl)
171F  69                 ld l,c
1720  74                 ld (hl),h
1721  6F                 ld l,a
1722  66                 ld h,(hl)
1723  6F                 ld l,a
1724  6E                 ld l,(hl)
1725  2C                 inc l
1726  22 3B AC           ld ($AC3B),hl
1729  31 34 0E           ld sp,$0E34
172C  00                 nop
172D  00                 nop
172E  0E 00              ld c,0
1730  00                 nop
1731  2C                 inc l
1732  33                 inc sp
1733  0E 00              ld c,0
1735  00                 nop
1736  03                 inc bc
1737  00                 nop
1738  00                 nop
1739  3B                 dec sp
173A  22 77 6B           ld ($6B77),hl
173D  6C                 ld l,h
173E  60                 ld h,b
173F  7E                 ld a,(hl)
1740  69                 ld l,c
1741  74                 ld (hl),h
1742  65                 ld h,l
1743  22 3B AC           ld ($AC3B),hl
1746  31 35 0E           ld sp,$0E35
1749  00                 nop
174A  00                 nop
174B  0F                 rrca
174C  00                 nop
174D  00                 nop
174E  2C                 inc l
174F  33                 inc sp
1750  0E 00              ld c,0
1752  00                 nop
1753  03                 inc bc
1754  00                 nop
1755  00                 nop
1756  3B                 dec sp
1757  22 7A 61           ld ($617A),hl
175A  70                 ld (hl),b
175B  69                 ld l,c
175C  73                 ld (hl),e
175D  78                 ld a,b
175E  22 3A ED           ld ($ED3A),hl
1761  39                 add hl,sp
1762  32 30 30           ld ($3030),a
1765  0E 00              ld c,0
1767  00                 nop
1768  F0                 ret p
1769  23                 inc hl
176A  00                 nop
176B  3A ED 39           ld a,($39ED)
176E  30 30              jr nc,$17A0
1770  30 0E              jr nc,$1780
1772  00                 nop
1773  00                 nop
1774  28 23              jr z,$1799
1776  00                 nop
1777  3A F9 C0           ld a,($C0F9)
177A  33                 inc sp
177B  32 30 36           ld ($3630),a
177E  36 0E              ld (hl),14
1780  00                 nop
1781  00                 nop
1782  42                 ld b,d
1783  7D                 ld a,l
1784  00                 nop
1785  0D                 dec c
1786  1B                 dec de
1787  A8                 xor b
1788  AA                 xor d
1789  00                 nop
178A  F5                 push af
178B  AC                 xor h
178C  31 31 0E           ld sp,$0E31
178F  00                 nop
1790  00                 nop
1791  0B                 dec bc
1792  00                 nop
1793  00                 nop
1794  2C                 inc l
1795  33                 inc sp
1796  0E 00              ld c,0
1798  00                 nop
1799  03                 inc bc
179A  00                 nop
179B  00                 nop
179C  3B                 dec sp
179D  22 70 65           ld ($6570),hl
17A0  72                 ld (hl),d
17A1  65                 ld h,l
17A2  6D                 ld l,l
17A3  6F                 ld l,a
17A4  74                 ld (hl),h
17A5  61                 ld h,c
17A6  6A                 ld l,d
17A7  74                 ld (hl),h
17A8  65                 ld h,l
17A9  20 6C              jr nz,$1817
17AB  65                 ld h,l
17AC  6E                 ld l,(hl)
17AD  74                 ld (hl),h
17AE  75                 ld (hl),l
17AF  22 3B AC           ld ($AC3B),hl
17B2  31 32 0E           ld sp,$0E32
17B5  00                 nop
17B6  00                 nop
17B7  0C                 inc c
17B8  00                 nop
17B9  00                 nop
17BA  2C                 inc l
17BB  33                 inc sp
17BC  0E 00              ld c,0
17BE  00                 nop
17BF  03                 inc bc
17C0  00                 nop
17C1  00                 nop
17C2  3B                 dec sp
17C3  22 6B 20           ld ($206B),hl
17C6  6E                 ld l,(hl)
17C7  61                 ld h,c
17C8  7E                 ld a,(hl)
17C9  61                 ld h,c
17CA  6C                 ld l,h
17CB  75                 ld (hl),l
17CC  20 7A              jr nz,$1848
17CE  61                 ld h,c
17CF  70                 ld (hl),b
17D0  69                 ld l,c
17D1  73                 ld (hl),e
17D2  69                 ld l,c
17D3  2C                 inc l
17D4  22 3B AC           ld ($AC3B),hl
17D7  31 33 0E           ld sp,$0E33
17DA  00                 nop
17DB  00                 nop
17DC  0D                 dec c
17DD  00                 nop
17DE  00                 nop
17DF  2C                 inc l
17E0  33                 inc sp
17E1  0E 00              ld c,0
17E3  00                 nop
17E4  03                 inc bc
17E5  00                 nop
17E6  00                 nop
17E7  3B                 dec sp
17E8  22 77 6B           ld ($6B77),hl
17EB  6C                 ld l,h
17EC  60                 ld h,b
17ED  7E                 ld a,(hl)
17EE  69                 ld l,c
17EF  74                 ld (hl),h
17F0  65                 ld h,l
17F1  22 3B AC           ld ($AC3B),hl
17F4  31 34 0E           ld sp,$0E34
17F7  00                 nop
17F8  00                 nop
17F9  0E 00              ld c,0
17FB  00                 nop
17FC  2C                 inc l
17FD  33                 inc sp
17FE  0E 00              ld c,0
1800  00                 nop
1801  03                 inc bc
1802  00                 nop
1803  00                 nop
1804  3B                 dec sp
1805  22 77 6F           ld ($6F77),hl
1808  73                 ld (hl),e
1809  70                 ld (hl),b
180A  72                 ld (hl),d
180B  6F                 ld l,a
180C  69                 ld l,c
180D  7A                 ld a,d
180E  77                 ld (hl),a
180F  65                 ld h,l
1810  64                 ld h,h
1811  65                 ld h,l
1812  6E                 ld l,(hl)
1813  69                 ld l,c
1814  65                 ld h,l
1815  22 3A F1           ld ($F13A),hl
1818  65                 ld h,l
1819  72                 ld (hl),d
181A  3D                 dec a
181B  C0                 ret nz
181C  33                 inc sp
181D  32 30 37           ld ($3730),a
1820  38 0E              jr c,$1830
1822  00                 nop
1823  00                 nop
1824  4E                 ld c,(hl)
1825  7D                 ld a,l
1826  00                 nop
1827  3A ED 39           ld a,($39ED)
182A  30 30              jr nc,$185C
182C  30 0E              jr nc,$183C
182E  00                 nop
182F  00                 nop
1830  28 23              jr z,$1855
1832  00                 nop
1833  0D                 dec c
1834  1B                 dec de
1835  BC                 cp h
1836  5F                 ld e,a
1837  00                 nop
1838  F5                 push af
1839  DA 28 28           jp c,$2828
183C  32 0E 00           ld ($000E),a
183F  00                 nop
1840  02                 ld (bc),a
1841  00                 nop
1842  00                 nop
1843  2D                 dec l
1844  65                 ld h,l
1845  72                 ld (hl),d
1846  29                 add hl,hl
1847  2A 32 0E           ld hl,($0E32)
184A  00                 nop
184B  00                 nop
184C  02                 ld (bc),a
184D  00                 nop
184E  00                 nop
184F  29                 add hl,hl
1850  3B                 dec sp
1851  AC                 xor h
1852  35                 dec (hl)
1853  0E 00              ld c,0
1855  00                 nop
1856  05                 dec b
1857  00                 nop
1858  00                 nop
1859  2C                 inc l
185A  31 0E 00           ld sp,$000E
185D  00                 nop
185E  01 00 00           ld bc,0
1861  3B                 dec sp
1862  22 20 20           ld ($2020),hl
1865  20 20              jr nz,$1887
1867  20 20              jr nz,$1889
1869  6D                 ld l,l
186A  61                 ld h,c
186B  67                 ld h,a
186C  6E                 ld l,(hl)
186D  69                 ld l,c
186E  74                 ld (hl),h
186F  6F                 ld l,a
1870  66                 ld h,(hl)
1871  6F                 ld l,a
1872  6E                 ld l,(hl)
1873  20 20              jr nz,$1895
1875  20 20              jr nz,$1897
1877  20 20              jr nz,$1899
1879  22 3B AC           ld ($AC3B),hl
187C  31 36 0E           ld sp,$0E36
187F  00                 nop
1880  00                 nop
1881  10 00              djnz $1883
1883  00                 nop
1884  2C                 inc l
1885  32 35 0E           ld ($0E35),a
1888  00                 nop
1889  00                 nop
188A  19                 add hl,de
188B  00                 nop
188C  00                 nop
188D  3B                 dec sp
188E  22 6D 61           ld ($616D),hl
1891  67                 ld h,a
1892  6E                 ld l,(hl)
1893  22 3A FE           ld ($FE3A),hl
1896  0D                 dec c
1897  1F                 rra
1898  40                 ld b,b
1899  0E 00              ld c,0
189B  EA 14 01           jp pe,$0114
189E  64                 ld h,h
189F  76                 halt
18A0  6F                 ld l,a
18A1  6A                 ld l,d
18A2  73                 ld (hl),e
18A3  74                 ld (hl),h
18A4  69                 ld l,c
18A5  6B                 ld l,e
18A6  14                 inc d
18A7  00                 nop
18A8  0D                 dec c
18A9  1F                 rra
18AA  4A                 ld c,d
18AB  BB                 cp e
18AC  00                 nop
18AD  F5                 push af
18AE  AC                 xor h
18AF  35                 dec (hl)
18B0  0E 00              ld c,0
18B2  00                 nop
18B3  05                 dec b
18B4  00                 nop
18B5  00                 nop
18B6  2C                 inc l
18B7  31 0E 00           ld sp,$000E
18BA  00                 nop
18BB  01 00 00           ld bc,0
18BE  3B                 dec sp
18BF  DD 31 0E 00        ld sp,$000E
18C3  00                 nop
18C4  01 00 00           ld bc,0
18C7  3B                 dec sp
18C8  22 20 20           ld ($2020),hl
18CB  20 20              jr nz,$18ED
18CD  20 20              jr nz,$18EF
18CF  64                 ld h,h
18D0  76                 halt
18D1  6F                 ld l,a
18D2  6A                 ld l,d
18D3  73                 ld (hl),e
18D4  74                 ld (hl),h
18D5  69                 ld l,c
18D6  6B                 ld l,e
18D7  20 20              jr nz,$18F9
18D9  20 20              jr nz,$18FB
18DB  20 20              jr nz,$18FD
18DD  20 20              jr nz,$18FF
18DF  22 3B AC           ld ($AC3B),hl
18E2  31 38 0E           ld sp,$0E38
18E5  00                 nop
18E6  00                 nop
18E7  12                 ld (de),a
18E8  00                 nop
18E9  00                 nop
18EA  2C                 inc l
18EB  32 35 0E           ld ($0E35),a
18EE  00                 nop
18EF  00                 nop
18F0  19                 add hl,de
18F1  00                 nop
18F2  00                 nop
18F3  3B                 dec sp
18F4  DD 30 0E           jr nc,$1905
18F7  00                 nop
18F8  00                 nop
18F9  00                 nop
18FA  00                 nop
18FB  00                 nop
18FC  3B                 dec sp
18FD  22 64 76           ld ($7664),hl
1900  6F                 ld l,a
1901  6A                 ld l,d
1902  22 3A ED           ld ($ED3A),hl
1905  39                 add hl,sp
1906  30 30              jr nc,$1938
1908  30 0E              jr nc,$1918
190A  00                 nop
190B  00                 nop
190C  28 23              jr z,$1931
190E  00                 nop
190F  3A F5 AC           ld a,($ACF5)
1912  31 30 0E           ld sp,$0E30
1915  00                 nop
1916  00                 nop
1917  0A                 ld a,(bc)
1918  00                 nop
1919  00                 nop
191A  2C                 inc l
191B  37                 scf
191C  0E 00              ld c,0
191E  00                 nop
191F  07                 rlca
1920  00                 nop
1921  00                 nop
1922  3B                 dec sp
1923  22 75 70           ld ($7075),hl
1926  72                 ld (hl),d
1927  61                 ld h,c
1928  77                 ld (hl),a
1929  6C                 ld l,h
192A  71                 ld (hl),c
192B  6A                 ld l,d
192C  74                 ld (hl),h
192D  65                 ld h,l
192E  22 3B 23           ld ($233B),hl
1931  30 0E              jr nc,$1941
1933  00                 nop
1934  00                 nop
1935  00                 nop
1936  00                 nop
1937  00                 nop
1938  3B                 dec sp
1939  22 70 72           ld ($7270),hl
193C  6F                 ld l,a
193D  77                 ld (hl),a
193E  65                 ld h,l
193F  72                 ld (hl),d
1940  69                 ld l,c
1941  77                 ld (hl),a
1942  2C                 inc l
1943  20 6E              jr nz,$19B3
1945  61                 ld h,c
1946  76                 halt
1947  6D                 ld l,l
1948  69                 ld l,c
1949  74                 ld (hl),h
194A  65                 ld h,l
194B  20 6C              jr nz,$19B9
194D  60                 ld h,b
194E  62                 ld h,d
194F  75                 ld (hl),l
1950  60                 ld h,b
1951  20 6B              jr nz,$19BE
1953  6C                 ld l,h
1954  61                 ld h,c
1955  77                 ld (hl),a
1956  69                 ld l,c
1957  7B                 ld a,e
1958  75                 ld (hl),l
1959  2E 22              ld l,34
195B  3A F1 65           ld a,($65F1)
195E  72                 ld (hl),d
195F  3D                 dec a
1960  30 0E              jr nc,$1970
1962  00                 nop
1963  00                 nop
1964  00                 nop
1965  00                 nop
1966  00                 nop
1967  0D                 dec c
1968  1F                 rra
1969  54                 ld d,h
196A  3E 00              ld a,0
196C  F1                 pop af
196D  78                 ld a,b
196E  3D                 dec a
196F  BF                 cp a
1970  31 0E 00           ld sp,$000E
1973  00                 nop
1974  01 00 00           ld bc,0
1977  3A FA 78           ld a,($78FA)
197A  3D                 dec a
197B  32 32 35           ld ($3532),a
197E  0E 00              ld c,0
1980  00                 nop
1981  E1                 pop hl
1982  00                 nop
1983  00                 nop
1984  C5                 push bc
1985  78                 ld a,b
1986  3D                 dec a
1987  32 35 34           ld ($3435),a
198A  0E 00              ld c,0
198C  00                 nop
198D  FE 00              cp 0
198F  00                 nop
1990  CB F1              set 6,c
1992  6D                 ld l,l
1993  24                 inc h
1994  3D                 dec a
1995  22 77 70           ld ($7077),hl
1998  72                 ld (hl),d
1999  61                 ld h,c
199A  77                 ld (hl),a
199B  6F                 ld l,a
199C  22 3A ED           ld ($ED3A),hl
199F  38 33              jr c,$19D4
19A1  30 30              jr nc,$19D3
19A3  0E 00              ld c,0
19A5  00                 nop
19A6  6C                 ld l,h
19A7  20 00              jr nz,$19A9
19A9  0D                 dec c
19AA  1F                 rra
19AB  5E                 ld e,(hl)
19AC  31 00 FA           ld sp,$FA00
19AF  78                 ld a,b
19B0  3D                 dec a
19B1  32 32 36           ld ($3632),a
19B4  0E 00              ld c,0
19B6  00                 nop
19B7  E2 00 00           jp po,$0000
19BA  C5                 push bc
19BB  78                 ld a,b
19BC  3D                 dec a
19BD  32 35 33           ld ($3335),a
19C0  0E 00              ld c,0
19C2  00                 nop
19C3  FD 00              nop
19C5  00                 nop
19C6  CB F1              set 6,c
19C8  6D                 ld l,l
19C9  24                 inc h
19CA  3D                 dec a
19CB  22 77 6C           ld ($6C77),hl
19CE  65                 ld h,l
19CF  77                 ld (hl),a
19D0  6F                 ld l,a
19D1  22 3A ED           ld ($ED3A),hl
19D4  38 33              jr c,$1A09
19D6  30 30              jr nc,$1A08
19D8  0E 00              ld c,0
19DA  00                 nop
19DB  6C                 ld l,h
19DC  20 00              jr nz,$19DE
19DE  0D                 dec c
19DF  1F                 rra
19E0  68                 ld l,b
19E1  30 00              jr nc,$19E3
19E3  FA 78 3D           jp m,$3D78
19E6  32 32 38           ld ($3832),a
19E9  0E 00              ld c,0
19EB  00                 nop
19EC  E4 00 00           call po,$0000
19EF  C5                 push bc
19F0  78                 ld a,b
19F1  3D                 dec a
19F2  32 35 31           ld ($3135),a
19F5  0E 00              ld c,0
19F7  00                 nop
19F8  FB                 ei
19F9  00                 nop
19FA  00                 nop
19FB  CB F1              set 6,c
19FD  6D                 ld l,l
19FE  24                 inc h
19FF  3D                 dec a
1A00  22 77 6E           ld ($6E77),hl
1A03  69                 ld l,c
1A04  7A                 ld a,d
1A05  22 3A ED           ld ($ED3A),hl
1A08  38 33              jr c,$1A3D
1A0A  30 30              jr nc,$1A3C
1A0C  0E 00              ld c,0
1A0E  00                 nop
1A0F  6C                 ld l,h
1A10  20 00              jr nz,$1A12
1A12  0D                 dec c
1A13  1F                 rra
1A14  72                 ld (hl),d
1A15  31 00 FA           ld sp,$FA00
1A18  78                 ld a,b
1A19  3D                 dec a
1A1A  32 33 32           ld ($3233),a
1A1D  0E 00              ld c,0
1A1F  00                 nop
1A20  E8                 ret pe
1A21  00                 nop
1A22  00                 nop
1A23  C5                 push bc
1A24  78                 ld a,b
1A25  3D                 dec a
1A26  32 34 37           ld ($3734),a
1A29  0E 00              ld c,0
1A2B  00                 nop
1A2C  F7                 rst 30h
1A2D  00                 nop
1A2E  00                 nop
1A2F  CB F1              set 6,c
1A31  6D                 ld l,l
1A32  24                 inc h
1A33  3D                 dec a
1A34  22 77 77           ld ($7777),hl
1A37  65                 ld h,l
1A38  72                 ld (hl),d
1A39  68                 ld l,b
1A3A  22 3A ED           ld ($ED3A),hl
1A3D  38 33              jr c,$1A72
1A3F  30 30              jr nc,$1A71
1A41  0E 00              ld c,0
1A43  00                 nop
1A44  6C                 ld l,h
1A45  20 00              jr nz,$1A47
1A47  0D                 dec c
1A48  1F                 rra
1A49  7C                 ld a,h
1A4A  31 00 FA           ld sp,$FA00
1A4D  78                 ld a,b
1A4E  3D                 dec a
1A4F  32 34 30           ld ($3034),a
1A52  0E 00              ld c,0
1A54  00                 nop
1A55  F0                 ret p
1A56  00                 nop
1A57  00                 nop
1A58  C5                 push bc
1A59  78                 ld a,b
1A5A  3D                 dec a
1A5B  32 33 39           ld ($3933),a
1A5E  0E 00              ld c,0
1A60  00                 nop
1A61  EF                 rst 28h
1A62  00                 nop
1A63  00                 nop
1A64  CB F1              set 6,c
1A66  6D                 ld l,l
1A67  24                 inc h
1A68  3D                 dec a
1A69  22 6F 67           ld ($676F),hl
1A6C  6F                 ld l,a
1A6D  6E                 ld l,(hl)
1A6E  78                 ld a,b
1A6F  22 3A ED           ld ($ED3A),hl
1A72  38 33              jr c,$1AA7
1A74  30 30              jr nc,$1AA6
1A76  0E 00              ld c,0
1A78  00                 nop
1A79  6C                 ld l,h
1A7A  20 00              jr nz,$1A7C
1A7C  0D                 dec c
1A7D  1F                 rra
1A7E  90                 sub b
1A7F  19                 add hl,de
1A80  00                 nop
1A81  F1                 pop af
1A82  6C                 ld l,h
1A83  24                 inc h
1A84  3D                 dec a
1A85  A6                 and (hl)
1A86  3A FA 6C           ld a,($6CFA)
1A89  24                 inc h
1A8A  3D                 dec a
1A8B  22 22 CB           ld ($CB22),hl
1A8E  EC 38 30           call pe,$3038
1A91  32 30 0E           ld ($0E30),a
1A94  00                 nop
1A95  00                 nop
1A96  54                 ld d,h
1A97  1F                 rra
1A98  00                 nop
1A99  0D                 dec c
1A9A  1F                 rra
1A9B  9A                 sbc a,d
1A9C  88                 adc a,b
1A9D  00                 nop
1A9E  F5                 push af
1A9F  23                 inc hl
1AA0  30 0E              jr nc,$1AB0
1AA2  00                 nop
1AA3  00                 nop
1AA4  00                 nop
1AA5  00                 nop
1AA6  00                 nop
1AA7  3B                 dec sp
1AA8  22 75 70           ld ($7075),hl
1AAB  72                 ld (hl),d
1AAC  61                 ld h,c
1AAD  77                 ld (hl),a
1AAE  6C                 ld l,h
1AAF  71                 ld (hl),c
1AB0  65                 ld h,l
1AB1  74                 ld (hl),h
1AB2  73                 ld (hl),e
1AB3  71                 ld (hl),c
1AB4  20 70              jr nz,$1B26
1AB6  72                 ld (hl),d
1AB7  61                 ld h,c
1AB8  77                 ld (hl),a
1AB9  69                 ld l,c
1ABA  6C                 ld l,h
1ABB  78                 ld a,b
1ABC  6E                 ld l,(hl)
1ABD  6F                 ld l,a
1ABE  3F                 ccf
1ABF  20 14              jr nz,$1AD5
1AC1  01 64 14           ld bc,$1464
1AC4  00                 nop
1AC5  20 69              jr nz,$1B30
1AC7  6C                 ld l,h
1AC8  69                 ld l,c
1AC9  20 14              jr nz,$1ADF
1ACB  01 6E 14           ld bc,$146E
1ACE  00                 nop
1ACF  22 3A ED           ld ($ED3A),hl
1AD2  32 36 36           ld ($3636),a
1AD5  30 0E              jr nc,$1AE5
1AD7  00                 nop
1AD8  00                 nop
1AD9  64                 ld h,h
1ADA  0A                 ld a,(bc)
1ADB  00                 nop
1ADC  3A F6 31           ld a,($31F6)
1ADF  39                 add hl,sp
1AE0  31 0E 00           ld sp,$000E
1AE3  00                 nop
1AE4  BF                 cp a
1AE5  00                 nop
1AE6  00                 nop
1AE7  2C                 inc l
1AE8  37                 scf
1AE9  0E 00              ld c,0
1AEB  00                 nop
1AEC  07                 rlca
1AED  00                 nop
1AEE  00                 nop
1AEF  3A FC 35           ld a,($35FC)
1AF2  37                 scf
1AF3  0E 00              ld c,0
1AF5  00                 nop
1AF6  39                 add hl,sp
1AF7  00                 nop
1AF8  00                 nop
1AF9  2C                 inc l
1AFA  30 0E              jr nc,$1B0A
1AFC  00                 nop
1AFD  00                 nop
1AFE  00                 nop
1AFF  00                 nop
1B00  00                 nop
1B01  3A F6 37           ld a,($37F6)
1B04  0E 00              ld c,0
1B06  00                 nop
1B07  07                 rlca
1B08  00                 nop
1B09  00                 nop
1B0A  2C                 inc l
1B0B  37                 scf
1B0C  0E 00              ld c,0
1B0E  00                 nop
1B0F  07                 rlca
1B10  00                 nop
1B11  00                 nop
1B12  3A FC 31           ld a,($31FC)
1B15  37                 scf
1B16  37                 scf
1B17  0E 00              ld c,0
1B19  00                 nop
1B1A  B1                 or c
1B1B  00                 nop
1B1C  00                 nop
1B1D  2C                 inc l
1B1E  30 0E              jr nc,$1B2E
1B20  00                 nop
1B21  00                 nop
1B22  00                 nop
1B23  00                 nop
1B24  00                 nop
1B25  0D                 dec c
1B26  1F                 rra
1B27  A4                 and h
1B28  5F                 ld e,a
1B29  00                 nop
1B2A  F5                 push af
1B2B  DA 28 28           jp c,$2828
1B2E  32 0E 00           ld ($000E),a
1B31  00                 nop
1B32  02                 ld (bc),a
1B33  00                 nop
1B34  00                 nop
1B35  2D                 dec l
1B36  65                 ld h,l
1B37  72                 ld (hl),d
1B38  29                 add hl,hl
1B39  2A 32 0E           ld hl,($0E32)
1B3C  00                 nop
1B3D  00                 nop
1B3E  02                 ld (bc),a
1B3F  00                 nop
1B40  00                 nop
1B41  29                 add hl,hl
1B42  3B                 dec sp
1B43  AC                 xor h
1B44  35                 dec (hl)
1B45  0E 00              ld c,0
1B47  00                 nop
1B48  05                 dec b
1B49  00                 nop
1B4A  00                 nop
1B4B  2C                 inc l
1B4C  31 0E 00           ld sp,$000E
1B4F  00                 nop
1B50  01 00 00           ld bc,0
1B53  3B                 dec sp
1B54  22 20 20           ld ($2020),hl
1B57  20 20              jr nz,$1B79
1B59  20 20              jr nz,$1B7B
1B5B  64                 ld h,h
1B5C  76                 halt
1B5D  6F                 ld l,a
1B5E  6A                 ld l,d
1B5F  73                 ld (hl),e
1B60  74                 ld (hl),h
1B61  69                 ld l,c
1B62  6B                 ld l,e
1B63  20 20              jr nz,$1B85
1B65  20 20              jr nz,$1B87
1B67  20 20              jr nz,$1B89
1B69  20 20              jr nz,$1B8B
1B6B  22 3B AC           ld ($AC3B),hl
1B6E  31 38 0E           ld sp,$0E38
1B71  00                 nop
1B72  00                 nop
1B73  12                 ld (de),a
1B74  00                 nop
1B75  00                 nop
1B76  2C                 inc l
1B77  32 35 0E           ld ($0E35),a
1B7A  00                 nop
1B7B  00                 nop
1B7C  19                 add hl,de
1B7D  00                 nop
1B7E  00                 nop
1B7F  3B                 dec sp
1B80  22 64 76           ld ($7664),hl
1B83  6F                 ld l,a
1B84  6A                 ld l,d
1B85  22 3A FE           ld ($FE3A),hl
1B88  0D                 dec c
1B89  20 6C              jr nz,$1BF7
1B8B  33                 inc sp
1B8C  00                 nop
1B8D  F5                 push af
1B8E  AC                 xor h
1B8F  31 33 0E           ld sp,$0E33
1B92  00                 nop
1B93  00                 nop
1B94  0D                 dec c
1B95  00                 nop
1B96  00                 nop
1B97  2C                 inc l
1B98  39                 add hl,sp
1B99  0E 00              ld c,0
1B9B  00                 nop
1B9C  09                 add hl,bc
1B9D  00                 nop
1B9E  00                 nop
1B9F  3B                 dec sp
1BA0  22 20 20           ld ($2020),hl
1BA3  20 20              jr nz,$1BC5
1BA5  20 20              jr nz,$1BC7
1BA7  22 3B AC           ld ($AC3B),hl
1BAA  31 33 0E           ld sp,$0E33
1BAD  00                 nop
1BAE  00                 nop
1BAF  0D                 dec c
1BB0  00                 nop
1BB1  00                 nop
1BB2  2C                 inc l
1BB3  39                 add hl,sp
1BB4  0E 00              ld c,0
1BB6  00                 nop
1BB7  09                 add hl,bc
1BB8  00                 nop
1BB9  00                 nop
1BBA  3B                 dec sp
1BBB  6D                 ld l,l
1BBC  24                 inc h
1BBD  3A FE 0D           ld a,($0DFE)
1BC0  23                 inc hl
1BC1  28 09              jr z,$1BCC
1BC3  00                 nop
1BC4  EA 14 01           jp pe,$0114
1BC7  43                 ld b,e
1BC8  4C                 ld c,h
1BC9  53                 ld d,e
1BCA  14                 inc d
1BCB  00                 nop
1BCC  0D                 dec c
1BCD  23                 inc hl
1BCE  32 14 00           ld ($0014),a
1BD1  EB                 ex de,hl
1BD2  69                 ld l,c
1BD3  3D                 dec a
1BD4  36 0E              ld (hl),14
1BD6  00                 nop
1BD7  00                 nop
1BD8  06 00              ld b,0
1BDA  00                 nop
1BDB  CC 32 30           call z,$3032
1BDE  0E 00              ld c,0
1BE0  00                 nop
1BE1  14                 inc d
1BE2  00                 nop
1BE3  00                 nop
1BE4  0D                 dec c
1BE5  23                 inc hl
1BE6  3C                 inc a
1BE7  25                 dec h
1BE8  00                 nop
1BE9  F5                 push af
1BEA  AC                 xor h
1BEB  69                 ld l,c
1BEC  2C                 inc l
1BED  31 0E 00           ld sp,$000E
1BF0  00                 nop
1BF1  01 00 00           ld bc,0
1BF4  3B                 dec sp
1BF5  22 20 20           ld ($2020),hl
1BF8  20 20              jr nz,$1C1A
1BFA  20 20              jr nz,$1C1C
1BFC  20 20              jr nz,$1C1E
1BFE  20 20              jr nz,$1C20
1C00  20 20              jr nz,$1C22
1C02  20 20              jr nz,$1C24
1C04  20 20              jr nz,$1C26
1C06  20 20              jr nz,$1C28
1C08  20 20              jr nz,$1C2A
1C0A  20 20              jr nz,$1C2C
1C0C  22 0D 23           ld ($230D),hl
1C0F  46                 ld b,(hl)
1C10  05                 dec b
1C11  00                 nop
1C12  F3                 di
1C13  69                 ld l,c
1C14  3A FE 0D           ld a,($0DFE)
1C17  23                 inc hl
1C18  8C                 adc a,h
1C19  0D                 dec c
1C1A  00                 nop
1C1B  EA 14 01           jp pe,$0114
1C1E  7D                 ld a,l
1C1F  69                 ld l,c
1C20  74                 ld (hl),h
1C21  20 64              jr nz,$1C87
1C23  2F                 cpl
1C24  6E                 ld l,(hl)
1C25  14                 inc d
1C26  00                 nop
1C27  0D                 dec c
1C28  23                 inc hl
1C29  96                 sub (hl)
1C2A  06 00              ld b,0
1C2C  F1                 pop af
1C2D  63                 ld h,e
1C2E  24                 inc h
1C2F  3D                 dec a
1C30  A6                 and (hl)
1C31  0D                 dec c
1C32  23                 inc hl
1C33  A0                 and b
1C34  25                 dec h
1C35  00                 nop
1C36  FA 63 24           jp m,$2463
1C39  3D                 dec a
1C3A  22 64 22           ld ($2264),hl
1C3D  C5                 push bc
1C3E  63                 ld h,e
1C3F  24                 inc h
1C40  3D                 dec a
1C41  22 44 22           ld ($2244),hl
1C44  CB F1              set 6,c
1C46  63                 ld h,e
1C47  24                 inc h
1C48  3D                 dec a
1C49  22 64 22           ld ($2264),hl
1C4C  3A F1 74           ld a,($74F1)
1C4F  6E                 ld l,(hl)
1C50  3D                 dec a
1C51  31 0E 00           ld sp,$000E
1C54  00                 nop
1C55  01 00 00           ld bc,0
1C58  3A FE 0D           ld a,($0DFE)
1C5B  23                 inc hl
1C5C  AA                 xor d
1C5D  25                 dec h
1C5E  00                 nop
1C5F  FA 63 24           jp m,$2463
1C62  3D                 dec a
1C63  22 6E 22           ld ($226E),hl
1C66  C5                 push bc
1C67  63                 ld h,e
1C68  24                 inc h
1C69  3D                 dec a
1C6A  22 4E 22           ld ($224E),hl
1C6D  CB F1              set 6,c
1C6F  63                 ld h,e
1C70  24                 inc h
1C71  3D                 dec a
1C72  22 6E 22           ld ($226E),hl
1C75  3A F1 74           ld a,($74F1)
1C78  6E                 ld l,(hl)
1C79  3D                 dec a
1C7A  31 0E 00           ld sp,$000E
1C7D  00                 nop
1C7E  01 00 00           ld bc,0
1C81  3A FE 0D           ld a,($0DFE)
1C84  23                 inc hl
1C85  B4                 or h
1C86  0E 00              ld c,0
1C88  F1                 pop af
1C89  74                 ld (hl),h
1C8A  6E                 ld l,(hl)
1C8B  3D                 dec a
1C8C  30 0E              jr nc,$1C9C
1C8E  00                 nop
1C8F  00                 nop
1C90  00                 nop
1C91  00                 nop
1C92  00                 nop
1C93  3A FE 0D           ld a,($0DFE)
1C96  23                 inc hl
1C97  F0                 ret p
1C98  0D                 dec c
1C99  00                 nop
1C9A  EA 14 01           jp pe,$0114
1C9D  70                 ld (hl),b
1C9E  61                 ld h,c
1C9F  75                 ld (hl),l
1CA0  7A                 ld a,d
1CA1  61                 ld h,c
1CA2  14                 inc d
1CA3  00                 nop
1CA4  14                 inc d
1CA5  00                 nop
1CA6  0D                 dec c
1CA7  23                 inc hl
1CA8  FA 32 00           jp m,$0032
1CAB  F5                 push af
1CAC  23                 inc hl
1CAD  30 0E              jr nc,$1CBD
1CAF  00                 nop
1CB0  00                 nop
1CB1  00                 nop
1CB2  00                 nop
1CB3  00                 nop
1CB4  3B                 dec sp
1CB5  22 20 6E           ld ($6E20),hl
1CB8  61                 ld h,c
1CB9  76                 halt
1CBA  6D                 ld l,l
1CBB  69                 ld l,c
1CBC  74                 ld (hl),h
1CBD  65                 ld h,l
1CBE  20 6C              jr nz,$1D2C
1CC0  60                 ld h,b
1CC1  62                 ld h,d
1CC2  75                 ld (hl),l
1CC3  60                 ld h,b
1CC4  20 6B              jr nz,$1D31
1CC6  6C                 ld l,h
1CC7  61                 ld h,c
1CC8  77                 ld (hl),a
1CC9  69                 ld l,c
1CCA  7B                 ld a,e
1CCB  75                 ld (hl),l
1CCC  22 3A F2           ld ($F23A),hl
1CCF  30 0E              jr nc,$1CDF
1CD1  00                 nop
1CD2  00                 nop
1CD3  00                 nop
1CD4  00                 nop
1CD5  00                 nop
1CD6  3A EE 22           ld a,($22EE)
1CD9  22 3A FE           ld ($FE3A),hl
1CDC  0D                 dec c
1CDD  E9                 jp (hl)
1CDE  00                 nop
1CDF  00                 nop
1CE0  15                 dec d
1CE1  00                 nop
1CE2  00                 nop
1CE3  00                 nop
1CE4  00                 nop
1CE5  14                 inc d
1CE6  00                 nop
1CE7  00                 nop
1CE8  00                 nop
1CE9  00                 nop
1CEA  01 00 00           ld bc,0
1CED  32 23 02           ld ($0223),a
1CF0  A5                 and l
1CF1  F2 00 00           jp p,$0000
1CF4  00                 nop
1CF5  00                 nop
1CF6  00                 nop
1CF7  78                 ld a,b
1CF8  00                 nop
1CF9  00                 nop
1CFA  06 00              ld b,0
1CFC  00                 nop
1CFD  B4                 or h
1CFE  EE 00              xor $00
1D00  00                 nop
1D01  01 00 00           ld bc,0
1D04  53                 ld d,e
1D05  06 00              ld b,0
1D07  20 74              jr nz,$1D7D
1D09  65                 ld h,l
1D0A  73                 ld (hl),e
1D0B  74                 ld (hl),h
1D0C  20 42              jr nz,$1D50
1D0E  06 00              ld b,0
1D10  73                 ld (hl),e
1D11  77                 ld (hl),a
1D12  65                 ld h,l
1D13  74                 ld (hl),h
1D14  6C                 ld l,h
1D15  6F                 ld l,a
1D16  79                 ld a,c
1D17  00                 nop
1D18  00                 nop
1D19  03                 inc bc
1D1A  00                 nop
1D1B  00                 nop
1D1C  66                 ld h,(hl)
1D1D  00                 nop
1D1E  00                 nop
1D1F  01 00 00           ld bc,0
1D22  4C                 ld c,h
1D23  00                 nop
1D24  00                 nop
1D25  4D                 ld c,l
1D26  05                 dec b
1D27  00                 nop
1D28  73                 ld (hl),e
1D29  65                 ld h,l
1D2A  72                 ld (hl),d
1D2B  79                 ld a,c
1D2C  6A                 ld l,d
1D2D  43                 ld b,e
1D2E  01 00 64           ld bc,$6400
0000  03                 inc bc
0001  54                 ld d,h
0002  4B                 ld c,e
0003  20 56              jr nz,$005B
0005  31 2E 30           ld sp,$302E
0008  52                 ld d,d
0009  20 20              jr nz,$002B
000B  A8                 xor b
000C  04                 inc b
000D  58                 ld e,b
000E  7B                 ld a,e
000F  50                 ld d,b
0010  80                 add a,b
7B58  00                 nop
7B59  30 48              jr nc,$7BA3
7B5B  48                 ld c,b
7B5C  30 00              jr nc,$7B5E
7B5E  78                 ld a,b
7B5F  00                 nop
7B60  00                 nop
7B61  7C                 ld a,h
7B62  42                 ld b,d
7B63  7C                 ld a,h
7B64  42                 ld b,d
7B65  42                 ld b,d
7B66  7C                 ld a,h
7B67  00                 nop
7B68  00                 nop
7B69  3C                 inc a
7B6A  42                 ld b,d
7B6B  40                 ld b,b
7B6C  40                 ld b,b
7B6D  42                 ld b,d
7B6E  3C                 inc a
7B6F  00                 nop
7B70  00                 nop
7B71  3C                 inc a
7B72  42                 ld b,d
7B73  42                 ld b,d
7B74  7E                 ld a,(hl)
7B75  42                 ld b,d
7B76  43                 ld b,e
7B77  03                 inc bc
7B78  18 3C              jr $7BB6
7B7A  42                 ld b,d
7B7B  40                 ld b,b
7B7C  40                 ld b,b
7B7D  42                 ld b,d
7B7E  3C                 inc a
7B7F  00                 nop
7B80  00                 nop
7B81  7E                 ld a,(hl)
7B82  40                 ld b,b
7B83  7C                 ld a,h
7B84  40                 ld b,b
7B85  40                 ld b,b
7B86  7F                 ld a,a
7B87  03                 inc bc
7B88  18 7E              jr $7C08
7B8A  40                 ld b,b
7B8B  7C                 ld a,h
7B8C  40                 ld b,b
7B8D  40                 ld b,b
7B8E  7E                 ld a,(hl)
7B8F  00                 nop
7B90  00                 nop
7B91  3E 08              ld a,8
7B93  08                 ex af,af'
7B94  08                 ex af,af'
7B95  08                 ex af,af'
7B96  3F                 ccf
7B97  03                 inc bc
7B98  18 3C              jr $7BD6
7B9A  40                 ld b,b
7B9B  3C                 inc a
7B9C  02                 ld (bc),a
7B9D  42                 ld b,d
7B9E  3C                 inc a
7B9F  00                 nop
7BA0  00                 nop
7BA1  42                 ld b,d
7BA2  42                 ld b,d
7BA3  42                 ld b,d
7BA4  42                 ld b,d
7BA5  42                 ld b,d
7BA6  3F                 ccf
7BA7  03                 inc bc
7BA8  18 42              jr $7BEC
7BAA  42                 ld b,d
7BAB  42                 ld b,d
7BAC  42                 ld b,d
7BAD  42                 ld b,d
7BAE  3C                 inc a
7BAF  00                 nop
7BB0  18 7E              jr $7C30
7BB2  04                 inc b
7BB3  08                 ex af,af'
7BB4  10 20              djnz $7BD6
7BB6  7E                 ld a,(hl)
7BB7  00                 nop
7BB8  00                 nop
7BB9  00                 nop
7BBA  38 04              jr c,$7BC0
7BBC  3C                 inc a
7BBD  44                 ld b,h
7BBE  3F                 ccf
7BBF  03                 inc bc
7BC0  14                 inc d
7BC1  08                 ex af,af'
7BC2  1C                 inc e
7BC3  20 20              jr nz,$7BE5
7BC5  20 1C              jr nz,$7BE3
7BC7  00                 nop
7BC8  00                 nop
7BC9  00                 nop
7BCA  38 44              jr c,$7C10
7BCC  78                 ld a,b
7BCD  40                 ld b,b
7BCE  3F                 ccf
7BCF  03                 inc bc
7BD0  30 00              jr nc,$7BD2
7BD2  38 44              jr c,$7C18
7BD4  78                 ld a,b
7BD5  40                 ld b,b
7BD6  3C                 inc a
7BD7  00                 nop
7BD8  00                 nop
7BD9  10 00              djnz $7BDB
7BDB  30 10              jr nc,$7BED
7BDD  10 3E              djnz $7C1D
7BDF  06 28              ld b,40
7BE1  10 38              djnz $7C1B
7BE3  40                 ld b,b
7BE4  38 04              jr c,$7BEA
7BE6  78                 ld a,b
7BE7  00                 nop
7BE8  00                 nop
7BE9  00                 nop
7BEA  44                 ld b,h
7BEB  44                 ld b,h
7BEC  44                 ld b,h
7BED  44                 ld b,h
7BEE  3E 06              ld a,6
7BF0  00                 nop
7BF1  38 00              jr c,$7BF3
7BF3  44                 ld b,h
7BF4  44                 ld b,h
7BF5  44                 ld b,h
7BF6  38 00              jr c,$7BF8
7BF8  28 10              jr z,$7C0A
7BFA  7C                 ld a,h
7BFB  08                 ex af,af'
7BFC  10 20              djnz $7C1E
7BFE  7C                 ld a,h
7BFF  00                 nop
7C00  1F                 rra
7C01  A9                 xor c
7C02  81                 add a,c
7C03  AC                 xor h
7C04  81                 add a,c
7C05  FF                 rst 38h
7C06  88                 adc a,b
7C07  81                 add a,c
7C08  00                 nop
7C09  00                 nop
7C0A  FF                 rst 38h
7C0B  69                 ld l,c
7C0C  81                 add a,c
7C0D  00                 nop
7C0E  00                 nop
7C0F  27                 daa
7C10  4A                 ld c,d
7C11  81                 add a,c
7C12  CC 81 27           call z,$2781
7C15  49                 ld c,c
7C16  81                 add a,c
7C17  C8                 ret z
7C18  81                 add a,c
7C19  FF                 rst 38h
7C1A  68                 ld l,b
7C1B  81                 add a,c
7C1C  00                 nop
7C1D  00                 nop
7C1E  1F                 rra
7C1F  87                 add a,a
7C20  81                 add a,c
7C21  6E                 ld l,(hl)
7C22  81                 add a,c
7C23  FF                 rst 38h
7C24  A8                 xor b
7C25  81                 add a,c
7C26  00                 nop
7C27  00                 nop
7C28  18 AA              jr $7BD4
7C2A  81                 add a,c
7C2B  AD                 xor l
7C2C  81                 add a,c
7C2D  1F                 rra
7C2E  89                 adc a,c
7C2F  81                 add a,c
7C30  2B                 dec hl
7C31  81                 add a,c
7C32  FF                 rst 38h
7C33  6A                 ld l,d
7C34  81                 add a,c
7C35  00                 nop
7C36  00                 nop
7C37  27                 daa
7C38  4B                 ld c,e
7C39  81                 add a,c
7C3A  CB 81              res 0,c
7C3C  27                 daa
7C3D  48                 ld c,b
7C3E  81                 add a,c
7C3F  28 81              jr z,$7BC2
7C41  FF                 rst 38h
7C42  67                 ld h,a
7C43  81                 add a,c
7C44  00                 nop
7C45  00                 nop
7C46  1F                 rra
7C47  86                 add a,(hl)
7C48  81                 add a,c
7C49  4F                 ld c,a
7C4A  81                 add a,c
7C4B  1F                 rra
7C4C  A7                 and a
7C4D  81                 add a,c
7C4E  6F                 ld l,a
7C4F  81                 add a,c
7C50  18 AB              jr $7BFD
7C52  81                 add a,c
7C53  AE                 xor (hl)
7C54  81                 add a,c
7C55  FF                 rst 38h
7C56  8A                 adc a,d
7C57  81                 add a,c
7C58  00                 nop
7C59  00                 nop
7C5A  1F                 rra
7C5B  6B                 ld l,e
7C5C  81                 add a,c
7C5D  2C                 inc l
7C5E  81                 add a,c
7C5F  27                 daa
7C60  4C                 ld c,h
7C61  81                 add a,c
7C62  C9                 ret
7C63  81                 add a,c
7C64  27                 daa
7C65  47                 ld b,a
7C66  81                 add a,c
7C67  27                 daa
7C68  81                 add a,c
7C69  FF                 rst 38h
7C6A  66                 ld h,(hl)
7C6B  81                 add a,c
7C6C  00                 nop
7C6D  00                 nop
7C6E  1F                 rra
7C6F  85                 add a,l
7C70  81                 add a,c
7C71  50                 ld d,b
7C72  81                 add a,c
7C73  FF                 rst 38h
7C74  A6                 and (hl)
7C75  81                 add a,c
7C76  00                 nop
7C77  00                 nop
7C78  27                 daa
7C79  A4                 and h
7C7A  01 2A 81           ld bc,$812A
7C7D  FF                 rst 38h
7C7E  8B                 adc a,e
7C7F  81                 add a,c
7C80  00                 nop
7C81  00                 nop
7C82  18 6C              jr $7CF0
7C84  81                 add a,c
7C85  8C                 adc a,h
7C86  81                 add a,c
7C87  27                 daa
7C88  4D                 ld c,l
7C89  81                 add a,c
7C8A  29                 add hl,hl
7C8B  81                 add a,c
7C8C  27                 daa
7C8D  46                 ld b,(hl)
7C8E  81                 add a,c
7C8F  26 81              ld h,-127
7C91  FF                 rst 38h
7C92  65                 ld h,l
7C93  81                 add a,c
7C94  00                 nop
7C95  00                 nop
7C96  FF                 rst 38h
7C97  84                 add a,h
7C98  81                 add a,c
7C99  00                 nop
7C9A  00                 nop
7C9B  FF                 rst 38h
7C9C  A5                 and l
7C9D  81                 add a,c
7C9E  00                 nop
7C9F  00                 nop
7CA0  27                 daa
7CA1  CA 81 2E           jp z,$2E81
7CA4  81                 add a,c
7CA5  FF                 rst 38h
7CA6  8E                 adc a,(hl)
7CA7  81                 add a,c
7CA8  00                 nop
7CA9  00                 nop
7CAA  18 6D              jr $7D19
7CAC  81                 add a,c
7CAD  8D                 adc a,l
7CAE  81                 add a,c
7CAF  27                 daa
7CB0  4E                 ld c,(hl)
7CB1  81                 add a,c
7CB2  2D                 dec l
7CB3  81                 add a,c
7CB4  27                 daa
7CB5  45                 ld b,l
7CB6  81                 add a,c
7CB7  25                 dec h
7CB8  81                 add a,c
7CB9  FF                 rst 38h
7CBA  64                 ld h,h
7CBB  81                 add a,c
7CBC  00                 nop
7CBD  00                 nop
7CBE  FF                 rst 38h
7CBF  83                 add a,e
7CC0  81                 add a,c
7CC1  00                 nop
7CC2  00                 nop
7CC3  FF                 rst 38h
7CC4  24                 inc h
7CC5  01 00 00           ld bc,0
7CC8  F3                 di
7CC9  06 3F              ld b,63
7CCB  C5                 push bc
7CCC  CD 8E 02           call $028E
7CCF  20 FB              jr nz,$7CCC
7CD1  1C                 inc e
7CD2  28 F8              jr z,$7CCC
7CD4  1D                 dec e
7CD5  7A                 ld a,d
7CD6  14                 inc d
7CD7  20 05              jr nz,$7CDE
7CD9  CD 34 7D           call $7D34
7CDC  18 08              jr $7CE6
7CDE  CD 34 7D           call $7D34
7CE1  BE                 cp (hl)
7CE2  20 E8              jr nz,$7CCC
7CE4  23                 inc hl
7CE5  23                 inc hl
7CE6  23                 inc hl
7CE7  4E                 ld c,(hl)
7CE8  23                 inc hl
7CE9  46                 ld b,(hl)
7CEA  78                 ld a,b
7CEB  E6 0F              and $0F
7CED  67                 ld h,a
7CEE  69                 ld l,c
7CEF  11 00 58           ld de,$5800
7CF2  19                 add hl,de
7CF3  7E                 ld a,(hl)
7CF4  FE 20              cp 32
7CF6  20 05              jr nz,$7CFD
7CF8  C1                 pop bc
7CF9  04                 inc b
7CFA  C5                 push bc
7CFB  18 2C              jr $7D29
7CFD  36 20              ld (hl),32
7CFF  78                 ld a,b
7D00  17                 rla
7D01  38 26              jr c,$7D29
7D03  00                 nop
7D04  00                 nop
7D05  00                 nop
7D06  17                 rla
7D07  38 20              jr c,$7D29
7D09  17                 rla
7D0A  38 0E              jr c,$7D1A
7D0C  17                 rla
7D0D  30 14              jr nc,$7D23
7D0F  11 0B 00           ld de,11
7D12  19                 add hl,de
7D13  36 20              ld (hl),32
7D15  23                 inc hl
7D16  36 20              ld (hl),32
7D18  18 0F              jr $7D29
7D1A  06 04              ld b,4
7D1C  23                 inc hl
7D1D  36 20              ld (hl),32
7D1F  10 FB              djnz $7D1C
7D21  18 06              jr $7D29
7D23  11 0B 00           ld de,11
7D26  19                 add hl,de
7D27  36 20              ld (hl),32
7D29  CD 8E 02           call $028E
7D2C  1C                 inc e
7D2D  20 FA              jr nz,$7D29
7D2F  C1                 pop bc
7D30  10 99              djnz $7CCB
7D32  FB                 ei
7D33  C9                 ret
7D34  16 00              ld d,0
7D36  6B                 ld l,e
7D37  62                 ld h,d
7D38  CB 25              sla l
7D3A  CB 25              sla l
7D3C  19                 add hl,de
7D3D  11 00 7C           ld de,$7C00
7D40  19                 add hl,de
7D41  C9                 ret
7D42  11 00 01           ld de,256
7D45  DD 21 00 00        ld ix,$0000
7D49  3E FF              ld a,-1
7D4B  C3 C2 04           jp $04C2
7D4E  11 00 01           ld de,256
7D51  DD 21 00 00        ld ix,$0000
7D55  3E FF              ld a,-1
7D57  A7                 and a
7D58  CD 56 05           call $0556
7D5B  06 00              ld b,0
7D5D  38 03              jr c,$7D62
7D5F  0E 01              ld c,1
7D61  C9                 ret
7D62  28 FB              jr z,$7D5F
7D64  0E 00              ld c,0
7D66  C9                 ret
7D67  DD 21 00 00        ld ix,$0000
7D6B  01 40 00           ld bc,64
7D6E  21 00 00           ld hl,0
7D71  16 00              ld d,0
7D73  DD 5E 00           ld e,(ix+0)
7D76  19                 add hl,de
7D77  DD 23              inc ix
7D79  10 F8              djnz $7D73
7D7B  0D                 dec c
7D7C  20 F5              jr nz,$7D73
7D7E  44                 ld b,h
7D7F  4D                 ld c,l
7D80  C9                 ret
7D81  F3                 di
7D82  01 00 80           ld bc,$8000
7D85  CD D7 7D           call $7DD7
7D88  20 49              jr nz,$7DD3
7D8A  01 00 C0           ld bc,$C000
7D8D  CD D7 7D           call $7DD7
7D90  20 41              jr nz,$7DD3
7D92  21 00 40           ld hl,$4000
7D95  11 00 80           ld de,$8000
7D98  01 00 40           ld bc,$4000
7D9B  ED B0              ldir
7D9D  C3 A0 BD           jp $BDA0
7DA0  ED 73 D5 7D        ld ($7DD5),sp
7DA4  2A D5 7D           ld hl,($7DD5)
7DA7  11 00 40           ld de,$4000
7DAA  19                 add hl,de
7DAB  F9                 ld sp,hl
7DAC  01 00 40           ld bc,$4000
7DAF  CD D7 BD           call $BDD7
7DB2  C5                 push bc
7DB3  21 00 80           ld hl,$8000
7DB6  11 00 40           ld de,$4000
7DB9  01 00 40           ld bc,$4000
7DBC  ED B0              ldir
7DBE  C3 C1 7D           jp $7DC1
7DC1  ED 73 D5 7D        ld ($7DD5),sp
7DC5  2A D5 7D           ld hl,($7DD5)
7DC8  11 00 C0           ld de,$C000
7DCB  19                 add hl,de
7DCC  F9                 ld sp,hl
7DCD  C1                 pop bc
7DCE  20 03              jr nz,$7DD3
7DD0  01 00 00           ld bc,0
7DD3  FB                 ei
7DD4  C9                 ret
7DD5  3B                 dec sp
7DD6  BB                 cp e
7DD7  DD 21 00 00        ld ix,$0000
7DDB  21 00 40           ld hl,$4000
7DDE  DD 7E 00           ld a,(ix+0)
7DE1  57                 ld d,a
7DE2  02                 ld (bc),a
7DE3  0A                 ld a,(bc)
7DE4  BA                 cp d
7DE5  C0                 ret nz
7DE6  2F                 cpl
7DE7  57                 ld d,a
7DE8  02                 ld (bc),a
7DE9  0A                 ld a,(bc)
7DEA  BA                 cp d
7DEB  C0                 ret nz
7DEC  DD 23              inc ix
7DEE  03                 inc bc
7DEF  2D                 dec l
7DF0  20 EC              jr nz,$7DDE
7DF2  25                 dec h
7DF3  20 E9              jr nz,$7DDE
7DF5  C9                 ret
7DF6  00                 nop
7DF7  00                 nop
7DF8  00                 nop
7DF9  00                 nop
7DFA  00                 nop
7DFB  00                 nop
7DFC  00                 nop
7DFD  00                 nop
7DFE  00                 nop
7DFF  00                 nop
7E00  00                 nop
7E01  00                 nop
7E02  00                 nop
7E03  00                 nop
7E04  00                 nop
7E05  00                 nop
7E06  00                 nop
7E07  00                 nop
7E08  00                 nop
7E09  00                 nop
7E0A  00                 nop
7E0B  00                 nop
7E0C  00                 nop
7E0D  00                 nop
7E0E  00                 nop
7E0F  00                 nop
7E10  00                 nop
7E11  00                 nop
7E12  00                 nop
7E13  00                 nop
7E14  00                 nop
7E15  00                 nop
7E16  00                 nop
7E17  00                 nop
7E18  00                 nop
7E19  00                 nop
7E1A  00                 nop
7E1B  00                 nop
7E1C  00                 nop
7E1D  00                 nop
7E1E  00                 nop
7E1F  00                 nop
7E20  00                 nop
7E21  00                 nop
7E22  00                 nop
7E23  00                 nop
7E24  00                 nop
7E25  00                 nop
7E26  00                 nop
7E27  00                 nop
7E28  00                 nop
7E29  00                 nop
7E2A  00                 nop
7E2B  00                 nop
7E2C  00                 nop
7E2D  00                 nop
7E2E  00                 nop
7E2F  00                 nop
7E30  00                 nop
7E31  00                 nop
7E32  00                 nop
7E33  00                 nop
7E34  00                 nop
7E35  00                 nop
7E36  00                 nop
7E37  00                 nop
7E38  00                 nop
7E39  00                 nop
7E3A  00                 nop
7E3B  00                 nop
7E3C  00                 nop
7E3D  00                 nop
7E3E  00                 nop
7E3F  00                 nop
7E40  00                 nop
7E41  00                 nop
7E42  00                 nop
7E43  00                 nop
7E44  00                 nop
7E45  00                 nop
7E46  00                 nop
7E47  00                 nop
7E48  00                 nop
7E49  00                 nop
7E4A  00                 nop
7E4B  00                 nop
7E4C  00                 nop
7E4D  00                 nop
7E4E  00                 nop
7E4F  00                 nop
7E50  00                 nop
7E51  00                 nop
7E52  00                 nop
7E53  00                 nop
7E54  00                 nop
7E55  00                 nop
7E56  00                 nop
7E57  00                 nop
7E58  00                 nop
7E59  00                 nop
7E5A  00                 nop
7E5B  00                 nop
7E5C  00                 nop
7E5D  00                 nop
7E5E  00                 nop
7E5F  00                 nop
7E60  00                 nop
7E61  00                 nop
7E62  00                 nop
7E63  00                 nop
7E64  00                 nop
7E65  00                 nop
7E66  00                 nop
7E67  00                 nop
7E68  00                 nop
7E69  00                 nop
7E6A  00                 nop
7E6B  00                 nop
7E6C  00                 nop
7E6D  00                 nop
7E6E  00                 nop
7E6F  00                 nop
7E70  00                 nop
7E71  00                 nop
7E72  00                 nop
7E73  00                 nop
7E74  00                 nop
7E75  00                 nop
7E76  00                 nop
7E77  00                 nop
7E78  00                 nop
7E79  00                 nop
7E7A  00                 nop
7E7B  00                 nop
7E7C  00                 nop
7E7D  00                 nop
7E7E  00                 nop
7E7F  00                 nop
7E80  00                 nop
7E81  00                 nop
7E82  00                 nop
7E83  00                 nop
7E84  00                 nop
7E85  00                 nop
7E86  00                 nop
7E87  00                 nop
7E88  00                 nop
7E89  00                 nop
7E8A  00                 nop
7E8B  00                 nop
7E8C  00                 nop
7E8D  00                 nop
7E8E  00                 nop
7E8F  00                 nop
7E90  00                 nop
7E91  00                 nop
7E92  00                 nop
7E93  00                 nop
7E94  00                 nop
7E95  00                 nop
7E96  00                 nop
7E97  00                 nop
7E98  00                 nop
7E99  00                 nop
7E9A  00                 nop
7E9B  00                 nop
7E9C  00                 nop
7E9D  00                 nop
7E9E  00                 nop
7E9F  00                 nop
7EA0  00                 nop
7EA1  00                 nop
7EA2  00                 nop
7EA3  00                 nop
7EA4  00                 nop
7EA5  00                 nop
7EA6  00                 nop
7EA7  00                 nop
7EA8  00                 nop
7EA9  00                 nop
7EAA  00                 nop
7EAB  00                 nop
7EAC  00                 nop
7EAD  00                 nop
7EAE  00                 nop
7EAF  00                 nop
7EB0  00                 nop
7EB1  00                 nop
7EB2  00                 nop
7EB3  00                 nop
7EB4  00                 nop
7EB5  00                 nop
7EB6  00                 nop
7EB7  00                 nop
7EB8  00                 nop
7EB9  00                 nop
7EBA  00                 nop
7EBB  00                 nop
7EBC  00                 nop
7EBD  00                 nop
7EBE  00                 nop
7EBF  00                 nop
7EC0  00                 nop
7EC1  00                 nop
7EC2  00                 nop
7EC3  00                 nop
7EC4  00                 nop
7EC5  00                 nop
7EC6  00                 nop
7EC7  00                 nop
7EC8  00                 nop
7EC9  00                 nop
7ECA  00                 nop
7ECB  00                 nop
7ECC  00                 nop
7ECD  00                 nop
7ECE  00                 nop
7ECF  00                 nop
7ED0  00                 nop
7ED1  00                 nop
7ED2  00                 nop
7ED3  00                 nop
7ED4  00                 nop
7ED5  00                 nop
7ED6  00                 nop
7ED7  00                 nop
7ED8  00                 nop
7ED9  00                 nop
7EDA  00                 nop
7EDB  00                 nop
7EDC  00                 nop
7EDD  00                 nop
7EDE  00                 nop
7EDF  00                 nop
7EE0  00                 nop
7EE1  00                 nop
7EE2  00                 nop
7EE3  00                 nop
7EE4  00                 nop
7EE5  00                 nop
7EE6  00                 nop
7EE7  00                 nop
7EE8  00                 nop
7EE9  00                 nop
7EEA  00                 nop
7EEB  00                 nop
7EEC  00                 nop
7EED  00                 nop
7EEE  00                 nop
7EEF  00                 nop
7EF0  00                 nop
7EF1  00                 nop
7EF2  00                 nop
7EF3  00                 nop
7EF4  00                 nop
7EF5  00                 nop
7EF6  00                 nop
7EF7  00                 nop
7EF8  00                 nop
7EF9  00                 nop
7EFA  00                 nop
7EFB  00                 nop
7EFC  00                 nop
7EFD  00                 nop
7EFE  00                 nop
7EFF  00                 nop
7F00  00                 nop
7F01  00                 nop
7F02  00                 nop
7F03  00                 nop
7F04  00                 nop
7F05  00                 nop
7F06  00                 nop
7F07  00                 nop
7F08  CD 7C 00           call $007C
7F0B  3B                 dec sp
7F0C  3B                 dec sp
7F0D  E1                 pop hl
7F0E  01 0F 00           ld bc,15
7F11  09                 add hl,bc
7F12  EB                 ex de,hl
7F13  2A 3D 5C           ld hl,($5C3D)
7F16  73                 ld (hl),e
7F17  23                 inc hl
7F18  72                 ld (hl),d
7F19  C9                 ret
7F1A  3B                 dec sp
7F1B  3B                 dec sp
7F1C  CD 8E 02           call $028E
7F1F  7B                 ld a,e
7F20  FE FF              cp -1
7F22  20 F8              jr nz,$7F1C
7F24  3A 3A 5C           ld a,($5C3A)
7F27  FE FF              cp -1
7F29  28 21              jr z,$7F4C
7F2B  FE 07              cp 7
7F2D  28 1D              jr z,$7F4C
7F2F  FE 08              cp 8
7F31  28 19              jr z,$7F4C
7F33  3C                 inc a
7F34  32 81 5C           ld ($5C81),a
7F37  FD 36 00 FF        ld (iy+0),-1
7F3B  21 82 00           ld hl,130
7F3E  22 42 5C           ld ($5C42),hl
7F41  AF                 xor a
7F42  32 44 5C           ld ($5C44),a
7F45  FD CB 01 FE        set 7,(iy+1)
7F49  C3 7D 1B           jp $1B7D
7F4C  33                 inc sp
7F4D  33                 inc sp
7F4E  C3 03 13           jp $1303
7F51  00                 nop
7F52  00                 nop
7F53  00                 nop
7F54  00                 nop
7F55  00                 nop
7F56  00                 nop
7F57  00                 nop
7F58  00                 nop
7F59  76                 halt
7F5A  25                 dec h
7F5B  25                 dec h
7F5C  26 26              ld h,38
7F5E  25                 dec h
7F5F  00                 nop
7F60  00                 nop
7F61  77                 ld (hl),a
7F62  25                 dec h
7F63  25                 dec h
7F64  25                 dec h
7F65  25                 dec h
7F66  75                 ld (hl),l
7F67  00                 nop
7F68  00                 nop
7F69  66                 ld h,(hl)
7F6A  55                 ld d,l
7F6B  65                 ld h,l
7F6C  56                 ld d,(hl)
7F6D  56                 ld d,(hl)
7F6E  65                 ld h,l
7F6F  00                 nop
7F70  00                 nop
7F71  67                 ld h,a
7F72  54                 ld d,h
7F73  56                 ld d,(hl)
7F74  54                 ld d,h
7F75  54                 ld d,h
7F76  67                 ld h,a
7F77  00                 nop
7F78  00                 nop
7F79  40                 ld b,b
7F7A  40                 ld b,b
7F7B  40                 ld b,b
7F7C  40                 ld b,b
7F7D  40                 ld b,b
7F7E  70                 ld (hl),b
7F7F  00                 nop
7F80  00                 nop
7F81  26 55              ld h,85
7F83  45                 ld b,l
7F84  76                 halt
7F85  56                 ld d,(hl)
7F86  25                 dec h
7F87  00                 nop
7F88  00                 nop
7F89  75                 ld (hl),l
7F8A  45                 ld b,l
7F8B  62                 ld h,d
7F8C  42                 ld b,d
7F8D  45                 ld b,l
7F8E  75                 ld (hl),l
7F8F  00                 nop
7F90  00                 nop
7F91  70                 ld (hl),b
7F92  20 20              jr nz,$7FB4
7F94  20 20              jr nz,$7FB6
7F96  20 00              jr nz,$7F98
7F98  00                 nop
7F99  76                 halt
7F9A  45                 ld b,l
7F9B  65                 ld h,l
7F9C  45                 ld b,l
7F9D  45                 ld b,l
7F9E  76                 halt
7F9F  00                 nop
7FA0  00                 nop
7FA1  77                 ld (hl),a
7FA2  45                 ld b,l
7FA3  65                 ld h,l
7FA4  45                 ld b,l
7FA5  45                 ld b,l
7FA6  75                 ld (hl),l
7FA7  00                 nop
7FA8  00                 nop
7FA9  70                 ld (hl),b
7FAA  20 20              jr nz,$7FCC
7FAC  20 20              jr nz,$7FCE
7FAE  20 00              jr nz,$7FB0
7FB0  00                 nop
7FB1  22 55 45           ld ($4555),hl
7FB4  47                 ld b,a
7FB5  55                 ld d,l
7FB6  25                 dec h
7FB7  00                 nop
7FB8  00                 nop
7FB9  63                 ld h,e
7FBA  54                 ld d,h
7FBB  52                 ld d,d
7FBC  61                 ld h,c
7FBD  41                 ld b,c
7FBE  46                 ld b,(hl)
7FBF  00                 nop
7FC0  00                 nop
7FC1  24                 inc h
7FC2  54                 ld d,h
7FC3  44                 ld b,h
7FC4  44                 ld b,h
7FC5  54                 ld d,h
7FC6  27                 daa
7FC7  00                 nop
7FC8  00                 nop
7FC9  23                 inc hl
7FCA  54                 ld d,h
7FCB  42                 ld b,d
7FCC  41                 ld b,c
7FCD  51                 ld d,c
7FCE  26 00              ld h,0
7FD0  00                 nop
7FD1  35                 dec (hl)
7FD2  45                 ld b,l
7FD3  25                 dec h
7FD4  12                 ld (de),a
7FD5  12                 ld (de),a
7FD6  62                 ld h,d
7FD7  00                 nop
7FD8  00                 nop
7FD9  56                 ld d,(hl)
7FDA  75                 ld (hl),l
7FDB  76                 halt
7FDC  75                 ld (hl),l
7FDD  55                 ld d,l
7FDE  56                 ld d,(hl)
7FDF  00                 nop
7FE0  00                 nop
7FE1  10 30              djnz $8013
7FE3  7E                 ld a,(hl)
7FE4  7E                 ld a,(hl)
7FE5  30 10              jr nc,$7FF7
7FE7  00                 nop
7FE8  00                 nop
7FE9  08                 ex af,af'
7FEA  0C                 inc c
7FEB  7E                 ld a,(hl)
7FEC  7E                 ld a,(hl)
7FED  0C                 inc c
7FEE  08                 ex af,af'
7FEF  00                 nop
7FF0  00                 nop
7FF1  18 3C              jr $802F
7FF3  7E                 ld a,(hl)
7FF4  18 18              jr $800E
7FF6  18 00              jr $7FF8
7FF8  00                 nop
7FF9  18 18              jr $8013
7FFB  18 7E              jr $807B
7FFD  3C                 inc a
7FFE  18 00              jr $8000
