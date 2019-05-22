0000            org     $0000
0000  00        nop
0001  00        nop
0002  00        nop
0003  C3 D4 18  jmp     $18D4
0006  00        nop
0007  00        nop
0008  F5        push    psw
0009  C5        push    b
000A  D5        push    d
000B  E5        push    h
000C  C3 8C 00  jmp     $008C
000F  00        nop
0010  F5        push    psw
0011  C5        push    b
0012  D5        push    d
0013  E5        push    h
0014  3E 80     mvi     a,$80
0016  32 72 20  sta     $2072
0019  21 C0 20  lxi     h,$20C0
001C  35        dcr     m
001D  CD CD 17  call    $17CD
0020  DB 01     in      $01
0022  0F        rrc
0023  DA 67 00  jc      $0067
0026  3A EA 20  lda     $20EA
0029  A7        ana     a
002A  CA 42 00  jz      $0042
002D  3A EB 20  lda     $20EB
0030  FE 99     cpi     $99
0032  CA 3E 00  jz      $003E
0035  C6 01     adi     $01
0037  27        daa
0038  32 EB 20  sta     $20EB
003B  CD 47 19  call    $1947
003E  AF        xra     a
003F  32 EA 20  sta     $20EA
0042  3A E9 20  lda     $20E9
0045  A7        ana     a
0046  CA 82 00  jz      $0082
0049  3A EF 20  lda     $20EF
004C  A7        ana     a
004D  C2 6F 00  jnz     $006F
0050  3A EB 20  lda     $20EB
0053  A7        ana     a
0054  C2 5D 00  jnz     $005D
0057  CD BF 0A  call    $0ABF
005A  C3 82 00  jmp     $0082
005D  3A 93 20  lda     $2093
0060  A7        ana     a
0061  C2 82 00  jnz     $0082
0064  C3 65 07  jmp     $0765
0067  3E 01     mvi     a,$01
0069  32 EA 20  sta     $20EA
006C  C3 3F 00  jmp     $003F
006F  CD 40 17  call    $1740
0072  3A 32 20  lda     $2032
0075  32 80 20  sta     $2080
0078  CD 00 01  call    $0100
007B  CD 48 02  call    $0248
007E  CD 13 09  call    $0913
0081  00        nop
0082  E1        pop     h
0083  D1        pop     d
0084  C1        pop     b
0085  F1        pop     psw
0086  FB        ei
0087  C9        ret
0088  00        nop
0089  00        nop
008A  00        nop
008B  00        nop
008C  AF        xra     a
008D  32 72 20  sta     $2072
0090  3A E9 20  lda     $20E9
0093  A7        ana     a
0094  CA 82 00  jz      $0082
0097  3A EF 20  lda     $20EF
009A  A7        ana     a
009B  C2 A5 00  jnz     $00A5
009E  3A C1 20  lda     $20C1
00A1  0F        rrc
00A2  D2 82 00  jnc     $0082
00A5  21 20 20  lxi     h,$2020
00A8  CD 4B 02  call    $024B
00AB  CD 41 01  call    $0141
00AE  C3 82 00  jmp     $0082
00B1  CD 86 08  call    $0886
00B4  E5        push    h
00B5  7E        mov     a,m
00B6  23        inx     h
00B7  66        mov     h,m
00B8  6F        mov     l,a
00B9  22 09 20  shld    $2009
00BC  22 0B 20  shld    $200B
00BF  E1        pop     h
00C0  2B        dcx     h
00C1  7E        mov     a,m
00C2  FE 03     cpi     $03
00C4  C2 C8 00  jnz     $00C8
00C7  3D        dcr     a
00C8  32 08 20  sta     $2008
00CB  FE FE     cpi     $FE
00CD  3E 00     mvi     a,$00
00CF  C2 D3 00  jnz     $00D3
00D2  3C        inr     a
00D3  32 0D 20  sta     $200D
00D6  C9        ret
00D7  3E 02     mvi     a,$02
00D9  32 FB 21  sta     $21FB
00DC  32 FB 22  sta     $22FB
00DF  C3 E4 08  jmp     $08E4
00E2  00        nop
00E3  00        nop
00E4  00        nop
00E5  00        nop
00E6  00        nop
00E7  00        nop
00E8  00        nop
00E9  00        nop
00EA  00        nop
00EB  00        nop
00EC  00        nop
00ED  00        nop
00EE  00        nop
00EF  00        nop
00F0  00        nop
00F1  00        nop
00F2  00        nop
00F3  00        nop
00F4  00        nop
00F5  00        nop
00F6  00        nop
00F7  00        nop
00F8  00        nop
00F9  00        nop
00FA  00        nop
00FB  00        nop
00FC  00        nop
00FD  00        nop
00FE  00        nop
00FF  00        nop
0100  21 02 20  lxi     h,$2002
0103  7E        mov     a,m
0104  A7        ana     a
0105  C2 38 15  jnz     $1538
0108  E5        push    h
0109  3A 06 20  lda     $2006
010C  6F        mov     l,a
010D  3A 67 20  lda     $2067
0110  67        mov     h,a
0111  7E        mov     a,m
0112  A7        ana     a
0113  E1        pop     h
0114  CA 36 01  jz      $0136
0117  23        inx     h
0118  23        inx     h
0119  7E        mov     a,m
011A  23        inx     h
011B  46        mov     b,m
011C  E6 FE     ani     $FE
011E  07        rlc
011F  07        rlc
0120  07        rlc
0121  5F        mov     e,a
0122  16 00     mvi     d,$00
0124  21 00 1C  lxi     h,$1C00
0127  19        dad
0128  EB        xchg
0129  78        mov     a,b
012A  A7        ana     a
012B  C4 3B 01  cnz     $013B
012E  2A 0B 20  lhld    $200B
0131  06 10     mvi     b,$10
0133  CD D3 15  call    $15D3
0136  AF        xra     a
0137  32 00 20  sta     $2000
013A  C9        ret
013B  21 30 00  lxi     h,$0030
013E  19        dad
013F  EB        xchg
0140  C9        ret
0141  3A 68 20  lda     $2068
0144  A7        ana     a
0145  C8        rz
0146  3A 00 20  lda     $2000
0149  A7        ana     a
014A  C0        rnz
014B  3A 67 20  lda     $2067
014E  67        mov     h,a
014F  3A 06 20  lda     $2006
0152  16 02     mvi     d,$02
0154  3C        inr     a
0155  FE 37     cpi     $37
0157  CC A1 01  cz      $01A1
015A  6F        mov     l,a
015B  46        mov     b,m
015C  05        dcr     b
015D  C2 54 01  jnz     $0154
0160  32 06 20  sta     $2006
0163  CD 7A 01  call    $017A
0166  61        mov     h,c
0167  22 0B 20  shld    $200B
016A  7D        mov     a,l
016B  FE 28     cpi     $28
016D  DA 71 19  jc      $1971
0170  7A        mov     a,d
0171  32 04 20  sta     $2004
0174  3E 01     mvi     a,$01
0176  32 00 20  sta     $2000
0179  C9        ret
017A  16 00     mvi     d,$00
017C  7D        mov     a,l
017D  21 09 20  lxi     h,$2009
0180  46        mov     b,m
0181  23        inx     h
0182  4E        mov     c,m
0183  FE 0B     cpi     $0B
0185  FA 94 01  jm      $0194
0188  DE 0B     sbi     $0B
018A  5F        mov     e,a
018B  78        mov     a,b
018C  C6 10     adi     $10
018E  47        mov     b,a
018F  7B        mov     a,e
0190  14        inr     d
0191  C3 83 01  jmp     $0183
0194  68        mov     l,b
0195  A7        ana     a
0196  C8        rz
0197  5F        mov     e,a
0198  79        mov     a,c
0199  C6 10     adi     $10
019B  4F        mov     c,a
019C  7B        mov     a,e
019D  3D        dcr     a
019E  C3 95 01  jmp     $0195
01A1  15        dcr     d
01A2  CA CD 01  jz      $01CD
01A5  21 06 20  lxi     h,$2006
01A8  36 00     mvi     m,$00
01AA  23        inx     h
01AB  4E        mov     c,m
01AC  36 00     mvi     m,$00
01AE  CD D9 01  call    $01D9
01B1  21 05 20  lxi     h,$2005
01B4  7E        mov     a,m
01B5  3C        inr     a
01B6  E6 01     ani     $01
01B8  77        mov     m,a
01B9  AF        xra     a
01BA  21 67 20  lxi     h,$2067
01BD  66        mov     h,m
01BE  C9        ret
01BF  00        nop
01C0  21 00 21  lxi     h,$2100
01C3  06 37     mvi     b,$37
01C5  36 01     mvi     m,$01
01C7  23        inx     h
01C8  05        dcr     b
01C9  C2 C5 01  jnz     $01C5
01CC  C9        ret
01CD  E1        pop     h
01CE  C9        ret
01CF  3E 01     mvi     a,$01
01D1  06 E0     mvi     b,$E0
01D3  21 02 24  lxi     h,$2402
01D6  C3 CC 14  jmp     $14CC
01D9  23        inx     h
01DA  46        mov     b,m
01DB  23        inx     h
01DC  79        mov     a,c
01DD  86        add     m
01DE  77        mov     m,a
01DF  23        inx     h
01E0  78        mov     a,b
01E1  86        add     m
01E2  77        mov     m,a
01E3  C9        ret
01E4  06 C0     mvi     b,$C0
01E6  11 00 1B  lxi     d,$1B00
01E9  21 00 20  lxi     h,$2000
01EC  C3 32 1A  jmp     $1A32
01EF  21 42 21  lxi     h,$2142
01F2  C3 F8 01  jmp     $01F8
01F5  21 42 22  lxi     h,$2242
01F8  0E 04     mvi     c,$04
01FA  11 20 1D  lxi     d,$1D20
01FD  D5        push    d
01FE  06 2C     mvi     b,$2C
0200  CD 32 1A  call    $1A32
0203  D1        pop     d
0204  0D        dcr     c
0205  C2 FD 01  jnz     $01FD
0208  C9        ret
0209  3E 01     mvi     a,$01
020B  C3 1B 02  jmp     $021B
020E  3E 01     mvi     a,$01
0210  C3 14 02  jmp     $0214
0213  AF        xra     a
0214  11 42 22  lxi     d,$2242
0217  C3 1E 02  jmp     $021E
021A  AF        xra     a
021B  11 42 21  lxi     d,$2142
021E  32 81 20  sta     $2081
0221  01 02 16  lxi     b,$1602
0224  21 06 28  lxi     h,$2806
0227  3E 04     mvi     a,$04
0229  F5        push    psw
022A  C5        push    b
022B  3A 81 20  lda     $2081
022E  A7        ana     a
022F  C2 42 02  jnz     $0242
0232  CD 69 1A  call    $1A69
0235  C1        pop     b
0236  F1        pop     psw
0237  3D        dcr     a
0238  C8        rz
0239  D5        push    d
023A  11 E0 02  lxi     d,$02E0
023D  19        dad
023E  D1        pop     d
023F  C3 29 02  jmp     $0229
0242  CD 7C 14  call    $147C
0245  C3 35 02  jmp     $0235
0248  21 10 20  lxi     h,$2010
024B  7E        mov     a,m
024C  FE FF     cpi     $FF
024E  C8        rz
024F  FE FE     cpi     $FE
0251  CA 81 02  jz      $0281
0254  23        inx     h
0255  46        mov     b,m
0256  4F        mov     c,a
0257  B0        ora     b
0258  79        mov     a,c
0259  C2 77 02  jnz     $0277
025C  23        inx     h
025D  7E        mov     a,m
025E  A7        ana     a
025F  C2 88 02  jnz     $0288
0262  23        inx     h
0263  5E        mov     e,m
0264  23        inx     h
0265  56        mov     d,m
0266  E5        push    h
0267  EB        xchg
0268  E5        push    h
0269  21 6F 02  lxi     h,$026F
026C  E3        xthl
026D  D5        push    d
026E  E9        pchl
026F  E1        pop     h
0270  11 0C 00  lxi     d,$000C
0273  19        dad
0274  C3 4B 02  jmp     $024B
0277  05        dcr     b
0278  04        inr     b
0279  C2 7D 02  jnz     $027D
027C  3D        dcr     a
027D  05        dcr     b
027E  70        mov     m,b
027F  2B        dcx     h
0280  77        mov     m,a
0281  11 10 00  lxi     d,$0010
0284  19        dad
0285  C3 4B 02  jmp     $024B
0288  35        dcr     m
0289  2B        dcx     h
028A  2B        dcx     h
028B  C3 81 02  jmp     $0281
028E  E1        pop     h
028F  23        inx     h
0290  7E        mov     a,m
0291  FE FF     cpi     $FF
0293  CA 3B 03  jz      $033B
0296  23        inx     h
0297  35        dcr     m
0298  C0        rnz
0299  47        mov     b,a
029A  AF        xra     a
029B  32 68 20  sta     $2068
029E  32 69 20  sta     $2069
02A1  3E 30     mvi     a,$30
02A3  32 6A 20  sta     $206A
02A6  78        mov     a,b
02A7  36 05     mvi     m,$05
02A9  23        inx     h
02AA  35        dcr     m
02AB  C2 9B 03  jnz     $039B
02AE  2A 1A 20  lhld    $201A
02B1  06 10     mvi     b,$10
02B3  CD 24 14  call    $1424
02B6  21 10 20  lxi     h,$2010
02B9  11 10 1B  lxi     d,$1B10
02BC  06 10     mvi     b,$10
02BE  CD 32 1A  call    $1A32
02C1  06 00     mvi     b,$00
02C3  CD DC 19  call    $19DC
02C6  3A 6D 20  lda     $206D
02C9  A7        ana     a
02CA  C0        rnz
02CB  3A EF 20  lda     $20EF
02CE  A7        ana     a
02CF  C8        rz
02D0  31 00 24  lxi     sp,$2400
02D3  FB        ei
02D4  CD D7 19  call    $19D7
02D7  CD 2E 09  call    $092E
02DA  A7        ana     a
02DB  CA 6D 16  jz      $166D
02DE  CD E7 18  call    $18E7
02E1  7E        mov     a,m
02E2  A7        ana     a
02E3  CA 2C 03  jz      $032C
02E6  3A CE 20  lda     $20CE
02E9  A7        ana     a
02EA  CA 2C 03  jz      $032C
02ED  3A 67 20  lda     $2067
02F0  F5        push    psw
02F1  0F        rrc
02F2  DA 32 03  jc      $0332
02F5  CD 0E 02  call    $020E
02F8  CD 78 08  call    $0878
02FB  73        mov     m,e
02FC  23        inx     h
02FD  72        mov     m,d
02FE  2B        dcx     h
02FF  2B        dcx     h
0300  70        mov     m,b
0301  00        nop
0302  CD E4 01  call    $01E4
0305  F1        pop     psw
0306  0F        rrc
0307  3E 21     mvi     a,$21
0309  06 00     mvi     b,$00
030B  D2 12 03  jnc     $0312
030E  06 20     mvi     b,$20
0310  3E 22     mvi     a,$22
0312  32 67 20  sta     $2067
0315  CD B6 0A  call    $0AB6
0318  AF        xra     a
0319  32 11 20  sta     $2011
031C  78        mov     a,b
031D  D3 05     out     $05
031F  3C        inr     a
0320  32 98 20  sta     $2098
0323  CD D6 09  call    $09D6
0326  CD 7F 1A  call    $1A7F
0329  C3 F9 07  jmp     $07F9
032C  CD 7F 1A  call    $1A7F
032F  C3 17 08  jmp     $0817
0332  CD 09 02  call    $0209
0335  C3 F8 02  jmp     $02F8
0338  00        nop
0339  00        nop
033A  00        nop
033B  21 68 20  lxi     h,$2068
033E  36 01     mvi     m,$01
0340  23        inx     h
0341  7E        mov     a,m
0342  A7        ana     a
0343  C3 B0 03  jmp     $03B0
0346  00        nop
0347  2B        dcx     h
0348  36 01     mvi     m,$01
034A  3A 1B 20  lda     $201B
034D  47        mov     b,a
034E  3A EF 20  lda     $20EF
0351  A7        ana     a
0352  C2 63 03  jnz     $0363
0355  3A 1D 20  lda     $201D
0358  0F        rrc
0359  DA 81 03  jc      $0381
035C  0F        rrc
035D  DA 8E 03  jc      $038E
0360  C3 6F 03  jmp     $036F
0363  CD C0 17  call    $17C0
0366  07        rlc
0367  07        rlc
0368  DA 81 03  jc      $0381
036B  07        rlc
036C  DA 8E 03  jc      $038E
036F  21 18 20  lxi     h,$2018
0372  CD 3B 1A  call    $1A3B
0375  CD 47 1A  call    $1A47
0378  CD 39 14  call    $1439
037B  3E 00     mvi     a,$00
037D  32 12 20  sta     $2012
0380  C9        ret
0381  78        mov     a,b
0382  FE D9     cpi     $D9
0384  CA 6F 03  jz      $036F
0387  3C        inr     a
0388  32 1B 20  sta     $201B
038B  C3 6F 03  jmp     $036F
038E  78        mov     a,b
038F  FE 30     cpi     $30
0391  CA 6F 03  jz      $036F
0394  3D        dcr     a
0395  32 1B 20  sta     $201B
0398  C3 6F 03  jmp     $036F
039B  3C        inr     a
039C  E6 01     ani     $01
039E  32 15 20  sta     $2015
03A1  07        rlc
03A2  07        rlc
03A3  07        rlc
03A4  07        rlc
03A5  21 70 1C  lxi     h,$1C70
03A8  85        add     l
03A9  6F        mov     l,a
03AA  22 18 20  shld    $2018
03AD  C3 6F 03  jmp     $036F
03B0  C2 4A 03  jnz     $034A
03B3  23        inx     h
03B4  35        dcr     m
03B5  C2 4A 03  jnz     $034A
03B8  C3 46 03  jmp     $0346
03BB  11 2A 20  lxi     d,$202A
03BE  CD 06 1A  call    $1A06
03C1  E1        pop     h
03C2  D0        rnc
03C3  23        inx     h
03C4  7E        mov     a,m
03C5  A7        ana     a
03C6  C8        rz
03C7  FE 01     cpi     $01
03C9  CA FA 03  jz      $03FA
03CC  FE 02     cpi     $02
03CE  CA 0A 04  jz      $040A
03D1  23        inx     h
03D2  FE 03     cpi     $03
03D4  C2 2A 04  jnz     $042A
03D7  35        dcr     m
03D8  CA 36 04  jz      $0436
03DB  7E        mov     a,m
03DC  FE 0F     cpi     $0F
03DE  C0        rnz
03DF  E5        push    h
03E0  CD 30 04  call    $0430
03E3  CD 52 14  call    $1452
03E6  E1        pop     h
03E7  23        inx     h
03E8  34        inr     m
03E9  23        inx     h
03EA  23        inx     h
03EB  35        dcr     m
03EC  35        dcr     m
03ED  23        inx     h
03EE  35        dcr     m
03EF  35        dcr     m
03F0  35        dcr     m
03F1  23        inx     h
03F2  36 08     mvi     m,$08
03F4  CD 30 04  call    $0430
03F7  C3 00 14  jmp     $1400
03FA  3C        inr     a
03FB  77        mov     m,a
03FC  3A 1B 20  lda     $201B
03FF  C6 08     adi     $08
0401  32 2A 20  sta     $202A
0404  CD 30 04  call    $0430
0407  C3 00 14  jmp     $1400
040A  CD 30 04  call    $0430
040D  D5        push    d
040E  E5        push    h
040F  C5        push    b
0410  CD 52 14  call    $1452
0413  C1        pop     b
0414  E1        pop     h
0415  D1        pop     d
0416  3A 2C 20  lda     $202C
0419  85        add     l
041A  6F        mov     l,a
041B  32 29 20  sta     $2029
041E  CD 91 14  call    $1491
0421  3A 61 20  lda     $2061
0424  A7        ana     a
0425  C8        rz
0426  32 02 20  sta     $2002
0429  C9        ret
042A  FE 05     cpi     $05
042C  C8        rz
042D  C3 36 04  jmp     $0436
0430  21 27 20  lxi     h,$2027
0433  C3 3B 1A  jmp     $1A3B
0436  CD 30 04  call    $0430
0439  CD 52 14  call    $1452
043C  21 25 20  lxi     h,$2025
043F  11 25 1B  lxi     d,$1B25
0442  06 07     mvi     b,$07
0444  CD 32 1A  call    $1A32
0447  2A 8D 20  lhld    $208D
044A  2C        inr     l
044B  7D        mov     a,l
044C  FE 63     cpi     'c'
044E  DA 53 04  jc      $0453
0451  2E 54     mvi     l,'T'
0453  22 8D 20  shld    $208D
0456  2A 8F 20  lhld    $208F
0459  2C        inr     l
045A  22 8F 20  shld    $208F
045D  3A 84 20  lda     $2084
0460  A7        ana     a
0461  C0        rnz
0462  7E        mov     a,m
0463  E6 01     ani     $01
0465  01 29 02  lxi     b,$0229
0468  C2 6E 04  jnz     $046E
046B  01 E0 FE  lxi     b,$FEE0
046E  21 8A 20  lxi     h,$208A
0471  71        mov     m,c
0472  23        inx     h
0473  23        inx     h
0474  70        mov     m,b
0475  C9        ret
0476  E1        pop     h
0477  3A 32 1B  lda     $1B32
047A  32 32 20  sta     $2032
047D  2A 38 20  lhld    $2038
0480  7D        mov     a,l
0481  B4        ora     h
0482  C2 8A 04  jnz     $048A
0485  2B        dcx     h
0486  22 38 20  shld    $2038
0489  C9        ret
048A  11 35 20  lxi     d,$2035
048D  3E F9     mvi     a,$F9
048F  CD 50 05  call    $0550
0492  3A 46 20  lda     $2046
0495  32 70 20  sta     $2070
0498  3A 56 20  lda     $2056
049B  32 71 20  sta     $2071
049E  CD 63 05  call    $0563
04A1  3A 78 20  lda     $2078
04A4  A7        ana     a
04A5  21 35 20  lxi     h,$2035
04A8  C2 5B 05  jnz     $055B
04AB  11 30 1B  lxi     d,$1B30
04AE  21 30 20  lxi     h,$2030
04B1  06 10     mvi     b,$10
04B3  C3 32 1A  jmp     $1A32
04B6  E1        pop     h
04B7  3A 6E 20  lda     $206E
04BA  A7        ana     a
04BB  C0        rnz
04BC  3A 80 20  lda     $2080
04BF  FE 01     cpi     $01
04C1  C0        rnz
04C2  11 45 20  lxi     d,$2045
04C5  3E ED     mvi     a,$ED
04C7  CD 50 05  call    $0550
04CA  3A 36 20  lda     $2036
04CD  32 70 20  sta     $2070
04D0  3A 56 20  lda     $2056
04D3  32 71 20  sta     $2071
04D6  CD 63 05  call    $0563
04D9  3A 76 20  lda     $2076
04DC  FE 10     cpi     $10
04DE  DA E7 04  jc      $04E7
04E1  3A 48 1B  lda     $1B48
04E4  32 76 20  sta     $2076
04E7  3A 78 20  lda     $2078
04EA  A7        ana     a
04EB  21 45 20  lxi     h,$2045
04EE  C2 5B 05  jnz     $055B
04F1  11 40 1B  lxi     d,$1B40
04F4  21 40 20  lxi     h,$2040
04F7  06 10     mvi     b,$10
04F9  CD 32 1A  call    $1A32
04FC  3A 82 20  lda     $2082
04FF  3D        dcr     a
0500  C2 08 05  jnz     $0508
0503  3E 01     mvi     a,$01
0505  32 6E 20  sta     $206E
0508  2A 76 20  lhld    $2076
050B  C3 7E 06  jmp     $067E
050E  E1        pop     h
050F  11 55 20  lxi     d,$2055
0512  3E DB     mvi     a,$DB
0514  CD 50 05  call    $0550
0517  3A 46 20  lda     $2046
051A  32 70 20  sta     $2070
051D  3A 36 20  lda     $2036
0520  32 71 20  sta     $2071
0523  CD 63 05  call    $0563
0526  3A 76 20  lda     $2076
0529  FE 15     cpi     $15
052B  DA 34 05  jc      $0534
052E  3A 58 1B  lda     $1B58
0531  32 76 20  sta     $2076
0534  3A 78 20  lda     $2078
0537  A7        ana     a
0538  21 55 20  lxi     h,$2055
053B  C2 5B 05  jnz     $055B
053E  11 50 1B  lxi     d,$1B50
0541  21 50 20  lxi     h,$2050
0544  06 10     mvi     b,$10
0546  CD 32 1A  call    $1A32
0549  2A 76 20  lhld    $2076
054C  22 58 20  shld    $2058
054F  C9        ret
0550  32 7F 20  sta     $207F
0553  21 73 20  lxi     h,$2073
0556  06 0B     mvi     b,$0B
0558  C3 32 1A  jmp     $1A32
055B  11 73 20  lxi     d,$2073
055E  06 0B     mvi     b,$0B
0560  C3 32 1A  jmp     $1A32
0563  21 73 20  lxi     h,$2073
0566  7E        mov     a,m
0567  E6 80     ani     $80
0569  C2 C1 05  jnz     $05C1
056C  3A C1 20  lda     $20C1
056F  FE 04     cpi     $04
0571  3A 69 20  lda     $2069
0574  CA B7 05  jz      $05B7
0577  A7        ana     a
0578  C8        rz
0579  23        inx     h
057A  36 00     mvi     m,$00
057C  3A 70 20  lda     $2070
057F  A7        ana     a
0580  CA 89 05  jz      $0589
0583  47        mov     b,a
0584  3A CF 20  lda     $20CF
0587  B8        cmp     b
0588  D0        rnc
0589  3A 71 20  lda     $2071
058C  A7        ana     a
058D  CA 96 05  jz      $0596
0590  47        mov     b,a
0591  3A CF 20  lda     $20CF
0594  B8        cmp     b
0595  D0        rnc
0596  23        inx     h
0597  7E        mov     a,m
0598  A7        ana     a
0599  CA 1B 06  jz      $061B
059C  2A 76 20  lhld    $2076
059F  4E        mov     c,m
05A0  23        inx     h
05A1  00        nop
05A2  22 76 20  shld    $2076
05A5  CD 2F 06  call    $062F
05A8  D0        rnc
05A9  CD 7A 01  call    $017A
05AC  79        mov     a,c
05AD  C6 07     adi     $07
05AF  67        mov     h,a
05B0  7D        mov     a,l
05B1  D6 0A     sui     $0A
05B3  6F        mov     l,a
05B4  22 7B 20  shld    $207B
05B7  21 73 20  lxi     h,$2073
05BA  7E        mov     a,m
05BB  F6 80     ori     $80
05BD  77        mov     m,a
05BE  23        inx     h
05BF  34        inr     m
05C0  C9        ret
05C1  11 7C 20  lxi     d,$207C
05C4  CD 06 1A  call    $1A06
05C7  D0        rnc
05C8  23        inx     h
05C9  7E        mov     a,m
05CA  E6 01     ani     $01
05CC  C2 44 06  jnz     $0644
05CF  23        inx     h
05D0  34        inr     m
05D1  CD 75 06  call    $0675
05D4  3A 79 20  lda     $2079
05D7  C6 03     adi     $03
05D9  21 7F 20  lxi     h,$207F
05DC  BE        cmp     m
05DD  DA E2 05  jc      $05E2
05E0  D6 0C     sui     $0C
05E2  32 79 20  sta     $2079
05E5  3A 7B 20  lda     $207B
05E8  47        mov     b,a
05E9  3A 7E 20  lda     $207E
05EC  80        add     b
05ED  32 7B 20  sta     $207B
05F0  CD 6C 06  call    $066C
05F3  3A 7B 20  lda     $207B
05F6  FE 15     cpi     $15
05F8  DA 12 06  jc      $0612
05FB  3A 61 20  lda     $2061
05FE  A7        ana     a
05FF  C8        rz
0600  3A 7B 20  lda     $207B
0603  FE 1E     cpi     $1E
0605  DA 12 06  jc      $0612
0608  FE 27     cpi     $27
060A  00        nop
060B  D2 12 06  jnc     $0612
060E  97        sub     a
060F  32 15 20  sta     $2015
0612  3A 73 20  lda     $2073
0615  F6 01     ori     $01
0617  32 73 20  sta     $2073
061A  C9        ret
061B  3A 1B 20  lda     $201B
061E  C6 08     adi     $08
0620  67        mov     h,a
0621  CD 6F 15  call    $156F
0624  79        mov     a,c
0625  FE 0C     cpi     $0C
0627  DA A5 05  jc      $05A5
062A  0E 0B     mvi     c,$0B
062C  C3 A5 05  jmp     $05A5
062F  0D        dcr     c
0630  3A 67 20  lda     $2067
0633  67        mov     h,a
0634  69        mov     l,c
0635  16 05     mvi     d,$05
0637  7E        mov     a,m
0638  A7        ana     a
0639  37        stc
063A  C0        rnz
063B  7D        mov     a,l
063C  C6 0B     adi     $0B
063E  6F        mov     l,a
063F  15        dcr     d
0640  C2 37 06  jnz     $0637
0643  C9        ret
0644  21 78 20  lxi     h,$2078
0647  35        dcr     m
0648  7E        mov     a,m
0649  FE 03     cpi     $03
064B  C2 67 06  jnz     $0667
064E  CD 75 06  call    $0675
0651  21 DC 1C  lxi     h,$1CDC
0654  22 79 20  shld    $2079
0657  21 7C 20  lxi     h,$207C
065A  35        dcr     m
065B  35        dcr     m
065C  2B        dcx     h
065D  35        dcr     m
065E  35        dcr     m
065F  3E 06     mvi     a,$06
0661  32 7D 20  sta     $207D
0664  C3 6C 06  jmp     $066C
0667  A7        ana     a
0668  C0        rnz
0669  C3 75 06  jmp     $0675
066C  21 79 20  lxi     h,$2079
066F  CD 3B 1A  call    $1A3B
0672  C3 91 14  jmp     $1491
0675  21 79 20  lxi     h,$2079
0678  CD 3B 1A  call    $1A3B
067B  C3 52 14  jmp     $1452
067E  22 48 20  shld    $2048
0681  C9        ret
0682  E1        pop     h
0683  3A 80 20  lda     $2080
0686  FE 02     cpi     $02
0688  C0        rnz
0689  21 83 20  lxi     h,$2083
068C  7E        mov     a,m
068D  A7        ana     a
068E  CA 0F 05  jz      $050F
0691  3A 56 20  lda     $2056
0694  A7        ana     a
0695  C2 0F 05  jnz     $050F
0698  23        inx     h
0699  7E        mov     a,m
069A  A7        ana     a
069B  C2 AB 06  jnz     $06AB
069E  3A 82 20  lda     $2082
06A1  FE 08     cpi     $08
06A3  DA 0F 05  jc      $050F
06A6  36 01     mvi     m,$01
06A8  CD 3C 07  call    $073C
06AB  11 8A 20  lxi     d,$208A
06AE  CD 06 1A  call    $1A06
06B1  D0        rnc
06B2  21 85 20  lxi     h,$2085
06B5  7E        mov     a,m
06B6  A7        ana     a
06B7  C2 D6 06  jnz     $06D6
06BA  21 8A 20  lxi     h,$208A
06BD  7E        mov     a,m
06BE  23        inx     h
06BF  23        inx     h
06C0  86        add     m
06C1  32 8A 20  sta     $208A
06C4  CD 3C 07  call    $073C
06C7  21 8A 20  lxi     h,$208A
06CA  7E        mov     a,m
06CB  FE 28     cpi     $28
06CD  DA F9 06  jc      $06F9
06D0  FE E1     cpi     $E1
06D2  D2 F9 06  jnc     $06F9
06D5  C9        ret
06D6  06 FE     mvi     b,$FE
06D8  CD DC 19  call    $19DC
06DB  23        inx     h
06DC  35        dcr     m
06DD  7E        mov     a,m
06DE  FE 1F     cpi     $1F
06E0  CA 4B 07  jz      $074B
06E3  FE 18     cpi     $18
06E5  CA 0C 07  jz      $070C
06E8  A7        ana     a
06E9  C0        rnz
06EA  06 EF     mvi     b,$EF
06EC  21 98 20  lxi     h,$2098
06EF  7E        mov     a,m
06F0  A0        ana     b
06F1  77        mov     m,a
06F2  E6 20     ani     $20
06F4  D3 05     out     $05
06F6  00        nop
06F7  00        nop
06F8  00        nop
06F9  CD 42 07  call    $0742
06FC  CD CB 14  call    $14CB
06FF  21 83 20  lxi     h,$2083
0702  06 0A     mvi     b,$0A
0704  CD 5F 07  call    $075F
0707  06 FE     mvi     b,$FE
0709  C3 DC 19  jmp     $19DC
070C  3E 01     mvi     a,$01
070E  32 F1 20  sta     $20F1
0711  2A 8D 20  lhld    $208D
0714  46        mov     b,m
0715  0E 04     mvi     c,$04
0717  21 50 1D  lxi     h,$1D50
071A  11 4C 1D  lxi     d,$1D4C
071D  1A        ldax    d
071E  B8        cmp     b
071F  CA 28 07  jz      $0728
0722  23        inx     h
0723  13        inx     d
0724  0D        dcr     c
0725  C2 1D 07  jnz     $071D
0728  7E        mov     a,m
0729  32 87 20  sta     $2087
072C  26 00     mvi     h,$00
072E  68        mov     l,b
072F  29        dad     h
0730  29        dad     h
0731  29        dad     h
0732  29        dad     h
0733  22 F2 20  shld    $20F2
0736  CD 42 07  call    $0742
0739  C3 F1 08  jmp     $08F1
073C  CD 42 07  call    $0742
073F  C3 39 14  jmp     $1439
0742  21 87 20  lxi     h,$2087
0745  CD 3B 1A  call    $1A3B
0748  C3 47 1A  jmp     $1A47
074B  06 10     mvi     b,$10
074D  21 98 20  lxi     h,$2098
0750  7E        mov     a,m
0751  B0        ora     b
0752  77        mov     m,a
0753  CD 70 17  call    $1770
0756  21 7C 1D  lxi     h,$1D7C
0759  22 87 20  shld    $2087
075C  C3 3C 07  jmp     $073C
075F  11 83 1B  lxi     d,$1B83
0762  C3 32 1A  jmp     $1A32
0765  3E 01     mvi     a,$01
0767  32 93 20  sta     $2093
076A  31 00 24  lxi     sp,$2400
076D  FB        ei
076E  CD 79 19  call    $1979
0771  CD D6 09  call    $09D6
0774  21 13 30  lxi     h,$3013
0777  11 F3 1F  lxi     d,$1FF3
077A  0E 04     mvi     c,$04
077C  CD F3 08  call    $08F3
077F  3A EB 20  lda     $20EB
0782  3D        dcr     a
0783  21 10 28  lxi     h,$2810
0786  0E 14     mvi     c,$14
0788  C2 57 08  jnz     $0857
078B  11 CF 1A  lxi     d,$1ACF
078E  CD F3 08  call    $08F3
0791  DB 01     in      $01
0793  E6 04     ani     $04
0795  CA 7F 07  jz      $077F
0798  06 99     mvi     b,$99
079A  AF        xra     a
079B  32 CE 20  sta     $20CE
079E  3A EB 20  lda     $20EB
07A1  80        add     b
07A2  27        daa
07A3  32 EB 20  sta     $20EB
07A6  CD 47 19  call    $1947
07A9  21 00 00  lxi     h,$0000
07AC  22 F8 20  shld    $20F8
07AF  22 FC 20  shld    $20FC
07B2  CD 25 19  call    $1925
07B5  CD 2B 19  call    $192B
07B8  CD D7 19  call    $19D7
07BB  21 01 01  lxi     h,$0101
07BE  7C        mov     a,h
07BF  32 EF 20  sta     $20EF
07C2  22 E7 20  shld    $20E7
07C5  22 E5 20  shld    $20E5
07C8  CD 56 19  call    $1956
07CB  CD EF 01  call    $01EF
07CE  CD F5 01  call    $01F5
07D1  CD D1 08  call    $08D1
07D4  32 FF 21  sta     $21FF
07D7  32 FF 22  sta     $22FF
07DA  CD D7 00  call    $00D7
07DD  AF        xra     a
07DE  32 FE 21  sta     $21FE
07E1  32 FE 22  sta     $22FE
07E4  CD C0 01  call    $01C0
07E7  CD 04 19  call    $1904
07EA  21 78 38  lxi     h,$3878
07ED  22 FC 21  shld    $21FC
07F0  22 FC 22  shld    $22FC
07F3  CD E4 01  call    $01E4
07F6  CD 7F 1A  call    $1A7F
07F9  CD 8D 08  call    $088D
07FC  CD D6 09  call    $09D6
07FF  00        nop
0800            end
