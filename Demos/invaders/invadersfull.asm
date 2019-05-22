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
0800  AF        xra     a
0801  32 C1 20  sta     $20C1
0804  CD CF 01  call    $01CF
0807  3A 67 20  lda     $2067
080A  0F        rrc
080B  DA 72 08  jc      $0872
080E  CD 13 02  call    $0213
0811  CD CF 01  call    $01CF
0814  CD B1 00  call    $00B1
0817  CD D1 19  call    $19D1
081A  06 20     mvi     b,$20
081C  CD FA 18  call    $18FA
081F  CD 18 16  call    $1618
0822  CD 0A 19  call    $190A
0825  CD F3 15  call    $15F3
0828  CD 88 09  call    $0988
082B  3A 82 20  lda     $2082
082E  A7        ana     a
082F  CA EF 09  jz      $09EF
0832  CD 0E 17  call    $170E
0835  CD 35 09  call    $0935
0838  CD D8 08  call    $08D8
083B  CD 2C 17  call    $172C
083E  CD 59 0A  call    $0A59
0841  CA 49 08  jz      $0849
0844  06 04     mvi     b,$04
0846  CD FA 18  call    $18FA
0849  CD 75 17  call    $1775
084C  D3 06     out     $06
084E  CD 04 18  call    $1804
0851  C3 1F 08  jmp     $081F
0854  00        nop
0855  00        nop
0856  00        nop
0857  11 BA 1A  lxi     d,$1ABA
085A  CD F3 08  call    $08F3
085D  06 98     mvi     b,$98
085F  DB 01     in      $01
0861  0F        rrc
0862  0F        rrc
0863  DA 6D 08  jc      $086D
0866  0F        rrc
0867  DA 98 07  jc      $0798
086A  C3 7F 07  jmp     $077F
086D  3E 01     mvi     a,$01
086F  C3 9B 07  jmp     $079B
0872  CD 1A 02  call    $021A
0875  C3 14 08  jmp     $0814
0878  3A 08 20  lda     $2008
087B  47        mov     b,a
087C  2A 09 20  lhld    $2009
087F  EB        xchg
0880  C3 86 08  jmp     $0886
0883  00        nop
0884  00        nop
0885  00        nop
0886  3A 67 20  lda     $2067
0889  67        mov     h,a
088A  2E FC     mvi     l,$FC
088C  C9        ret
088D  21 11 2B  lxi     h,$2B11
0890  11 70 1B  lxi     d,$1B70
0893  0E 0E     mvi     c,$0E
0895  CD F3 08  call    $08F3
0898  3A 67 20  lda     $2067
089B  0F        rrc
089C  3E 1C     mvi     a,$1C
089E  21 11 37  lxi     h,$3711
08A1  D4 FF 08  cnc     $08FF
08A4  3E B0     mvi     a,$B0
08A6  32 C0 20  sta     $20C0
08A9  3A C0 20  lda     $20C0
08AC  A7        ana     a
08AD  C8        rz
08AE  E6 04     ani     $04
08B0  C2 BC 08  jnz     $08BC
08B3  CD CA 09  call    $09CA
08B6  CD 31 19  call    $1931
08B9  C3 A9 08  jmp     $08A9
08BC  06 20     mvi     b,$20
08BE  21 1C 27  lxi     h,$271C
08C1  3A 67 20  lda     $2067
08C4  0F        rrc
08C5  DA CB 08  jc      $08CB
08C8  21 1C 39  lxi     h,$391C
08CB  CD CB 14  call    $14CB
08CE  C3 A9 08  jmp     $08A9
08D1  DB 02     in      $02
08D3  E6 03     ani     $03
08D5  C6 03     adi     $03
08D7  C9        ret
08D8  3A 82 20  lda     $2082
08DB  FE 09     cpi     $09
08DD  D0        rnc
08DE  3E FB     mvi     a,$FB
08E0  32 7E 20  sta     $207E
08E3  C9        ret
08E4  3A CE 20  lda     $20CE
08E7  A7        ana     a
08E8  C0        rnz
08E9  21 1C 39  lxi     h,$391C
08EC  06 20     mvi     b,$20
08EE  C3 CB 14  jmp     $14CB
08F1  0E 03     mvi     c,$03
08F3  1A        ldax    d
08F4  D5        push    d
08F5  CD FF 08  call    $08FF
08F8  D1        pop     d
08F9  13        inx     d
08FA  0D        dcr     c
08FB  C2 F3 08  jnz     $08F3
08FE  C9        ret
08FF  11 00 1E  lxi     d,$1E00
0902  E5        push    h
0903  26 00     mvi     h,$00
0905  6F        mov     l,a
0906  29        dad     h
0907  29        dad     h
0908  29        dad     h
0909  19        dad
090A  EB        xchg
090B  E1        pop     h
090C  06 08     mvi     b,$08
090E  D3 06     out     $06
0910  C3 39 14  jmp     $1439
0913  3A 09 20  lda     $2009
0916  FE 78     cpi     'x'
0918  D0        rnc
0919  2A 91 20  lhld    $2091
091C  7D        mov     a,l
091D  B4        ora     h
091E  C2 29 09  jnz     $0929
0921  21 00 06  lxi     h,$0600
0924  3E 01     mvi     a,$01
0926  32 83 20  sta     $2083
0929  2B        dcx     h
092A  22 91 20  shld    $2091
092D  C9        ret
092E  CD 11 16  call    $1611
0931  2E FF     mvi     l,$FF
0933  7E        mov     a,m
0934  C9        ret
0935  CD 10 19  call    $1910
0938  2B        dcx     h
0939  2B        dcx     h
093A  7E        mov     a,m
093B  A7        ana     a
093C  C8        rz
093D  06 15     mvi     b,$15
093F  DB 02     in      $02
0941  E6 08     ani     $08
0943  CA 48 09  jz      $0948
0946  06 10     mvi     b,$10
0948  CD CA 09  call    $09CA
094B  23        inx     h
094C  7E        mov     a,m
094D  B8        cmp     b
094E  D8        rc
094F  CD 2E 09  call    $092E
0952  34        inr     m
0953  7E        mov     a,m
0954  F5        push    psw
0955  21 01 25  lxi     h,$2501
0958  24        inr     h
0959  24        inr     h
095A  3D        dcr     a
095B  C2 58 09  jnz     $0958
095E  06 10     mvi     b,$10
0960  11 60 1C  lxi     d,$1C60
0963  CD 39 14  call    $1439
0966  F1        pop     psw
0967  3C        inr     a
0968  CD 8B 1A  call    $1A8B
096B  CD 10 19  call    $1910
096E  2B        dcx     h
096F  2B        dcx     h
0970  36 00     mvi     m,$00
0972  3E FF     mvi     a,$FF
0974  32 99 20  sta     $2099
0977  06 10     mvi     b,$10
0979  C3 FA 18  jmp     $18FA
097C  21 A0 1D  lxi     h,$1DA0
097F  FE 02     cpi     $02
0981  D8        rc
0982  23        inx     h
0983  FE 04     cpi     $04
0985  D8        rc
0986  23        inx     h
0987  C9        ret
0988  CD CA 09  call    $09CA
098B  3A F1 20  lda     $20F1
098E  A7        ana     a
098F  C8        rz
0990  AF        xra     a
0991  32 F1 20  sta     $20F1
0994  E5        push    h
0995  2A F2 20  lhld    $20F2
0998  EB        xchg
0999  E1        pop     h
099A  7E        mov     a,m
099B  83        add     e
099C  27        daa
099D  77        mov     m,a
099E  5F        mov     e,a
099F  23        inx     h
09A0  7E        mov     a,m
09A1  8A        adc     d
09A2  27        daa
09A3  77        mov     m,a
09A4  57        mov     d,a
09A5  23        inx     h
09A6  7E        mov     a,m
09A7  23        inx     h
09A8  66        mov     h,m
09A9  6F        mov     l,a
09AA  C3 AD 09  jmp     $09AD
09AD  7A        mov     a,d
09AE  CD B2 09  call    $09B2
09B1  7B        mov     a,e
09B2  D5        push    d
09B3  F5        push    psw
09B4  0F        rrc
09B5  0F        rrc
09B6  0F        rrc
09B7  0F        rrc
09B8  E6 0F     ani     $0F
09BA  CD C5 09  call    $09C5
09BD  F1        pop     psw
09BE  E6 0F     ani     $0F
09C0  CD C5 09  call    $09C5
09C3  D1        pop     d
09C4  C9        ret
09C5  C6 1A     adi     $1A
09C7  C3 FF 08  jmp     $08FF
09CA  3A 67 20  lda     $2067
09CD  0F        rrc
09CE  21 F8 20  lxi     h,$20F8
09D1  D8        rc
09D2  21 FC 20  lxi     h,$20FC
09D5  C9        ret
09D6  21 02 24  lxi     h,$2402
09D9  36 00     mvi     m,$00
09DB  23        inx     h
09DC  7D        mov     a,l
09DD  E6 1F     ani     $1F
09DF  FE 1C     cpi     $1C
09E1  DA E8 09  jc      $09E8
09E4  11 06 00  lxi     d,$0006
09E7  19        dad
09E8  7C        mov     a,h
09E9  FE 40     cpi     '@'
09EB  DA D9 09  jc      $09D9
09EE  C9        ret
09EF  CD 3C 0A  call    $0A3C
09F2  AF        xra     a
09F3  32 E9 20  sta     $20E9
09F6  CD D6 09  call    $09D6
09F9  3A 67 20  lda     $2067
09FC  F5        push    psw
09FD  CD E4 01  call    $01E4
0A00  F1        pop     psw
0A01  32 67 20  sta     $2067
0A04  3A 67 20  lda     $2067
0A07  67        mov     h,a
0A08  E5        push    h
0A09  2E FE     mvi     l,$FE
0A0B  7E        mov     a,m
0A0C  E6 07     ani     $07
0A0E  3C        inr     a
0A0F  77        mov     m,a
0A10  21 A2 1D  lxi     h,$1DA2
0A13  23        inx     h
0A14  3D        dcr     a
0A15  C2 13 0A  jnz     $0A13
0A18  7E        mov     a,m
0A19  E1        pop     h
0A1A  2E FC     mvi     l,$FC
0A1C  77        mov     m,a
0A1D  23        inx     h
0A1E  36 38     mvi     m,$38
0A20  7C        mov     a,h
0A21  0F        rrc
0A22  DA 33 0A  jc      $0A33
0A25  3E 21     mvi     a,$21
0A27  32 98 20  sta     $2098
0A2A  CD F5 01  call    $01F5
0A2D  CD 04 19  call    $1904
0A30  C3 04 08  jmp     $0804
0A33  CD EF 01  call    $01EF
0A36  CD C0 01  call    $01C0
0A39  C3 04 08  jmp     $0804
0A3C  CD 59 0A  call    $0A59
0A3F  C2 52 0A  jnz     $0A52
0A42  3E 30     mvi     a,$30
0A44  32 C0 20  sta     $20C0
0A47  3A C0 20  lda     $20C0
0A4A  A7        ana     a
0A4B  C8        rz
0A4C  CD 59 0A  call    $0A59
0A4F  CA 47 0A  jz      $0A47
0A52  CD 59 0A  call    $0A59
0A55  C2 52 0A  jnz     $0A52
0A58  C9        ret
0A59  3A 15 20  lda     $2015
0A5C  FE FF     cpi     $FF
0A5E  C9        ret
0A5F  3A EF 20  lda     $20EF
0A62  A7        ana     a
0A63  CA 7C 0A  jz      $0A7C
0A66  48        mov     c,b
0A67  06 08     mvi     b,$08
0A69  CD FA 18  call    $18FA
0A6C  41        mov     b,c
0A6D  78        mov     a,b
0A6E  CD 7C 09  call    $097C
0A71  7E        mov     a,m
0A72  21 F3 20  lxi     h,$20F3
0A75  36 00     mvi     m,$00
0A77  2B        dcx     h
0A78  77        mov     m,a
0A79  2B        dcx     h
0A7A  36 01     mvi     m,$01
0A7C  21 62 20  lxi     h,$2062
0A7F  C9        ret
0A80  3E 02     mvi     a,$02
0A82  32 C1 20  sta     $20C1
0A85  D3 06     out     $06
0A87  3A CB 20  lda     $20CB
0A8A  A7        ana     a
0A8B  CA 85 0A  jz      $0A85
0A8E  AF        xra     a
0A8F  32 C1 20  sta     $20C1
0A92  C9        ret
0A93  D5        push    d
0A94  1A        ldax    d
0A95  CD FF 08  call    $08FF
0A98  D1        pop     d
0A99  3E 07     mvi     a,$07
0A9B  32 C0 20  sta     $20C0
0A9E  3A C0 20  lda     $20C0
0AA1  3D        dcr     a
0AA2  C2 9E 0A  jnz     $0A9E
0AA5  13        inx     d
0AA6  0D        dcr     c
0AA7  C2 93 0A  jnz     $0A93
0AAA  C9        ret
0AAB  21 50 20  lxi     h,$2050
0AAE  C3 4B 02  jmp     $024B
0AB1  3E 40     mvi     a,'@'
0AB3  C3 D7 0A  jmp     $0AD7
0AB6  3E 80     mvi     a,$80
0AB8  C3 D7 0A  jmp     $0AD7
0ABB  E1        pop     h
0ABC  C3 72 00  jmp     $0072
0ABF  3A C1 20  lda     $20C1
0AC2  0F        rrc
0AC3  DA BB 0A  jc      $0ABB
0AC6  0F        rrc
0AC7  DA 68 18  jc      $1868
0ACA  0F        rrc
0ACB  DA AB 0A  jc      $0AAB
0ACE  C9        ret
0ACF  21 14 2B  lxi     h,$2B14
0AD2  0E 0F     mvi     c,$0F
0AD4  C3 93 0A  jmp     $0A93
0AD7  32 C0 20  sta     $20C0
0ADA  3A C0 20  lda     $20C0
0ADD  A7        ana     a
0ADE  C2 DA 0A  jnz     $0ADA
0AE1  C9        ret
0AE2  21 C2 20  lxi     h,$20C2
0AE5  06 0C     mvi     b,$0C
0AE7  C3 32 1A  jmp     $1A32
0AEA  AF        xra     a
0AEB  D3 03     out     $03
0AED  D3 05     out     $05
0AEF  CD 82 19  call    $1982
0AF2  FB        ei
0AF3  CD B1 0A  call    $0AB1
0AF6  3A EC 20  lda     $20EC
0AF9  A7        ana     a
0AFA  21 17 30  lxi     h,$3017
0AFD  0E 04     mvi     c,$04
0AFF  C2 E8 0B  jnz     $0BE8
0B02  11 FA 1C  lxi     d,$1CFA
0B05  CD 93 0A  call    $0A93
0B08  11 AF 1D  lxi     d,$1DAF
0B0B  CD CF 0A  call    $0ACF
0B0E  CD B1 0A  call    $0AB1
0B11  CD 15 18  call    $1815
0B14  CD B6 0A  call    $0AB6
0B17  3A EC 20  lda     $20EC
0B1A  A7        ana     a
0B1B  C2 4A 0B  jnz     $0B4A
0B1E  11 95 1A  lxi     d,$1A95
0B21  CD E2 0A  call    $0AE2
0B24  CD 80 0A  call    $0A80
0B27  11 B0 1B  lxi     d,$1BB0
0B2A  CD E2 0A  call    $0AE2
0B2D  CD 80 0A  call    $0A80
0B30  CD B1 0A  call    $0AB1
0B33  11 C9 1F  lxi     d,$1FC9
0B36  CD E2 0A  call    $0AE2
0B39  CD 80 0A  call    $0A80
0B3C  CD B1 0A  call    $0AB1
0B3F  21 B7 33  lxi     h,$33B7
0B42  06 0A     mvi     b,$0A
0B44  CD CB 14  call    $14CB
0B47  CD B6 0A  call    $0AB6
0B4A  CD D6 09  call    $09D6
0B4D  3A FF 21  lda     $21FF
0B50  A7        ana     a
0B51  C2 5D 0B  jnz     $0B5D
0B54  CD D1 08  call    $08D1
0B57  32 FF 21  sta     $21FF
0B5A  CD 7F 1A  call    $1A7F
0B5D  CD E4 01  call    $01E4
0B60  CD C0 01  call    $01C0
0B63  CD EF 01  call    $01EF
0B66  CD 1A 02  call    $021A
0B69  3E 01     mvi     a,$01
0B6B  32 C1 20  sta     $20C1
0B6E  CD CF 01  call    $01CF
0B71  CD 18 16  call    $1618
0B74  CD F1 0B  call    $0BF1
0B77  D3 06     out     $06
0B79  CD 59 0A  call    $0A59
0B7C  CA 71 0B  jz      $0B71
0B7F  AF        xra     a
0B80  32 25 20  sta     $2025
0B83  CD 59 0A  call    $0A59
0B86  C2 83 0B  jnz     $0B83
0B89  AF        xra     a
0B8A  32 C1 20  sta     $20C1
0B8D  CD B1 0A  call    $0AB1
0B90  CD 88 19  call    $1988
0B93  0E 0C     mvi     c,$0C
0B95  21 11 2C  lxi     h,$2C11
0B98  11 90 1F  lxi     d,$1F90
0B9B  CD F3 08  call    $08F3
0B9E  3A EC 20  lda     $20EC
0BA1  FE 00     cpi     $00
0BA3  C2 AE 0B  jnz     $0BAE
0BA6  21 11 33  lxi     h,$3311
0BA9  3E 02     mvi     a,$02
0BAB  CD FF 08  call    $08FF
0BAE  01 9C 1F  lxi     b,$1F9C
0BB1  CD 56 18  call    $1856
0BB4  CD 4C 18  call    $184C
0BB7  DB 02     in      $02
0BB9  07        rlc
0BBA  DA C3 0B  jc      $0BC3
0BBD  01 A0 1F  lxi     b,$1FA0
0BC0  CD 3A 18  call    $183A
0BC3  CD B6 0A  call    $0AB6
0BC6  3A EC 20  lda     $20EC
0BC9  FE 00     cpi     $00
0BCB  C2 DA 0B  jnz     $0BDA
0BCE  11 D5 1F  lxi     d,$1FD5
0BD1  CD E2 0A  call    $0AE2
0BD4  CD 80 0A  call    $0A80
0BD7  CD 9E 18  call    $189E
0BDA  21 EC 20  lxi     h,$20EC
0BDD  7E        mov     a,m
0BDE  3C        inr     a
0BDF  E6 01     ani     $01
0BE1  77        mov     m,a
0BE2  CD D6 09  call    $09D6
0BE5  C3 DF 18  jmp     $18DF
0BE8  11 AB 1D  lxi     d,$1DAB
0BEB  CD 93 0A  call    $0A93
0BEE  C3 0B 0B  jmp     $0B0B
0BF1  CD 0A 19  call    $190A
0BF4  C3 9A 19  jmp     $199A
0BF7  13        inx     d
0BF8  00        nop
0BF9  08        nop                  ;Note: Alternative opcode used
0BFA  13        inx     d
0BFB  0E 26     mvi     c,$26
0BFD  02        stax    b
0BFE  0E 0F     mvi     c,$0F
0C00  00        nop
0C01  00        nop
0C02  00        nop
0C03  00        nop
0C04  00        nop
0C05  00        nop
0C06  00        nop
0C07  00        nop
0C08  00        nop
0C09  00        nop
0C0A  00        nop
0C0B  00        nop
0C0C  00        nop
0C0D  00        nop
0C0E  00        nop
0C0F  00        nop
0C10  00        nop
0C11  00        nop
0C12  00        nop
0C13  00        nop
0C14  00        nop
0C15  00        nop
0C16  00        nop
0C17  00        nop
0C18  00        nop
0C19  00        nop
0C1A  00        nop
0C1B  00        nop
0C1C  00        nop
0C1D  00        nop
0C1E  00        nop
0C1F  00        nop
0C20  00        nop
0C21  00        nop
0C22  00        nop
0C23  00        nop
0C24  00        nop
0C25  00        nop
0C26  00        nop
0C27  00        nop
0C28  00        nop
0C29  00        nop
0C2A  00        nop
0C2B  00        nop
0C2C  00        nop
0C2D  00        nop
0C2E  00        nop
0C2F  00        nop
0C30  00        nop
0C31  00        nop
0C32  00        nop
0C33  00        nop
0C34  00        nop
0C35  00        nop
0C36  00        nop
0C37  00        nop
0C38  00        nop
0C39  00        nop
0C3A  00        nop
0C3B  00        nop
0C3C  00        nop
0C3D  00        nop
0C3E  00        nop
0C3F  00        nop
0C40  00        nop
0C41  00        nop
0C42  00        nop
0C43  00        nop
0C44  00        nop
0C45  00        nop
0C46  00        nop
0C47  00        nop
0C48  00        nop
0C49  00        nop
0C4A  00        nop
0C4B  00        nop
0C4C  00        nop
0C4D  00        nop
0C4E  00        nop
0C4F  00        nop
0C50  00        nop
0C51  00        nop
0C52  00        nop
0C53  00        nop
0C54  00        nop
0C55  00        nop
0C56  00        nop
0C57  00        nop
0C58  00        nop
0C59  00        nop
0C5A  00        nop
0C5B  00        nop
0C5C  00        nop
0C5D  00        nop
0C5E  00        nop
0C5F  00        nop
0C60  00        nop
0C61  00        nop
0C62  00        nop
0C63  00        nop
0C64  00        nop
0C65  00        nop
0C66  00        nop
0C67  00        nop
0C68  00        nop
0C69  00        nop
0C6A  00        nop
0C6B  00        nop
0C6C  00        nop
0C6D  00        nop
0C6E  00        nop
0C6F  00        nop
0C70  00        nop
0C71  00        nop
0C72  00        nop
0C73  00        nop
0C74  00        nop
0C75  00        nop
0C76  00        nop
0C77  00        nop
0C78  00        nop
0C79  00        nop
0C7A  00        nop
0C7B  00        nop
0C7C  00        nop
0C7D  00        nop
0C7E  00        nop
0C7F  00        nop
0C80  00        nop
0C81  00        nop
0C82  00        nop
0C83  00        nop
0C84  00        nop
0C85  00        nop
0C86  00        nop
0C87  00        nop
0C88  00        nop
0C89  00        nop
0C8A  00        nop
0C8B  00        nop
0C8C  00        nop
0C8D  00        nop
0C8E  00        nop
0C8F  00        nop
0C90  00        nop
0C91  00        nop
0C92  00        nop
0C93  00        nop
0C94  00        nop
0C95  00        nop
0C96  00        nop
0C97  00        nop
0C98  00        nop
0C99  00        nop
0C9A  00        nop
0C9B  00        nop
0C9C  00        nop
0C9D  00        nop
0C9E  00        nop
0C9F  00        nop
0CA0  00        nop
0CA1  00        nop
0CA2  00        nop
0CA3  00        nop
0CA4  00        nop
0CA5  00        nop
0CA6  00        nop
0CA7  00        nop
0CA8  00        nop
0CA9  00        nop
0CAA  00        nop
0CAB  00        nop
0CAC  00        nop
0CAD  00        nop
0CAE  00        nop
0CAF  00        nop
0CB0  00        nop
0CB1  00        nop
0CB2  00        nop
0CB3  00        nop
0CB4  00        nop
0CB5  00        nop
0CB6  00        nop
0CB7  00        nop
0CB8  00        nop
0CB9  00        nop
0CBA  00        nop
0CBB  00        nop
0CBC  00        nop
0CBD  00        nop
0CBE  00        nop
0CBF  00        nop
0CC0  00        nop
0CC1  00        nop
0CC2  00        nop
0CC3  00        nop
0CC4  00        nop
0CC5  00        nop
0CC6  00        nop
0CC7  00        nop
0CC8  00        nop
0CC9  00        nop
0CCA  00        nop
0CCB  00        nop
0CCC  00        nop
0CCD  00        nop
0CCE  00        nop
0CCF  00        nop
0CD0  00        nop
0CD1  00        nop
0CD2  00        nop
0CD3  00        nop
0CD4  00        nop
0CD5  00        nop
0CD6  00        nop
0CD7  00        nop
0CD8  00        nop
0CD9  00        nop
0CDA  00        nop
0CDB  00        nop
0CDC  00        nop
0CDD  00        nop
0CDE  00        nop
0CDF  00        nop
0CE0  00        nop
0CE1  00        nop
0CE2  00        nop
0CE3  00        nop
0CE4  00        nop
0CE5  00        nop
0CE6  00        nop
0CE7  00        nop
0CE8  00        nop
0CE9  00        nop
0CEA  00        nop
0CEB  00        nop
0CEC  00        nop
0CED  00        nop
0CEE  00        nop
0CEF  00        nop
0CF0  00        nop
0CF1  00        nop
0CF2  00        nop
0CF3  00        nop
0CF4  00        nop
0CF5  00        nop
0CF6  00        nop
0CF7  00        nop
0CF8  00        nop
0CF9  00        nop
0CFA  00        nop
0CFB  00        nop
0CFC  00        nop
0CFD  00        nop
0CFE  00        nop
0CFF  00        nop
0D00  00        nop
0D01  00        nop
0D02  00        nop
0D03  00        nop
0D04  00        nop
0D05  00        nop
0D06  00        nop
0D07  00        nop
0D08  00        nop
0D09  00        nop
0D0A  00        nop
0D0B  00        nop
0D0C  00        nop
0D0D  00        nop
0D0E  00        nop
0D0F  00        nop
0D10  00        nop
0D11  00        nop
0D12  00        nop
0D13  00        nop
0D14  00        nop
0D15  00        nop
0D16  00        nop
0D17  00        nop
0D18  00        nop
0D19  00        nop
0D1A  00        nop
0D1B  00        nop
0D1C  00        nop
0D1D  00        nop
0D1E  00        nop
0D1F  00        nop
0D20  00        nop
0D21  00        nop
0D22  00        nop
0D23  00        nop
0D24  00        nop
0D25  00        nop
0D26  00        nop
0D27  00        nop
0D28  00        nop
0D29  00        nop
0D2A  00        nop
0D2B  00        nop
0D2C  00        nop
0D2D  00        nop
0D2E  00        nop
0D2F  00        nop
0D30  00        nop
0D31  00        nop
0D32  00        nop
0D33  00        nop
0D34  00        nop
0D35  00        nop
0D36  00        nop
0D37  00        nop
0D38  00        nop
0D39  00        nop
0D3A  00        nop
0D3B  00        nop
0D3C  00        nop
0D3D  00        nop
0D3E  00        nop
0D3F  00        nop
0D40  00        nop
0D41  00        nop
0D42  00        nop
0D43  00        nop
0D44  00        nop
0D45  00        nop
0D46  00        nop
0D47  00        nop
0D48  00        nop
0D49  00        nop
0D4A  00        nop
0D4B  00        nop
0D4C  00        nop
0D4D  00        nop
0D4E  00        nop
0D4F  00        nop
0D50  00        nop
0D51  00        nop
0D52  00        nop
0D53  00        nop
0D54  00        nop
0D55  00        nop
0D56  00        nop
0D57  00        nop
0D58  00        nop
0D59  00        nop
0D5A  00        nop
0D5B  00        nop
0D5C  00        nop
0D5D  00        nop
0D5E  00        nop
0D5F  00        nop
0D60  00        nop
0D61  00        nop
0D62  00        nop
0D63  00        nop
0D64  00        nop
0D65  00        nop
0D66  00        nop
0D67  00        nop
0D68  00        nop
0D69  00        nop
0D6A  00        nop
0D6B  00        nop
0D6C  00        nop
0D6D  00        nop
0D6E  00        nop
0D6F  00        nop
0D70  00        nop
0D71  00        nop
0D72  00        nop
0D73  00        nop
0D74  00        nop
0D75  00        nop
0D76  00        nop
0D77  00        nop
0D78  00        nop
0D79  00        nop
0D7A  00        nop
0D7B  00        nop
0D7C  00        nop
0D7D  00        nop
0D7E  00        nop
0D7F  00        nop
0D80  00        nop
0D81  00        nop
0D82  00        nop
0D83  00        nop
0D84  00        nop
0D85  00        nop
0D86  00        nop
0D87  00        nop
0D88  00        nop
0D89  00        nop
0D8A  00        nop
0D8B  00        nop
0D8C  00        nop
0D8D  00        nop
0D8E  00        nop
0D8F  00        nop
0D90  00        nop
0D91  00        nop
0D92  00        nop
0D93  00        nop
0D94  00        nop
0D95  00        nop
0D96  00        nop
0D97  00        nop
0D98  00        nop
0D99  00        nop
0D9A  00        nop
0D9B  00        nop
0D9C  00        nop
0D9D  00        nop
0D9E  00        nop
0D9F  00        nop
0DA0  00        nop
0DA1  00        nop
0DA2  00        nop
0DA3  00        nop
0DA4  00        nop
0DA5  00        nop
0DA6  00        nop
0DA7  00        nop
0DA8  00        nop
0DA9  00        nop
0DAA  00        nop
0DAB  00        nop
0DAC  00        nop
0DAD  00        nop
0DAE  00        nop
0DAF  00        nop
0DB0  00        nop
0DB1  00        nop
0DB2  00        nop
0DB3  00        nop
0DB4  00        nop
0DB5  00        nop
0DB6  00        nop
0DB7  00        nop
0DB8  00        nop
0DB9  00        nop
0DBA  00        nop
0DBB  00        nop
0DBC  00        nop
0DBD  00        nop
0DBE  00        nop
0DBF  00        nop
0DC0  00        nop
0DC1  00        nop
0DC2  00        nop
0DC3  00        nop
0DC4  00        nop
0DC5  00        nop
0DC6  00        nop
0DC7  00        nop
0DC8  00        nop
0DC9  00        nop
0DCA  00        nop
0DCB  00        nop
0DCC  00        nop
0DCD  00        nop
0DCE  00        nop
0DCF  00        nop
0DD0  00        nop
0DD1  00        nop
0DD2  00        nop
0DD3  00        nop
0DD4  00        nop
0DD5  00        nop
0DD6  00        nop
0DD7  00        nop
0DD8  00        nop
0DD9  00        nop
0DDA  00        nop
0DDB  00        nop
0DDC  00        nop
0DDD  00        nop
0DDE  00        nop
0DDF  00        nop
0DE0  00        nop
0DE1  00        nop
0DE2  00        nop
0DE3  00        nop
0DE4  00        nop
0DE5  00        nop
0DE6  00        nop
0DE7  00        nop
0DE8  00        nop
0DE9  00        nop
0DEA  00        nop
0DEB  00        nop
0DEC  00        nop
0DED  00        nop
0DEE  00        nop
0DEF  00        nop
0DF0  00        nop
0DF1  00        nop
0DF2  00        nop
0DF3  00        nop
0DF4  00        nop
0DF5  00        nop
0DF6  00        nop
0DF7  00        nop
0DF8  00        nop
0DF9  00        nop
0DFA  00        nop
0DFB  00        nop
0DFC  00        nop
0DFD  00        nop
0DFE  00        nop
0DFF  00        nop
0E00  00        nop
0E01  00        nop
0E02  00        nop
0E03  00        nop
0E04  00        nop
0E05  00        nop
0E06  00        nop
0E07  00        nop
0E08  00        nop
0E09  00        nop
0E0A  00        nop
0E0B  00        nop
0E0C  00        nop
0E0D  00        nop
0E0E  00        nop
0E0F  00        nop
0E10  00        nop
0E11  00        nop
0E12  00        nop
0E13  00        nop
0E14  00        nop
0E15  00        nop
0E16  00        nop
0E17  00        nop
0E18  00        nop
0E19  00        nop
0E1A  00        nop
0E1B  00        nop
0E1C  00        nop
0E1D  00        nop
0E1E  00        nop
0E1F  00        nop
0E20  00        nop
0E21  00        nop
0E22  00        nop
0E23  00        nop
0E24  00        nop
0E25  00        nop
0E26  00        nop
0E27  00        nop
0E28  00        nop
0E29  00        nop
0E2A  00        nop
0E2B  00        nop
0E2C  00        nop
0E2D  00        nop
0E2E  00        nop
0E2F  00        nop
0E30  00        nop
0E31  00        nop
0E32  00        nop
0E33  00        nop
0E34  00        nop
0E35  00        nop
0E36  00        nop
0E37  00        nop
0E38  00        nop
0E39  00        nop
0E3A  00        nop
0E3B  00        nop
0E3C  00        nop
0E3D  00        nop
0E3E  00        nop
0E3F  00        nop
0E40  00        nop
0E41  00        nop
0E42  00        nop
0E43  00        nop
0E44  00        nop
0E45  00        nop
0E46  00        nop
0E47  00        nop
0E48  00        nop
0E49  00        nop
0E4A  00        nop
0E4B  00        nop
0E4C  00        nop
0E4D  00        nop
0E4E  00        nop
0E4F  00        nop
0E50  00        nop
0E51  00        nop
0E52  00        nop
0E53  00        nop
0E54  00        nop
0E55  00        nop
0E56  00        nop
0E57  00        nop
0E58  00        nop
0E59  00        nop
0E5A  00        nop
0E5B  00        nop
0E5C  00        nop
0E5D  00        nop
0E5E  00        nop
0E5F  00        nop
0E60  00        nop
0E61  00        nop
0E62  00        nop
0E63  00        nop
0E64  00        nop
0E65  00        nop
0E66  00        nop
0E67  00        nop
0E68  00        nop
0E69  00        nop
0E6A  00        nop
0E6B  00        nop
0E6C  00        nop
0E6D  00        nop
0E6E  00        nop
0E6F  00        nop
0E70  00        nop
0E71  00        nop
0E72  00        nop
0E73  00        nop
0E74  00        nop
0E75  00        nop
0E76  00        nop
0E77  00        nop
0E78  00        nop
0E79  00        nop
0E7A  00        nop
0E7B  00        nop
0E7C  00        nop
0E7D  00        nop
0E7E  00        nop
0E7F  00        nop
0E80  00        nop
0E81  00        nop
0E82  00        nop
0E83  00        nop
0E84  00        nop
0E85  00        nop
0E86  00        nop
0E87  00        nop
0E88  00        nop
0E89  00        nop
0E8A  00        nop
0E8B  00        nop
0E8C  00        nop
0E8D  00        nop
0E8E  00        nop
0E8F  00        nop
0E90  00        nop
0E91  00        nop
0E92  00        nop
0E93  00        nop
0E94  00        nop
0E95  00        nop
0E96  00        nop
0E97  00        nop
0E98  00        nop
0E99  00        nop
0E9A  00        nop
0E9B  00        nop
0E9C  00        nop
0E9D  00        nop
0E9E  00        nop
0E9F  00        nop
0EA0  00        nop
0EA1  00        nop
0EA2  00        nop
0EA3  00        nop
0EA4  00        nop
0EA5  00        nop
0EA6  00        nop
0EA7  00        nop
0EA8  00        nop
0EA9  00        nop
0EAA  00        nop
0EAB  00        nop
0EAC  00        nop
0EAD  00        nop
0EAE  00        nop
0EAF  00        nop
0EB0  00        nop
0EB1  00        nop
0EB2  00        nop
0EB3  00        nop
0EB4  00        nop
0EB5  00        nop
0EB6  00        nop
0EB7  00        nop
0EB8  00        nop
0EB9  00        nop
0EBA  00        nop
0EBB  00        nop
0EBC  00        nop
0EBD  00        nop
0EBE  00        nop
0EBF  00        nop
0EC0  00        nop
0EC1  00        nop
0EC2  00        nop
0EC3  00        nop
0EC4  00        nop
0EC5  00        nop
0EC6  00        nop
0EC7  00        nop
0EC8  00        nop
0EC9  00        nop
0ECA  00        nop
0ECB  00        nop
0ECC  00        nop
0ECD  00        nop
0ECE  00        nop
0ECF  00        nop
0ED0  00        nop
0ED1  00        nop
0ED2  00        nop
0ED3  00        nop
0ED4  00        nop
0ED5  00        nop
0ED6  00        nop
0ED7  00        nop
0ED8  00        nop
0ED9  00        nop
0EDA  00        nop
0EDB  00        nop
0EDC  00        nop
0EDD  00        nop
0EDE  00        nop
0EDF  00        nop
0EE0  00        nop
0EE1  00        nop
0EE2  00        nop
0EE3  00        nop
0EE4  00        nop
0EE5  00        nop
0EE6  00        nop
0EE7  00        nop
0EE8  00        nop
0EE9  00        nop
0EEA  00        nop
0EEB  00        nop
0EEC  00        nop
0EED  00        nop
0EEE  00        nop
0EEF  00        nop
0EF0  00        nop
0EF1  00        nop
0EF2  00        nop
0EF3  00        nop
0EF4  00        nop
0EF5  00        nop
0EF6  00        nop
0EF7  00        nop
0EF8  00        nop
0EF9  00        nop
0EFA  00        nop
0EFB  00        nop
0EFC  00        nop
0EFD  00        nop
0EFE  00        nop
0EFF  00        nop
0F00  00        nop
0F01  00        nop
0F02  00        nop
0F03  00        nop
0F04  00        nop
0F05  00        nop
0F06  00        nop
0F07  00        nop
0F08  00        nop
0F09  00        nop
0F0A  00        nop
0F0B  00        nop
0F0C  00        nop
0F0D  00        nop
0F0E  00        nop
0F0F  00        nop
0F10  00        nop
0F11  00        nop
0F12  00        nop
0F13  00        nop
0F14  00        nop
0F15  00        nop
0F16  00        nop
0F17  00        nop
0F18  00        nop
0F19  00        nop
0F1A  00        nop
0F1B  00        nop
0F1C  00        nop
0F1D  00        nop
0F1E  00        nop
0F1F  00        nop
0F20  00        nop
0F21  00        nop
0F22  00        nop
0F23  00        nop
0F24  00        nop
0F25  00        nop
0F26  00        nop
0F27  00        nop
0F28  00        nop
0F29  00        nop
0F2A  00        nop
0F2B  00        nop
0F2C  00        nop
0F2D  00        nop
0F2E  00        nop
0F2F  00        nop
0F30  00        nop
0F31  00        nop
0F32  00        nop
0F33  00        nop
0F34  00        nop
0F35  00        nop
0F36  00        nop
0F37  00        nop
0F38  00        nop
0F39  00        nop
0F3A  00        nop
0F3B  00        nop
0F3C  00        nop
0F3D  00        nop
0F3E  00        nop
0F3F  00        nop
0F40  00        nop
0F41  00        nop
0F42  00        nop
0F43  00        nop
0F44  00        nop
0F45  00        nop
0F46  00        nop
0F47  00        nop
0F48  00        nop
0F49  00        nop
0F4A  00        nop
0F4B  00        nop
0F4C  00        nop
0F4D  00        nop
0F4E  00        nop
0F4F  00        nop
0F50  00        nop
0F51  00        nop
0F52  00        nop
0F53  00        nop
0F54  00        nop
0F55  00        nop
0F56  00        nop
0F57  00        nop
0F58  00        nop
0F59  00        nop
0F5A  00        nop
0F5B  00        nop
0F5C  00        nop
0F5D  00        nop
0F5E  00        nop
0F5F  00        nop
0F60  00        nop
0F61  00        nop
0F62  00        nop
0F63  00        nop
0F64  00        nop
0F65  00        nop
0F66  00        nop
0F67  00        nop
0F68  00        nop
0F69  00        nop
0F6A  00        nop
0F6B  00        nop
0F6C  00        nop
0F6D  00        nop
0F6E  00        nop
0F6F  00        nop
0F70  00        nop
0F71  00        nop
0F72  00        nop
0F73  00        nop
0F74  00        nop
0F75  00        nop
0F76  00        nop
0F77  00        nop
0F78  00        nop
0F79  00        nop
0F7A  00        nop
0F7B  00        nop
0F7C  00        nop
0F7D  00        nop
0F7E  00        nop
0F7F  00        nop
0F80  00        nop
0F81  00        nop
0F82  00        nop
0F83  00        nop
0F84  00        nop
0F85  00        nop
0F86  00        nop
0F87  00        nop
0F88  00        nop
0F89  00        nop
0F8A  00        nop
0F8B  00        nop
0F8C  00        nop
0F8D  00        nop
0F8E  00        nop
0F8F  00        nop
0F90  00        nop
0F91  00        nop
0F92  00        nop
0F93  00        nop
0F94  00        nop
0F95  00        nop
0F96  00        nop
0F97  00        nop
0F98  00        nop
0F99  00        nop
0F9A  00        nop
0F9B  00        nop
0F9C  00        nop
0F9D  00        nop
0F9E  00        nop
0F9F  00        nop
0FA0  00        nop
0FA1  00        nop
0FA2  00        nop
0FA3  00        nop
0FA4  00        nop
0FA5  00        nop
0FA6  00        nop
0FA7  00        nop
0FA8  00        nop
0FA9  00        nop
0FAA  00        nop
0FAB  00        nop
0FAC  00        nop
0FAD  00        nop
0FAE  00        nop
0FAF  00        nop
0FB0  00        nop
0FB1  00        nop
0FB2  00        nop
0FB3  00        nop
0FB4  00        nop
0FB5  00        nop
0FB6  00        nop
0FB7  00        nop
0FB8  00        nop
0FB9  00        nop
0FBA  00        nop
0FBB  00        nop
0FBC  00        nop
0FBD  00        nop
0FBE  00        nop
0FBF  00        nop
0FC0  00        nop
0FC1  00        nop
0FC2  00        nop
0FC3  00        nop
0FC4  00        nop
0FC5  00        nop
0FC6  00        nop
0FC7  00        nop
0FC8  00        nop
0FC9  00        nop
0FCA  00        nop
0FCB  00        nop
0FCC  00        nop
0FCD  00        nop
0FCE  00        nop
0FCF  00        nop
0FD0  00        nop
0FD1  00        nop
0FD2  00        nop
0FD3  00        nop
0FD4  00        nop
0FD5  00        nop
0FD6  00        nop
0FD7  00        nop
0FD8  00        nop
0FD9  00        nop
0FDA  00        nop
0FDB  00        nop
0FDC  00        nop
0FDD  00        nop
0FDE  00        nop
0FDF  00        nop
0FE0  00        nop
0FE1  00        nop
0FE2  00        nop
0FE3  00        nop
0FE4  00        nop
0FE5  00        nop
0FE6  00        nop
0FE7  00        nop
0FE8  00        nop
0FE9  00        nop
0FEA  00        nop
0FEB  00        nop
0FEC  00        nop
0FED  00        nop
0FEE  00        nop
0FEF  00        nop
0FF0  00        nop
0FF1  00        nop
0FF2  00        nop
0FF3  00        nop
0FF4  00        nop
0FF5  00        nop
0FF6  00        nop
0FF7  00        nop
0FF8  00        nop
0FF9  00        nop
0FFA  00        nop
0FFB  00        nop
0FFC  00        nop
0FFD  00        nop
0FFE  00        nop
0FFF  00        nop
1000  00        nop
1001  00        nop
1002  00        nop
1003  00        nop
1004  00        nop
1005  00        nop
1006  00        nop
1007  00        nop
1008  00        nop
1009  00        nop
100A  00        nop
100B  00        nop
100C  00        nop
100D  00        nop
100E  00        nop
100F  00        nop
1010  00        nop
1011  00        nop
1012  00        nop
1013  00        nop
1014  00        nop
1015  00        nop
1016  00        nop
1017  00        nop
1018  00        nop
1019  00        nop
101A  00        nop
101B  00        nop
101C  00        nop
101D  00        nop
101E  00        nop
101F  00        nop
1020  00        nop
1021  00        nop
1022  00        nop
1023  00        nop
1024  00        nop
1025  00        nop
1026  00        nop
1027  00        nop
1028  00        nop
1029  00        nop
102A  00        nop
102B  00        nop
102C  00        nop
102D  00        nop
102E  00        nop
102F  00        nop
1030  00        nop
1031  00        nop
1032  00        nop
1033  00        nop
1034  00        nop
1035  00        nop
1036  00        nop
1037  00        nop
1038  00        nop
1039  00        nop
103A  00        nop
103B  00        nop
103C  00        nop
103D  00        nop
103E  00        nop
103F  00        nop
1040  00        nop
1041  00        nop
1042  00        nop
1043  00        nop
1044  00        nop
1045  00        nop
1046  00        nop
1047  00        nop
1048  00        nop
1049  00        nop
104A  00        nop
104B  00        nop
104C  00        nop
104D  00        nop
104E  00        nop
104F  00        nop
1050  00        nop
1051  00        nop
1052  00        nop
1053  00        nop
1054  00        nop
1055  00        nop
1056  00        nop
1057  00        nop
1058  00        nop
1059  00        nop
105A  00        nop
105B  00        nop
105C  00        nop
105D  00        nop
105E  00        nop
105F  00        nop
1060  00        nop
1061  00        nop
1062  00        nop
1063  00        nop
1064  00        nop
1065  00        nop
1066  00        nop
1067  00        nop
1068  00        nop
1069  00        nop
106A  00        nop
106B  00        nop
106C  00        nop
106D  00        nop
106E  00        nop
106F  00        nop
1070  00        nop
1071  00        nop
1072  00        nop
1073  00        nop
1074  00        nop
1075  00        nop
1076  00        nop
1077  00        nop
1078  00        nop
1079  00        nop
107A  00        nop
107B  00        nop
107C  00        nop
107D  00        nop
107E  00        nop
107F  00        nop
1080  00        nop
1081  00        nop
1082  00        nop
1083  00        nop
1084  00        nop
1085  00        nop
1086  00        nop
1087  00        nop
1088  00        nop
1089  00        nop
108A  00        nop
108B  00        nop
108C  00        nop
108D  00        nop
108E  00        nop
108F  00        nop
1090  00        nop
1091  00        nop
1092  00        nop
1093  00        nop
1094  00        nop
1095  00        nop
1096  00        nop
1097  00        nop
1098  00        nop
1099  00        nop
109A  00        nop
109B  00        nop
109C  00        nop
109D  00        nop
109E  00        nop
109F  00        nop
10A0  00        nop
10A1  00        nop
10A2  00        nop
10A3  00        nop
10A4  00        nop
10A5  00        nop
10A6  00        nop
10A7  00        nop
10A8  00        nop
10A9  00        nop
10AA  00        nop
10AB  00        nop
10AC  00        nop
10AD  00        nop
10AE  00        nop
10AF  00        nop
10B0  00        nop
10B1  00        nop
10B2  00        nop
10B3  00        nop
10B4  00        nop
10B5  00        nop
10B6  00        nop
10B7  00        nop
10B8  00        nop
10B9  00        nop
10BA  00        nop
10BB  00        nop
10BC  00        nop
10BD  00        nop
10BE  00        nop
10BF  00        nop
10C0  00        nop
10C1  00        nop
10C2  00        nop
10C3  00        nop
10C4  00        nop
10C5  00        nop
10C6  00        nop
10C7  00        nop
10C8  00        nop
10C9  00        nop
10CA  00        nop
10CB  00        nop
10CC  00        nop
10CD  00        nop
10CE  00        nop
10CF  00        nop
10D0  00        nop
10D1  00        nop
10D2  00        nop
10D3  00        nop
10D4  00        nop
10D5  00        nop
10D6  00        nop
10D7  00        nop
10D8  00        nop
10D9  00        nop
10DA  00        nop
10DB  00        nop
10DC  00        nop
10DD  00        nop
10DE  00        nop
10DF  00        nop
10E0  00        nop
10E1  00        nop
10E2  00        nop
10E3  00        nop
10E4  00        nop
10E5  00        nop
10E6  00        nop
10E7  00        nop
10E8  00        nop
10E9  00        nop
10EA  00        nop
10EB  00        nop
10EC  00        nop
10ED  00        nop
10EE  00        nop
10EF  00        nop
10F0  00        nop
10F1  00        nop
10F2  00        nop
10F3  00        nop
10F4  00        nop
10F5  00        nop
10F6  00        nop
10F7  00        nop
10F8  00        nop
10F9  00        nop
10FA  00        nop
10FB  00        nop
10FC  00        nop
10FD  00        nop
10FE  00        nop
10FF  00        nop
1100  00        nop
1101  00        nop
1102  00        nop
1103  00        nop
1104  00        nop
1105  00        nop
1106  00        nop
1107  00        nop
1108  00        nop
1109  00        nop
110A  00        nop
110B  00        nop
110C  00        nop
110D  00        nop
110E  00        nop
110F  00        nop
1110  00        nop
1111  00        nop
1112  00        nop
1113  00        nop
1114  00        nop
1115  00        nop
1116  00        nop
1117  00        nop
1118  00        nop
1119  00        nop
111A  00        nop
111B  00        nop
111C  00        nop
111D  00        nop
111E  00        nop
111F  00        nop
1120  00        nop
1121  00        nop
1122  00        nop
1123  00        nop
1124  00        nop
1125  00        nop
1126  00        nop
1127  00        nop
1128  00        nop
1129  00        nop
112A  00        nop
112B  00        nop
112C  00        nop
112D  00        nop
112E  00        nop
112F  00        nop
1130  00        nop
1131  00        nop
1132  00        nop
1133  00        nop
1134  00        nop
1135  00        nop
1136  00        nop
1137  00        nop
1138  00        nop
1139  00        nop
113A  00        nop
113B  00        nop
113C  00        nop
113D  00        nop
113E  00        nop
113F  00        nop
1140  00        nop
1141  00        nop
1142  00        nop
1143  00        nop
1144  00        nop
1145  00        nop
1146  00        nop
1147  00        nop
1148  00        nop
1149  00        nop
114A  00        nop
114B  00        nop
114C  00        nop
114D  00        nop
114E  00        nop
114F  00        nop
1150  00        nop
1151  00        nop
1152  00        nop
1153  00        nop
1154  00        nop
1155  00        nop
1156  00        nop
1157  00        nop
1158  00        nop
1159  00        nop
115A  00        nop
115B  00        nop
115C  00        nop
115D  00        nop
115E  00        nop
115F  00        nop
1160  00        nop
1161  00        nop
1162  00        nop
1163  00        nop
1164  00        nop
1165  00        nop
1166  00        nop
1167  00        nop
1168  00        nop
1169  00        nop
116A  00        nop
116B  00        nop
116C  00        nop
116D  00        nop
116E  00        nop
116F  00        nop
1170  00        nop
1171  00        nop
1172  00        nop
1173  00        nop
1174  00        nop
1175  00        nop
1176  00        nop
1177  00        nop
1178  00        nop
1179  00        nop
117A  00        nop
117B  00        nop
117C  00        nop
117D  00        nop
117E  00        nop
117F  00        nop
1180  00        nop
1181  00        nop
1182  00        nop
1183  00        nop
1184  00        nop
1185  00        nop
1186  00        nop
1187  00        nop
1188  00        nop
1189  00        nop
118A  00        nop
118B  00        nop
118C  00        nop
118D  00        nop
118E  00        nop
118F  00        nop
1190  00        nop
1191  00        nop
1192  00        nop
1193  00        nop
1194  00        nop
1195  00        nop
1196  00        nop
1197  00        nop
1198  00        nop
1199  00        nop
119A  00        nop
119B  00        nop
119C  00        nop
119D  00        nop
119E  00        nop
119F  00        nop
11A0  00        nop
11A1  00        nop
11A2  00        nop
11A3  00        nop
11A4  00        nop
11A5  00        nop
11A6  00        nop
11A7  00        nop
11A8  00        nop
11A9  00        nop
11AA  00        nop
11AB  00        nop
11AC  00        nop
11AD  00        nop
11AE  00        nop
11AF  00        nop
11B0  00        nop
11B1  00        nop
11B2  00        nop
11B3  00        nop
11B4  00        nop
11B5  00        nop
11B6  00        nop
11B7  00        nop
11B8  00        nop
11B9  00        nop
11BA  00        nop
11BB  00        nop
11BC  00        nop
11BD  00        nop
11BE  00        nop
11BF  00        nop
11C0  00        nop
11C1  00        nop
11C2  00        nop
11C3  00        nop
11C4  00        nop
11C5  00        nop
11C6  00        nop
11C7  00        nop
11C8  00        nop
11C9  00        nop
11CA  00        nop
11CB  00        nop
11CC  00        nop
11CD  00        nop
11CE  00        nop
11CF  00        nop
11D0  00        nop
11D1  00        nop
11D2  00        nop
11D3  00        nop
11D4  00        nop
11D5  00        nop
11D6  00        nop
11D7  00        nop
11D8  00        nop
11D9  00        nop
11DA  00        nop
11DB  00        nop
11DC  00        nop
11DD  00        nop
11DE  00        nop
11DF  00        nop
11E0  00        nop
11E1  00        nop
11E2  00        nop
11E3  00        nop
11E4  00        nop
11E5  00        nop
11E6  00        nop
11E7  00        nop
11E8  00        nop
11E9  00        nop
11EA  00        nop
11EB  00        nop
11EC  00        nop
11ED  00        nop
11EE  00        nop
11EF  00        nop
11F0  00        nop
11F1  00        nop
11F2  00        nop
11F3  00        nop
11F4  00        nop
11F5  00        nop
11F6  00        nop
11F7  00        nop
11F8  00        nop
11F9  00        nop
11FA  00        nop
11FB  00        nop
11FC  00        nop
11FD  00        nop
11FE  00        nop
11FF  00        nop
1200  00        nop
1201  00        nop
1202  00        nop
1203  00        nop
1204  00        nop
1205  00        nop
1206  00        nop
1207  00        nop
1208  00        nop
1209  00        nop
120A  00        nop
120B  00        nop
120C  00        nop
120D  00        nop
120E  00        nop
120F  00        nop
1210  00        nop
1211  00        nop
1212  00        nop
1213  00        nop
1214  00        nop
1215  00        nop
1216  00        nop
1217  00        nop
1218  00        nop
1219  00        nop
121A  00        nop
121B  00        nop
121C  00        nop
121D  00        nop
121E  00        nop
121F  00        nop
1220  00        nop
1221  00        nop
1222  00        nop
1223  00        nop
1224  00        nop
1225  00        nop
1226  00        nop
1227  00        nop
1228  00        nop
1229  00        nop
122A  00        nop
122B  00        nop
122C  00        nop
122D  00        nop
122E  00        nop
122F  00        nop
1230  00        nop
1231  00        nop
1232  00        nop
1233  00        nop
1234  00        nop
1235  00        nop
1236  00        nop
1237  00        nop
1238  00        nop
1239  00        nop
123A  00        nop
123B  00        nop
123C  00        nop
123D  00        nop
123E  00        nop
123F  00        nop
1240  00        nop
1241  00        nop
1242  00        nop
1243  00        nop
1244  00        nop
1245  00        nop
1246  00        nop
1247  00        nop
1248  00        nop
1249  00        nop
124A  00        nop
124B  00        nop
124C  00        nop
124D  00        nop
124E  00        nop
124F  00        nop
1250  00        nop
1251  00        nop
1252  00        nop
1253  00        nop
1254  00        nop
1255  00        nop
1256  00        nop
1257  00        nop
1258  00        nop
1259  00        nop
125A  00        nop
125B  00        nop
125C  00        nop
125D  00        nop
125E  00        nop
125F  00        nop
1260  00        nop
1261  00        nop
1262  00        nop
1263  00        nop
1264  00        nop
1265  00        nop
1266  00        nop
1267  00        nop
1268  00        nop
1269  00        nop
126A  00        nop
126B  00        nop
126C  00        nop
126D  00        nop
126E  00        nop
126F  00        nop
1270  00        nop
1271  00        nop
1272  00        nop
1273  00        nop
1274  00        nop
1275  00        nop
1276  00        nop
1277  00        nop
1278  00        nop
1279  00        nop
127A  00        nop
127B  00        nop
127C  00        nop
127D  00        nop
127E  00        nop
127F  00        nop
1280  00        nop
1281  00        nop
1282  00        nop
1283  00        nop
1284  00        nop
1285  00        nop
1286  00        nop
1287  00        nop
1288  00        nop
1289  00        nop
128A  00        nop
128B  00        nop
128C  00        nop
128D  00        nop
128E  00        nop
128F  00        nop
1290  00        nop
1291  00        nop
1292  00        nop
1293  00        nop
1294  00        nop
1295  00        nop
1296  00        nop
1297  00        nop
1298  00        nop
1299  00        nop
129A  00        nop
129B  00        nop
129C  00        nop
129D  00        nop
129E  00        nop
129F  00        nop
12A0  00        nop
12A1  00        nop
12A2  00        nop
12A3  00        nop
12A4  00        nop
12A5  00        nop
12A6  00        nop
12A7  00        nop
12A8  00        nop
12A9  00        nop
12AA  00        nop
12AB  00        nop
12AC  00        nop
12AD  00        nop
12AE  00        nop
12AF  00        nop
12B0  00        nop
12B1  00        nop
12B2  00        nop
12B3  00        nop
12B4  00        nop
12B5  00        nop
12B6  00        nop
12B7  00        nop
12B8  00        nop
12B9  00        nop
12BA  00        nop
12BB  00        nop
12BC  00        nop
12BD  00        nop
12BE  00        nop
12BF  00        nop
12C0  00        nop
12C1  00        nop
12C2  00        nop
12C3  00        nop
12C4  00        nop
12C5  00        nop
12C6  00        nop
12C7  00        nop
12C8  00        nop
12C9  00        nop
12CA  00        nop
12CB  00        nop
12CC  00        nop
12CD  00        nop
12CE  00        nop
12CF  00        nop
12D0  00        nop
12D1  00        nop
12D2  00        nop
12D3  00        nop
12D4  00        nop
12D5  00        nop
12D6  00        nop
12D7  00        nop
12D8  00        nop
12D9  00        nop
12DA  00        nop
12DB  00        nop
12DC  00        nop
12DD  00        nop
12DE  00        nop
12DF  00        nop
12E0  00        nop
12E1  00        nop
12E2  00        nop
12E3  00        nop
12E4  00        nop
12E5  00        nop
12E6  00        nop
12E7  00        nop
12E8  00        nop
12E9  00        nop
12EA  00        nop
12EB  00        nop
12EC  00        nop
12ED  00        nop
12EE  00        nop
12EF  00        nop
12F0  00        nop
12F1  00        nop
12F2  00        nop
12F3  00        nop
12F4  00        nop
12F5  00        nop
12F6  00        nop
12F7  00        nop
12F8  00        nop
12F9  00        nop
12FA  00        nop
12FB  00        nop
12FC  00        nop
12FD  00        nop
12FE  00        nop
12FF  00        nop
1300  00        nop
1301  00        nop
1302  00        nop
1303  00        nop
1304  00        nop
1305  00        nop
1306  00        nop
1307  00        nop
1308  00        nop
1309  00        nop
130A  00        nop
130B  00        nop
130C  00        nop
130D  00        nop
130E  00        nop
130F  00        nop
1310  00        nop
1311  00        nop
1312  00        nop
1313  00        nop
1314  00        nop
1315  00        nop
1316  00        nop
1317  00        nop
1318  00        nop
1319  00        nop
131A  00        nop
131B  00        nop
131C  00        nop
131D  00        nop
131E  00        nop
131F  00        nop
1320  00        nop
1321  00        nop
1322  00        nop
1323  00        nop
1324  00        nop
1325  00        nop
1326  00        nop
1327  00        nop
1328  00        nop
1329  00        nop
132A  00        nop
132B  00        nop
132C  00        nop
132D  00        nop
132E  00        nop
132F  00        nop
1330  00        nop
1331  00        nop
1332  00        nop
1333  00        nop
1334  00        nop
1335  00        nop
1336  00        nop
1337  00        nop
1338  00        nop
1339  00        nop
133A  00        nop
133B  00        nop
133C  00        nop
133D  00        nop
133E  00        nop
133F  00        nop
1340  00        nop
1341  00        nop
1342  00        nop
1343  00        nop
1344  00        nop
1345  00        nop
1346  00        nop
1347  00        nop
1348  00        nop
1349  00        nop
134A  00        nop
134B  00        nop
134C  00        nop
134D  00        nop
134E  00        nop
134F  00        nop
1350  00        nop
1351  00        nop
1352  00        nop
1353  00        nop
1354  00        nop
1355  00        nop
1356  00        nop
1357  00        nop
1358  00        nop
1359  00        nop
135A  00        nop
135B  00        nop
135C  00        nop
135D  00        nop
135E  00        nop
135F  00        nop
1360  00        nop
1361  00        nop
1362  00        nop
1363  00        nop
1364  00        nop
1365  00        nop
1366  00        nop
1367  00        nop
1368  00        nop
1369  00        nop
136A  00        nop
136B  00        nop
136C  00        nop
136D  00        nop
136E  00        nop
136F  00        nop
1370  00        nop
1371  00        nop
1372  00        nop
1373  00        nop
1374  00        nop
1375  00        nop
1376  00        nop
1377  00        nop
1378  00        nop
1379  00        nop
137A  00        nop
137B  00        nop
137C  00        nop
137D  00        nop
137E  00        nop
137F  00        nop
1380  00        nop
1381  00        nop
1382  00        nop
1383  00        nop
1384  00        nop
1385  00        nop
1386  00        nop
1387  00        nop
1388  00        nop
1389  00        nop
138A  00        nop
138B  00        nop
138C  00        nop
138D  00        nop
138E  00        nop
138F  00        nop
1390  00        nop
1391  00        nop
1392  00        nop
1393  00        nop
1394  00        nop
1395  00        nop
1396  00        nop
1397  00        nop
1398  00        nop
1399  00        nop
139A  00        nop
139B  00        nop
139C  00        nop
139D  00        nop
139E  00        nop
139F  00        nop
13A0  00        nop
13A1  00        nop
13A2  00        nop
13A3  00        nop
13A4  00        nop
13A5  00        nop
13A6  00        nop
13A7  00        nop
13A8  00        nop
13A9  00        nop
13AA  00        nop
13AB  00        nop
13AC  00        nop
13AD  00        nop
13AE  00        nop
13AF  00        nop
13B0  00        nop
13B1  00        nop
13B2  00        nop
13B3  00        nop
13B4  00        nop
13B5  00        nop
13B6  00        nop
13B7  00        nop
13B8  00        nop
13B9  00        nop
13BA  00        nop
13BB  00        nop
13BC  00        nop
13BD  00        nop
13BE  00        nop
13BF  00        nop
13C0  00        nop
13C1  00        nop
13C2  00        nop
13C3  00        nop
13C4  00        nop
13C5  00        nop
13C6  00        nop
13C7  00        nop
13C8  00        nop
13C9  00        nop
13CA  00        nop
13CB  00        nop
13CC  00        nop
13CD  00        nop
13CE  00        nop
13CF  00        nop
13D0  00        nop
13D1  00        nop
13D2  00        nop
13D3  00        nop
13D4  00        nop
13D5  00        nop
13D6  00        nop
13D7  00        nop
13D8  00        nop
13D9  00        nop
13DA  00        nop
13DB  00        nop
13DC  00        nop
13DD  00        nop
13DE  00        nop
13DF  00        nop
13E0  00        nop
13E1  00        nop
13E2  00        nop
13E3  00        nop
13E4  00        nop
13E5  00        nop
13E6  00        nop
13E7  00        nop
13E8  00        nop
13E9  00        nop
13EA  00        nop
13EB  00        nop
13EC  00        nop
13ED  00        nop
13EE  00        nop
13EF  00        nop
13F0  00        nop
13F1  00        nop
13F2  00        nop
13F3  00        nop
13F4  00        nop
13F5  00        nop
13F6  00        nop
13F7  00        nop
13F8  00        nop
13F9  00        nop
13FA  00        nop
13FB  00        nop
13FC  00        nop
13FD  00        nop
13FE  00        nop
13FF  00        nop
1400  00        nop
1401  CD 74 14  call    $1474
1404  00        nop
1405  C5        push    b
1406  E5        push    h
1407  1A        ldax    d
1408  D3 04     out     $04
140A  DB 03     in      $03
140C  B6        ora     m
140D  77        mov     m,a
140E  23        inx     h
140F  13        inx     d
1410  AF        xra     a
1411  D3 04     out     $04
1413  DB 03     in      $03
1415  B6        ora     m
1416  77        mov     m,a
1417  E1        pop     h
1418  01 20 00  lxi     b,$0020
141B  09        dad     b
141C  C1        pop     b
141D  05        dcr     b
141E  C2 05 14  jnz     $1405
1421  C9        ret
1422  00        nop
1423  00        nop
1424  CD 74 14  call    $1474
1427  C5        push    b
1428  E5        push    h
1429  AF        xra     a
142A  77        mov     m,a
142B  23        inx     h
142C  77        mov     m,a
142D  23        inx     h
142E  E1        pop     h
142F  01 20 00  lxi     b,$0020
1432  09        dad     b
1433  C1        pop     b
1434  05        dcr     b
1435  C2 27 14  jnz     $1427
1438  C9        ret
1439  C5        push    b
143A  1A        ldax    d
143B  77        mov     m,a
143C  13        inx     d
143D  01 20 00  lxi     b,$0020
1440  09        dad     b
1441  C1        pop     b
1442  05        dcr     b
1443  C2 39 14  jnz     $1439
1446  C9        ret
1447  00        nop
1448  00        nop
1449  00        nop
144A  00        nop
144B  00        nop
144C  00        nop
144D  00        nop
144E  00        nop
144F  00        nop
1450  00        nop
1451  00        nop
1452  CD 74 14  call    $1474
1455  C5        push    b
1456  E5        push    h
1457  1A        ldax    d
1458  D3 04     out     $04
145A  DB 03     in      $03
145C  2F        cma
145D  A6        ana     m
145E  77        mov     m,a
145F  23        inx     h
1460  13        inx     d
1461  AF        xra     a
1462  D3 04     out     $04
1464  DB 03     in      $03
1466  2F        cma
1467  A6        ana     m
1468  77        mov     m,a
1469  E1        pop     h
146A  01 20 00  lxi     b,$0020
146D  09        dad     b
146E  C1        pop     b
146F  05        dcr     b
1470  C2 55 14  jnz     $1455
1473  C9        ret
1474  7D        mov     a,l
1475  E6 07     ani     $07
1477  D3 02     out     $02
1479  C3 47 1A  jmp     $1A47
147C  C5        push    b
147D  E5        push    h
147E  7E        mov     a,m
147F  12        stax    d
1480  13        inx     d
1481  23        inx     h
1482  0D        dcr     c
1483  C2 7E 14  jnz     $147E
1486  E1        pop     h
1487  01 20 00  lxi     b,$0020
148A  09        dad     b
148B  C1        pop     b
148C  05        dcr     b
148D  C2 7C 14  jnz     $147C
1490  C9        ret
1491  CD 74 14  call    $1474
1494  AF        xra     a
1495  32 61 20  sta     $2061
1498  C5        push    b
1499  E5        push    h
149A  1A        ldax    d
149B  D3 04     out     $04
149D  DB 03     in      $03
149F  F5        push    psw
14A0  A6        ana     m
14A1  CA A9 14  jz      $14A9
14A4  3E 01     mvi     a,$01
14A6  32 61 20  sta     $2061
14A9  F1        pop     psw
14AA  B6        ora     m
14AB  77        mov     m,a
14AC  23        inx     h
14AD  13        inx     d
14AE  AF        xra     a
14AF  D3 04     out     $04
14B1  DB 03     in      $03
14B3  F5        push    psw
14B4  A6        ana     m
14B5  CA BD 14  jz      $14BD
14B8  3E 01     mvi     a,$01
14BA  32 61 20  sta     $2061
14BD  F1        pop     psw
14BE  B6        ora     m
14BF  77        mov     m,a
14C0  E1        pop     h
14C1  01 20 00  lxi     b,$0020
14C4  09        dad     b
14C5  C1        pop     b
14C6  05        dcr     b
14C7  C2 98 14  jnz     $1498
14CA  C9        ret
14CB  AF        xra     a
14CC  C5        push    b
14CD  77        mov     m,a
14CE  01 20 00  lxi     b,$0020
14D1  09        dad     b
14D2  C1        pop     b
14D3  05        dcr     b
14D4  C2 CC 14  jnz     $14CC
14D7  C9        ret
14D8  3A 25 20  lda     $2025
14DB  FE 05     cpi     $05
14DD  C8        rz
14DE  FE 02     cpi     $02
14E0  C0        rnz
14E1  3A 29 20  lda     $2029
14E4  FE D8     cpi     $D8
14E6  47        mov     b,a
14E7  D2 30 15  jnc     $1530
14EA  3A 02 20  lda     $2002
14ED  A7        ana     a
14EE  C8        rz
14EF  78        mov     a,b
14F0  FE CE     cpi     $CE
14F2  D2 79 15  jnc     $1579
14F5  C6 06     adi     $06
14F7  47        mov     b,a
14F8  3A 09 20  lda     $2009
14FB  FE 90     cpi     $90
14FD  D2 04 15  jnc     $1504
1500  B8        cmp     b
1501  D2 30 15  jnc     $1530
1504  68        mov     l,b
1505  CD 62 15  call    $1562
1508  3A 2A 20  lda     $202A
150B  67        mov     h,a
150C  CD 6F 15  call    $156F
150F  22 64 20  shld    $2064
1512  3E 05     mvi     a,$05
1514  32 25 20  sta     $2025
1517  CD 81 15  call    $1581
151A  7E        mov     a,m
151B  A7        ana     a
151C  CA 30 15  jz      $1530
151F  36 00     mvi     m,$00
1521  CD 5F 0A  call    $0A5F
1524  CD 3B 1A  call    $1A3B
1527  CD D3 15  call    $15D3
152A  3E 10     mvi     a,$10
152C  32 03 20  sta     $2003
152F  C9        ret
1530  3E 03     mvi     a,$03
1532  32 25 20  sta     $2025
1535  C3 4A 15  jmp     $154A
1538  21 03 20  lxi     h,$2003
153B  35        dcr     m
153C  C0        rnz
153D  2A 64 20  lhld    $2064
1540  06 10     mvi     b,$10
1542  CD 24 14  call    $1424
1545  3E 04     mvi     a,$04
1547  32 25 20  sta     $2025
154A  AF        xra     a
154B  32 02 20  sta     $2002
154E  06 F7     mvi     b,$F7
1550  C3 DC 19  jmp     $19DC
1553  00        nop
1554  0E 00     mvi     c,$00
1556  BC        cmp     h
1557  D4 90 15  cnc     $1590
155A  BC        cmp     h
155B  D0        rnc
155C  C6 10     adi     $10
155E  0C        inr     c
155F  C3 5A 15  jmp     $155A
1562  3A 09 20  lda     $2009
1565  65        mov     h,l
1566  CD 54 15  call    $1554
1569  41        mov     b,c
156A  05        dcr     b
156B  DE 10     sbi     $10
156D  6F        mov     l,a
156E  C9        ret
156F  3A 0A 20  lda     $200A
1572  CD 54 15  call    $1554
1575  DE 10     sbi     $10
1577  67        mov     h,a
1578  C9        ret
1579  3E 01     mvi     a,$01
157B  32 85 20  sta     $2085
157E  C3 45 15  jmp     $1545
1581  78        mov     a,b
1582  07        rlc
1583  07        rlc
1584  07        rlc
1585  80        add     b
1586  80        add     b
1587  80        add     b
1588  81        add     c
1589  3D        dcr     a
158A  6F        mov     l,a
158B  3A 67 20  lda     $2067
158E  67        mov     h,a
158F  C9        ret
1590  0C        inr     c
1591  C6 10     adi     $10
1593  FA 90 15  jm      $1590
1596  C9        ret
1597  3A 0D 20  lda     $200D
159A  A7        ana     a
159B  C2 B7 15  jnz     $15B7
159E  21 A4 3E  lxi     h,$3EA4
15A1  CD C5 15  call    $15C5
15A4  D0        rnc
15A5  06 FE     mvi     b,$FE
15A7  3E 01     mvi     a,$01
15A9  32 0D 20  sta     $200D
15AC  78        mov     a,b
15AD  32 08 20  sta     $2008
15B0  3A 0E 20  lda     $200E
15B3  32 07 20  sta     $2007
15B6  C9        ret
15B7  21 24 25  lxi     h,$2524
15BA  CD C5 15  call    $15C5
15BD  D0        rnc
15BE  CD F1 18  call    $18F1
15C1  AF        xra     a
15C2  C3 A9 15  jmp     $15A9
15C5  06 17     mvi     b,$17
15C7  7E        mov     a,m
15C8  A7        ana     a
15C9  C2 6B 16  jnz     $166B
15CC  23        inx     h
15CD  05        dcr     b
15CE  C2 C7 15  jnz     $15C7
15D1  C9        ret
15D2  00        nop
15D3  CD 74 14  call    $1474
15D6  E5        push    h
15D7  C5        push    b
15D8  E5        push    h
15D9  1A        ldax    d
15DA  D3 04     out     $04
15DC  DB 03     in      $03
15DE  77        mov     m,a
15DF  23        inx     h
15E0  13        inx     d
15E1  AF        xra     a
15E2  D3 04     out     $04
15E4  DB 03     in      $03
15E6  77        mov     m,a
15E7  E1        pop     h
15E8  01 20 00  lxi     b,$0020
15EB  09        dad     b
15EC  C1        pop     b
15ED  05        dcr     b
15EE  C2 D7 15  jnz     $15D7
15F1  E1        pop     h
15F2  C9        ret
15F3  CD 11 16  call    $1611
15F6  01 00 37  lxi     b,$3700
15F9  7E        mov     a,m
15FA  A7        ana     a
15FB  CA FF 15  jz      $15FF
15FE  0C        inr     c
15FF  23        inx     h
1600  05        dcr     b
1601  C2 F9 15  jnz     $15F9
1604  79        mov     a,c
1605  32 82 20  sta     $2082
1608  FE 01     cpi     $01
160A  C0        rnz
160B  21 6B 20  lxi     h,$206B
160E  36 01     mvi     m,$01
1610  C9        ret
1611  2E 00     mvi     l,$00
1613  3A 67 20  lda     $2067
1616  67        mov     h,a
1617  C9        ret
1618  3A 15 20  lda     $2015
161B  FE FF     cpi     $FF
161D  C0        rnz
161E  21 10 20  lxi     h,$2010
1621  7E        mov     a,m
1622  23        inx     h
1623  46        mov     b,m
1624  B0        ora     b
1625  C0        rnz
1626  3A 25 20  lda     $2025
1629  A7        ana     a
162A  C0        rnz
162B  3A EF 20  lda     $20EF
162E  A7        ana     a
162F  CA 52 16  jz      $1652
1632  3A 2D 20  lda     $202D
1635  A7        ana     a
1636  C2 48 16  jnz     $1648
1639  CD C0 17  call    $17C0
163C  E6 10     ani     $10
163E  C8        rz
163F  3E 01     mvi     a,$01
1641  32 25 20  sta     $2025
1644  32 2D 20  sta     $202D
1647  C9        ret
1648  CD C0 17  call    $17C0
164B  E6 10     ani     $10
164D  C0        rnz
164E  32 2D 20  sta     $202D
1651  C9        ret
1652  21 25 20  lxi     h,$2025
1655  36 01     mvi     m,$01
1657  2A ED 20  lhld    $20ED
165A  23        inx     h
165B  7D        mov     a,l
165C  FE 7E     cpi     '~'
165E  DA 63 16  jc      $1663
1661  2E 74     mvi     l,'t'
1663  22 ED 20  shld    $20ED
1666  7E        mov     a,m
1667  32 1D 20  sta     $201D
166A  C9        ret
166B  37        stc
166C  C9        ret
166D  AF        xra     a
166E  CD 8B 1A  call    $1A8B
1671  CD 10 19  call    $1910
1674  36 00     mvi     m,$00
1676  CD CA 09  call    $09CA
1679  23        inx     h
167A  11 F5 20  lxi     d,$20F5
167D  1A        ldax    d
167E  BE        cmp     m
167F  1B        dcx     d
1680  2B        dcx     h
1681  1A        ldax    d
1682  CA 8B 16  jz      $168B
1685  D2 98 16  jnc     $1698
1688  C3 8F 16  jmp     $168F
168B  BE        cmp     m
168C  D2 98 16  jnc     $1698
168F  7E        mov     a,m
1690  12        stax    d
1691  13        inx     d
1692  23        inx     h
1693  7E        mov     a,m
1694  12        stax    d
1695  CD 50 19  call    $1950
1698  3A CE 20  lda     $20CE
169B  A7        ana     a
169C  CA C9 16  jz      $16C9
169F  21 03 28  lxi     h,$2803
16A2  11 A6 1A  lxi     d,$1AA6
16A5  0E 14     mvi     c,$14
16A7  CD 93 0A  call    $0A93
16AA  25        dcr     h
16AB  25        dcr     h
16AC  06 1B     mvi     b,$1B
16AE  3A 67 20  lda     $2067
16B1  0F        rrc
16B2  DA B7 16  jc      $16B7
16B5  06 1C     mvi     b,$1C
16B7  78        mov     a,b
16B8  CD FF 08  call    $08FF
16BB  CD B1 0A  call    $0AB1
16BE  CD E7 18  call    $18E7
16C1  7E        mov     a,m
16C2  A7        ana     a
16C3  CA C9 16  jz      $16C9
16C6  C3 ED 02  jmp     $02ED
16C9  21 18 2D  lxi     h,$2D18
16CC  11 A6 1A  lxi     d,$1AA6
16CF  0E 0A     mvi     c,$0A
16D1  CD 93 0A  call    $0A93
16D4  CD B6 0A  call    $0AB6
16D7  CD D6 09  call    $09D6
16DA  AF        xra     a
16DB  32 EF 20  sta     $20EF
16DE  D3 05     out     $05
16E0  CD D1 19  call    $19D1
16E3  C3 89 0B  jmp     $0B89
16E6  31 00 24  lxi     sp,$2400
16E9  FB        ei
16EA  AF        xra     a
16EB  32 15 20  sta     $2015
16EE  CD D8 14  call    $14D8
16F1  06 04     mvi     b,$04
16F3  CD FA 18  call    $18FA
16F6  CD 59 0A  call    $0A59
16F9  C2 EE 16  jnz     $16EE
16FC  CD D7 19  call    $19D7
16FF  21 01 27  lxi     h,$2701
1702  CD FA 19  call    $19FA
1705  AF        xra     a
1706  CD 8B 1A  call    $1A8B
1709  06 FB     mvi     b,$FB
170B  C3 6B 19  jmp     $196B
170E  CD CA 09  call    $09CA
1711  23        inx     h
1712  7E        mov     a,m
1713  11 B8 1C  lxi     d,$1CB8
1716  21 A1 1A  lxi     h,$1AA1
1719  0E 04     mvi     c,$04
171B  47        mov     b,a
171C  1A        ldax    d
171D  B8        cmp     b
171E  D2 27 17  jnc     $1727
1721  23        inx     h
1722  13        inx     d
1723  0D        dcr     c
1724  C2 1C 17  jnz     $171C
1727  7E        mov     a,m
1728  32 CF 20  sta     $20CF
172B  C9        ret
172C  3A 25 20  lda     $2025
172F  FE 00     cpi     $00
1731  C2 39 17  jnz     $1739
1734  06 FD     mvi     b,$FD
1736  C3 DC 19  jmp     $19DC
1739  06 02     mvi     b,$02
173B  C3 FA 18  jmp     $18FA
173E  00        nop
173F  00        nop
1740  21 9B 20  lxi     h,$209B
1743  35        dcr     m
1744  CC 6D 17  cz      $176D
1747  3A 68 20  lda     $2068
174A  A7        ana     a
174B  CA 6D 17  jz      $176D
174E  21 96 20  lxi     h,$2096
1751  35        dcr     m
1752  C0        rnz
1753  21 98 20  lxi     h,$2098
1756  7E        mov     a,m
1757  D3 05     out     $05
1759  3A 82 20  lda     $2082
175C  A7        ana     a
175D  CA 6D 17  jz      $176D
1760  2B        dcx     h
1761  7E        mov     a,m
1762  2B        dcx     h
1763  77        mov     m,a
1764  2B        dcx     h
1765  36 01     mvi     m,$01
1767  3E 04     mvi     a,$04
1769  32 9B 20  sta     $209B
176C  C9        ret
176D  3A 98 20  lda     $2098
1770  E6 30     ani     $30
1772  D3 05     out     $05
1774  C9        ret
1775  3A 95 20  lda     $2095
1778  A7        ana     a
1779  CA AA 17  jz      $17AA
177C  21 11 1A  lxi     h,$1A11
177F  11 21 1A  lxi     d,$1A21
1782  3A 82 20  lda     $2082
1785  BE        cmp     m
1786  D2 8E 17  jnc     $178E
1789  23        inx     h
178A  13        inx     d
178B  C3 85 17  jmp     $1785
178E  1A        ldax    d
178F  32 97 20  sta     $2097
1792  21 98 20  lxi     h,$2098
1795  7E        mov     a,m
1796  E6 30     ani     $30
1798  47        mov     b,a
1799  7E        mov     a,m
179A  E6 0F     ani     $0F
179C  07        rlc
179D  FE 10     cpi     $10
179F  C2 A4 17  jnz     $17A4
17A2  3E 01     mvi     a,$01
17A4  B0        ora     b
17A5  77        mov     m,a
17A6  AF        xra     a
17A7  32 95 20  sta     $2095
17AA  21 99 20  lxi     h,$2099
17AD  35        dcr     m
17AE  C0        rnz
17AF  06 EF     mvi     b,$EF
17B1  C3 DC 19  jmp     $19DC
17B4  06 EF     mvi     b,$EF
17B6  21 98 20  lxi     h,$2098
17B9  7E        mov     a,m
17BA  A0        ana     b
17BB  77        mov     m,a
17BC  D3 05     out     $05
17BE  C9        ret
17BF  00        nop
17C0  3A 67 20  lda     $2067
17C3  0F        rrc
17C4  D2 CA 17  jnc     $17CA
17C7  DB 01     in      $01
17C9  C9        ret
17CA  DB 02     in      $02
17CC  C9        ret
17CD  DB 02     in      $02
17CF  E6 04     ani     $04
17D1  C8        rz
17D2  3A 9A 20  lda     $209A
17D5  A7        ana     a
17D6  C0        rnz
17D7  31 00 24  lxi     sp,$2400
17DA  06 04     mvi     b,$04
17DC  CD D6 09  call    $09D6
17DF  05        dcr     b
17E0  C2 DC 17  jnz     $17DC
17E3  3E 01     mvi     a,$01
17E5  32 9A 20  sta     $209A
17E8  CD D7 19  call    $19D7
17EB  FB        ei
17EC  11 BC 1C  lxi     d,$1CBC
17EF  21 16 30  lxi     h,$3016
17F2  0E 04     mvi     c,$04
17F4  CD 93 0A  call    $0A93
17F7  CD B1 0A  call    $0AB1
17FA  AF        xra     a
17FB  32 9A 20  sta     $209A
17FE  32 93 20  sta     $2093
1801  C3 C9 16  jmp     $16C9
1804  21 84 20  lxi     h,$2084
1807  7E        mov     a,m
1808  A7        ana     a
1809  CA 07 07  jz      $0707
180C  23        inx     h
180D  7E        mov     a,m
180E  A7        ana     a
180F  C0        rnz
1810  06 01     mvi     b,$01
1812  C3 FA 18  jmp     $18FA
1815  21 10 28  lxi     h,$2810
1818  11 A3 1C  lxi     d,$1CA3
181B  0E 15     mvi     c,$15
181D  CD F3 08  call    $08F3
1820  3E 0A     mvi     a,$0A
1822  32 6C 20  sta     $206C
1825  01 BE 1D  lxi     b,$1DBE
1828  CD 56 18  call    $1856
182B  DA 37 18  jc      $1837
182E  CD 44 18  call    $1844
1831  C3 28 18  jmp     $1828
1834  CD B1 0A  call    $0AB1
1837  01 CF 1D  lxi     b,$1DCF
183A  CD 56 18  call    $1856
183D  D8        rc
183E  CD 4C 18  call    $184C
1841  C3 3A 18  jmp     $183A
1844  C5        push    b
1845  06 10     mvi     b,$10
1847  CD 39 14  call    $1439
184A  C1        pop     b
184B  C9        ret
184C  C5        push    b
184D  3A 6C 20  lda     $206C
1850  4F        mov     c,a
1851  CD 93 0A  call    $0A93
1854  C1        pop     b
1855  C9        ret
1856  0A        ldax    b
1857  FE FF     cpi     $FF
1859  37        stc
185A  C8        rz
185B  6F        mov     l,a
185C  03        inx     b
185D  0A        ldax    b
185E  67        mov     h,a
185F  03        inx     b
1860  0A        ldax    b
1861  5F        mov     e,a
1862  03        inx     b
1863  0A        ldax    b
1864  57        mov     d,a
1865  03        inx     b
1866  A7        ana     a
1867  C9        ret
1868  21 C2 20  lxi     h,$20C2
186B  34        inr     m
186C  23        inx     h
186D  4E        mov     c,m
186E  CD D9 01  call    $01D9
1871  47        mov     b,a
1872  3A CA 20  lda     $20CA
1875  B8        cmp     b
1876  CA 98 18  jz      $1898
1879  3A C2 20  lda     $20C2
187C  E6 04     ani     $04
187E  2A CC 20  lhld    $20CC
1881  C2 88 18  jnz     $1888
1884  11 30 00  lxi     d,$0030
1887  19        dad
1888  22 C7 20  shld    $20C7
188B  21 C5 20  lxi     h,$20C5
188E  CD 3B 1A  call    $1A3B
1891  EB        xchg
1892  C3 D3 15  jmp     $15D3
1895  00        nop
1896  00        nop
1897  00        nop
1898  3E 01     mvi     a,$01
189A  32 CB 20  sta     $20CB
189D  C9        ret
189E  21 50 20  lxi     h,$2050
18A1  11 C0 1B  lxi     d,$1BC0
18A4  06 10     mvi     b,$10
18A6  CD 32 1A  call    $1A32
18A9  3E 02     mvi     a,$02
18AB  32 80 20  sta     $2080
18AE  3E FF     mvi     a,$FF
18B0  32 7E 20  sta     $207E
18B3  3E 04     mvi     a,$04
18B5  32 C1 20  sta     $20C1
18B8  3A 55 20  lda     $2055
18BB  E6 01     ani     $01
18BD  CA B8 18  jz      $18B8
18C0  3A 55 20  lda     $2055
18C3  E6 01     ani     $01
18C5  C2 C0 18  jnz     $18C0
18C8  21 11 33  lxi     h,$3311
18CB  3E 26     mvi     a,$26
18CD  00        nop
18CE  CD FF 08  call    $08FF
18D1  C3 B6 0A  jmp     $0AB6
18D4  31 00 24  lxi     sp,$2400
18D7  06 00     mvi     b,$00
18D9  CD E6 01  call    $01E6
18DC  CD 56 19  call    $1956
18DF  3E 08     mvi     a,$08
18E1  32 CF 20  sta     $20CF
18E4  C3 EA 0A  jmp     $0AEA
18E7  3A 67 20  lda     $2067
18EA  21 E7 20  lxi     h,$20E7
18ED  0F        rrc
18EE  D0        rnc
18EF  23        inx     h
18F0  C9        ret
18F1  06 02     mvi     b,$02
18F3  3A 82 20  lda     $2082
18F6  3D        dcr     a
18F7  C0        rnz
18F8  04        inr     b
18F9  C9        ret
18FA  3A 94 20  lda     $2094
18FD  B0        ora     b
18FE  32 94 20  sta     $2094
1901  D3 03     out     $03
1903  C9        ret
1904  21 00 22  lxi     h,$2200
1907  C3 C3 01  jmp     $01C3
190A  CD D8 14  call    $14D8
190D  C3 97 15  jmp     $1597
1910  21 E7 20  lxi     h,$20E7
1913  3A 67 20  lda     $2067
1916  0F        rrc
1917  D8        rc
1918  23        inx     h
1919  C9        ret
191A  0E 1C     mvi     c,$1C
191C  21 1E 24  lxi     h,$241E
191F  11 E4 1A  lxi     d,$1AE4
1922  C3 F3 08  jmp     $08F3
1925  21 F8 20  lxi     h,$20F8
1928  C3 31 19  jmp     $1931
192B  21 FC 20  lxi     h,$20FC
192E  C3 31 19  jmp     $1931
1931  5E        mov     e,m
1932  23        inx     h
1933  56        mov     d,m
1934  23        inx     h
1935  7E        mov     a,m
1936  23        inx     h
1937  66        mov     h,m
1938  6F        mov     l,a
1939  C3 AD 09  jmp     $09AD
193C  0E 07     mvi     c,$07
193E  21 01 35  lxi     h,$3501
1941  11 A9 1F  lxi     d,$1FA9
1944  C3 F3 08  jmp     $08F3
1947  3A EB 20  lda     $20EB
194A  21 01 3C  lxi     h,$3C01
194D  C3 B2 09  jmp     $09B2
1950  21 F4 20  lxi     h,$20F4
1953  C3 31 19  jmp     $1931
1956  CD 5C 1A  call    $1A5C
1959  CD 1A 19  call    $191A
195C  CD 25 19  call    $1925
195F  CD 2B 19  call    $192B
1962  CD 50 19  call    $1950
1965  CD 3C 19  call    $193C
1968  C3 47 19  jmp     $1947
196B  CD DC 19  call    $19DC
196E  C3 71 16  jmp     $1671
1971  3E 01     mvi     a,$01
1973  32 6D 20  sta     $206D
1976  C3 E6 16  jmp     $16E6
1979  CD D7 19  call    $19D7
197C  CD 47 19  call    $1947
197F  C3 3C 19  jmp     $193C
1982  32 C1 20  sta     $20C1
1985  C9        ret
1986  8B        adc     e
1987  19        dad
1988  C3 D6 09  jmp     $09D6
198B  21 03 28  lxi     h,$2803
198E  11 BE 19  lxi     d,$19BE
1991  0E 13     mvi     c,$13
1993  C3 F3 08  jmp     $08F3
1996  00        nop
1997  00        nop
1998  00        nop
1999  00        nop
199A  3A 1E 20  lda     $201E
199D  A7        ana     a
199E  C2 AC 19  jnz     $19AC
19A1  DB 01     in      $01
19A3  E6 76     ani     'v'
19A5  D6 72     sui     'r'
19A7  C0        rnz
19A8  3C        inr     a
19A9  32 1E 20  sta     $201E
19AC  DB 01     in      $01
19AE  E6 76     ani     'v'
19B0  FE 34     cpi     $34
19B2  C0        rnz
19B3  21 1B 2E  lxi     h,$2E1B
19B6  11 F7 0B  lxi     d,$0BF7
19B9  0E 09     mvi     c,$09
19BB  C3 F3 08  jmp     $08F3
19BE  28        nop                  ;Note: Alternative opcode used
19BF  13        inx     d
19C0  00        nop
19C1  08        nop                  ;Note: Alternative opcode used
19C2  13        inx     d
19C3  0E 26     mvi     c,$26
19C5  02        stax    b
19C6  0E 11     mvi     c,$11
19C8  0F        rrc
19C9  0E 11     mvi     c,$11
19CB  00        nop
19CC  13        inx     d
19CD  08        nop                  ;Note: Alternative opcode used
19CE  0E 0D     mvi     c,$0D
19D0  28        nop                  ;Note: Alternative opcode used
19D1  3E 01     mvi     a,$01
19D3  32 E9 20  sta     $20E9
19D6  C9        ret
19D7  AF        xra     a
19D8  C3 D3 19  jmp     $19D3
19DB  00        nop
19DC  3A 94 20  lda     $2094
19DF  A0        ana     b
19E0  32 94 20  sta     $2094
19E3  D3 03     out     $03
19E5  C9        ret
19E6  21 01 27  lxi     h,$2701
19E9  CA FA 19  jz      $19FA
19EC  11 60 1C  lxi     d,$1C60
19EF  06 10     mvi     b,$10
19F1  4F        mov     c,a
19F2  CD 39 14  call    $1439
19F5  79        mov     a,c
19F6  3D        dcr     a
19F7  C2 EC 19  jnz     $19EC
19FA  06 10     mvi     b,$10
19FC  CD CB 14  call    $14CB
19FF  7C        mov     a,h
1A00  FE 35     cpi     $35
1A02  C2 FA 19  jnz     $19FA
1A05  C9        ret
1A06  21 72 20  lxi     h,$2072
1A09  46        mov     b,m
1A0A  1A        ldax    d
1A0B  E6 80     ani     $80
1A0D  A8        xra     b
1A0E  C0        rnz
1A0F  37        stc
1A10  C9        ret
1A11  32 2B 24  sta     $242B
1A14  1C        inr     e
1A15  16 11     mvi     d,$11
1A17  0D        dcr     c
1A18  0A        ldax    b
1A19  08        nop                  ;Note: Alternative opcode used
1A1A  07        rlc
1A1B  06 05     mvi     b,$05
1A1D  04        inr     b
1A1E  03        inx     b
1A1F  02        stax    b
1A20  01 34 2E  lxi     b,$2E34
1A23  27        daa
1A24  22 1C 18  shld    $181C
1A27  15        dcr     d
1A28  13        inx     d
1A29  10        nop                  ;Note: Alternative opcode used
1A2A  0E 0D     mvi     c,$0D
1A2C  0C        inr     c
1A2D  0B        dcx     b
1A2E  09        dad     b
1A2F  07        rlc
1A30  05        dcr     b
1A31  FF        rst     7
1A32  1A        ldax    d
1A33  77        mov     m,a
1A34  23        inx     h
1A35  13        inx     d
1A36  05        dcr     b
1A37  C2 32 1A  jnz     $1A32
1A3A  C9        ret
1A3B  5E        mov     e,m
1A3C  23        inx     h
1A3D  56        mov     d,m
1A3E  23        inx     h
1A3F  7E        mov     a,m
1A40  23        inx     h
1A41  4E        mov     c,m
1A42  23        inx     h
1A43  46        mov     b,m
1A44  61        mov     h,c
1A45  6F        mov     l,a
1A46  C9        ret
1A47  C5        push    b
1A48  06 03     mvi     b,$03
1A4A  7C        mov     a,h
1A4B  1F        rar
1A4C  67        mov     h,a
1A4D  7D        mov     a,l
1A4E  1F        rar
1A4F  6F        mov     l,a
1A50  05        dcr     b
1A51  C2 4A 1A  jnz     $1A4A
1A54  7C        mov     a,h
1A55  E6 3F     ani     $3F
1A57  F6 20     ori     $20
1A59  67        mov     h,a
1A5A  C1        pop     b
1A5B  C9        ret
1A5C  21 00 24  lxi     h,$2400
1A5F  36 00     mvi     m,$00
1A61  23        inx     h
1A62  7C        mov     a,h
1A63  FE 40     cpi     '@'
1A65  C2 5F 1A  jnz     $1A5F
1A68  C9        ret
1A69  C5        push    b
1A6A  E5        push    h
1A6B  1A        ldax    d
1A6C  B6        ora     m
1A6D  77        mov     m,a
1A6E  13        inx     d
1A6F  23        inx     h
1A70  0D        dcr     c
1A71  C2 6B 1A  jnz     $1A6B
1A74  E1        pop     h
1A75  01 20 00  lxi     b,$0020
1A78  09        dad     b
1A79  C1        pop     b
1A7A  05        dcr     b
1A7B  C2 69 1A  jnz     $1A69
1A7E  C9        ret
1A7F  CD 2E 09  call    $092E
1A82  A7        ana     a
1A83  C8        rz
1A84  F5        push    psw
1A85  3D        dcr     a
1A86  77        mov     m,a
1A87  CD E6 19  call    $19E6
1A8A  F1        pop     psw
1A8B  21 01 25  lxi     h,$2501
1A8E  E6 0F     ani     $0F
1A90  C3 C5 09  jmp     $09C5
1A93  00        nop
1A94  00        nop
1A95  00        nop
1A96  00        nop
1A97  FF        rst     7
1A98  B8        cmp     b
1A99  FE 20     cpi     $20
1A9B  1C        inr     e
1A9C  10        nop                  ;Note: Alternative opcode used
1A9D  9E        sbb     m
1A9E  00        nop
1A9F  20        nop                  ;Note: Alternative opcode used
1AA0  1C        inr     e
1AA1  30        nop                  ;Note: Alternative opcode used
1AA2  10        nop                  ;Note: Alternative opcode used
1AA3  0B        dcx     b
1AA4  08        nop                  ;Note: Alternative opcode used
1AA5  07        rlc
1AA6  06 00     mvi     b,$00
1AA8  0C        inr     c
1AA9  04        inr     b
1AAA  26 0E     mvi     h,$0E
1AAC  15        dcr     d
1AAD  04        inr     b
1AAE  11 26 26  lxi     d,$2626
1AB1  0F        rrc
1AB2  0B        dcx     b
1AB3  00        nop
1AB4  18        nop                  ;Note: Alternative opcode used
1AB5  04        inr     b
1AB6  11 24 26  lxi     d,$2624
1AB9  25        dcr     h
1ABA  1B        dcx     d
1ABB  26 0E     mvi     h,$0E
1ABD  11 26 1C  lxi     d,$1C26
1AC0  0F        rrc
1AC1  0B        dcx     b
1AC2  00        nop
1AC3  18        nop                  ;Note: Alternative opcode used
1AC4  04        inr     b
1AC5  11 12 26  lxi     d,$2612
1AC8  01 14 13  lxi     b,$1314
1ACB  13        inx     d
1ACC  0E 0D     mvi     c,$0D
1ACE  26 0E     mvi     h,$0E
1AD0  0D        dcr     c
1AD1  0B        dcx     b
1AD2  18        nop                  ;Note: Alternative opcode used
1AD3  26 1B     mvi     h,$1B
1AD5  0F        rrc
1AD6  0B        dcx     b
1AD7  00        nop
1AD8  18        nop                  ;Note: Alternative opcode used
1AD9  04        inr     b
1ADA  11 26 26  lxi     d,$2626
1ADD  01 14 13  lxi     b,$1314
1AE0  13        inx     d
1AE1  0E 0D     mvi     c,$0D
1AE3  26 26     mvi     h,$26
1AE5  12        stax    d
1AE6  02        stax    b
1AE7  0E 11     mvi     c,$11
1AE9  04        inr     b
1AEA  24        inr     h
1AEB  1B        dcx     d
1AEC  25        dcr     h
1AED  26 07     mvi     h,$07
1AEF  08        nop                  ;Note: Alternative opcode used
1AF0  3F        cmc
1AF1  12        stax    d
1AF2  02        stax    b
1AF3  0E 11     mvi     c,$11
1AF5  04        inr     b
1AF6  26 12     mvi     h,$12
1AF8  02        stax    b
1AF9  0E 11     mvi     c,$11
1AFB  04        inr     b
1AFC  24        inr     h
1AFD  1C        inr     e
1AFE  25        dcr     h
1AFF  26 01     mvi     h,$01
1B01  00        nop
1B02  00        nop
1B03  10        nop                  ;Note: Alternative opcode used
1B04  00        nop
1B05  00        nop
1B06  00        nop
1B07  00        nop
1B08  02        stax    b
1B09  78        mov     a,b
1B0A  38        nop                  ;Note: Alternative opcode used
1B0B  78        mov     a,b
1B0C  38        nop                  ;Note: Alternative opcode used
1B0D  00        nop
1B0E  F8        rm
1B0F  00        nop
1B10  00        nop
1B11  80        add     b
1B12  00        nop
1B13  8E        adc     m
1B14  02        stax    b
1B15  FF        rst     7
1B16  05        dcr     b
1B17  0C        inr     c
1B18  60        mov     h,b
1B19  1C        inr     e
1B1A  20        nop                  ;Note: Alternative opcode used
1B1B  30        nop                  ;Note: Alternative opcode used
1B1C  10        nop                  ;Note: Alternative opcode used
1B1D  01 00 00  lxi     b,$0000
1B20  00        nop
1B21  00        nop
1B22  00        nop
1B23  BB        cmp     e
1B24  03        inx     b
1B25  00        nop
1B26  10        nop                  ;Note: Alternative opcode used
1B27  90        sub     b
1B28  1C        inr     e
1B29  28        nop                  ;Note: Alternative opcode used
1B2A  30        nop                  ;Note: Alternative opcode used
1B2B  01 04 00  lxi     b,$0004
1B2E  FF        rst     7
1B2F  FF        rst     7
1B30  00        nop
1B31  00        nop
1B32  02        stax    b
1B33  76        hlt
1B34  04        inr     b
1B35  00        nop
1B36  00        nop
1B37  00        nop
1B38  00        nop
1B39  00        nop
1B3A  04        inr     b
1B3B  EE 1C     xri     $1C
1B3D  00        nop
1B3E  00        nop
1B3F  03        inx     b
1B40  00        nop
1B41  00        nop
1B42  00        nop
1B43  B6        ora     m
1B44  04        inr     b
1B45  00        nop
1B46  00        nop
1B47  01 00 1D  lxi     b,$1D00
1B4A  04        inr     b
1B4B  E2 1C 00  jpo     $001C
1B4E  00        nop
1B4F  03        inx     b
1B50  00        nop
1B51  00        nop
1B52  00        nop
1B53  82        add     d
1B54  06 00     mvi     b,$00
1B56  00        nop
1B57  01 06 1D  lxi     b,$1D06
1B5A  04        inr     b
1B5B  D0        rnc
1B5C  1C        inr     e
1B5D  00        nop
1B5E  00        nop
1B5F  03        inx     b
1B60  FF        rst     7
1B61  00        nop
1B62  C0        rnz
1B63  1C        inr     e
1B64  00        nop
1B65  00        nop
1B66  10        nop                  ;Note: Alternative opcode used
1B67  21 01 00  lxi     h,$0001
1B6A  30        nop                  ;Note: Alternative opcode used
1B6B  00        nop
1B6C  12        stax    d
1B6D  00        nop
1B6E  00        nop
1B6F  00        nop
1B70  0F        rrc
1B71  0B        dcx     b
1B72  00        nop
1B73  18        nop                  ;Note: Alternative opcode used
1B74  26 0F     mvi     h,$0F
1B76  0B        dcx     b
1B77  00        nop
1B78  18        nop                  ;Note: Alternative opcode used
1B79  04        inr     b
1B7A  11 24 1B  lxi     d,$1B24
1B7D  25        dcr     h
1B7E  FC 00 01  cm      $0100
1B81  FF        rst     7
1B82  FF        rst     7
1B83  00        nop
1B84  00        nop
1B85  00        nop
1B86  20        nop                  ;Note: Alternative opcode used
1B87  64        mov     h,h
1B88  1D        dcr     e
1B89  D0        rnc
1B8A  29        dad     h
1B8B  18        nop                  ;Note: Alternative opcode used
1B8C  02        stax    b
1B8D  54        mov     d,h
1B8E  1D        dcr     e
1B8F  00        nop
1B90  08        nop                  ;Note: Alternative opcode used
1B91  00        nop
1B92  06 00     mvi     b,$00
1B94  00        nop
1B95  01 40 00  lxi     b,$0040
1B98  01 00 00  lxi     b,$0000
1B9B  10        nop                  ;Note: Alternative opcode used
1B9C  9E        sbb     m
1B9D  00        nop
1B9E  20        nop                  ;Note: Alternative opcode used
1B9F  1C        inr     e
1BA0  00        nop
1BA1  03        inx     b
1BA2  04        inr     b
1BA3  78        mov     a,b
1BA4  14        inr     d
1BA5  13        inx     d
1BA6  08        nop                  ;Note: Alternative opcode used
1BA7  1A        ldax    d
1BA8  3D        dcr     a
1BA9  68        mov     l,b
1BAA  FC FC 68  cm      $68FC
1BAD  3D        dcr     a
1BAE  1A        ldax    d
1BAF  00        nop
1BB0  00        nop
1BB1  00        nop
1BB2  01 B8 98  lxi     b,$98B8
1BB5  A0        ana     b
1BB6  1B        dcx     d
1BB7  10        nop                  ;Note: Alternative opcode used
1BB8  FF        rst     7
1BB9  00        nop
1BBA  A0        ana     b
1BBB  1B        dcx     d
1BBC  00        nop
1BBD  00        nop
1BBE  00        nop
1BBF  00        nop
1BC0  00        nop
1BC1  10        nop                  ;Note: Alternative opcode used
1BC2  00        nop
1BC3  0E 05     mvi     c,$05
1BC5  00        nop
1BC6  00        nop
1BC7  00        nop
1BC8  00        nop
1BC9  00        nop
1BCA  07        rlc
1BCB  D0        rnc
1BCC  1C        inr     e
1BCD  C8        rz
1BCE  9B        sbb     e
1BCF  03        inx     b
1BD0  00        nop
1BD1  00        nop
1BD2  03        inx     b
1BD3  04        inr     b
1BD4  78        mov     a,b
1BD5  14        inr     d
1BD6  0B        dcx     b
1BD7  19        dad
1BD8  3A 6D FA  lda     $FA6D
1BDB  FA 6D 3A  jm      $3A6D
1BDE  19        dad
1BDF  00        nop
1BE0  00        nop
1BE1  00        nop
1BE2  00        nop
1BE3  00        nop
1BE4  00        nop
1BE5  00        nop
1BE6  00        nop
1BE7  00        nop
1BE8  00        nop
1BE9  01 00 00  lxi     b,$0000
1BEC  01 74 1F  lxi     b,$1F74
1BEF  00        nop
1BF0  80        add     b
1BF1  00        nop
1BF2  00        nop
1BF3  00        nop
1BF4  00        nop
1BF5  00        nop
1BF6  1C        inr     e
1BF7  2F        cma
1BF8  00        nop
1BF9  00        nop
1BFA  1C        inr     e
1BFB  27        daa
1BFC  00        nop
1BFD  00        nop
1BFE  1C        inr     e
1BFF  39        dad     sp
1C00  00        nop
1C01  00        nop
1C02  39        dad     sp
1C03  79        mov     a,c
1C04  7A        mov     a,d
1C05  6E        mov     l,m
1C06  EC FA FA  cpe     $FAFA
1C09  EC 6E 7A  cpe     $7A6E
1C0C  79        mov     a,c
1C0D  39        dad     sp
1C0E  00        nop
1C0F  00        nop
1C10  00        nop
1C11  00        nop
1C12  00        nop
1C13  78        mov     a,b
1C14  1D        dcr     e
1C15  BE        cmp     m
1C16  6C        mov     l,h
1C17  3C        inr     a
1C18  3C        inr     a
1C19  3C        inr     a
1C1A  6C        mov     l,h
1C1B  BE        cmp     m
1C1C  1D        dcr     e
1C1D  78        mov     a,b
1C1E  00        nop
1C1F  00        nop
1C20  00        nop
1C21  00        nop
1C22  00        nop
1C23  00        nop
1C24  19        dad
1C25  3A 6D FA  lda     $FA6D
1C28  FA 6D 3A  jm      $3A6D
1C2B  19        dad
1C2C  00        nop
1C2D  00        nop
1C2E  00        nop
1C2F  00        nop
1C30  00        nop
1C31  00        nop
1C32  38        nop                  ;Note: Alternative opcode used
1C33  7A        mov     a,d
1C34  7F        mov     a,a
1C35  6D        mov     l,l
1C36  EC FA FA  cpe     $FAFA
1C39  EC 6D 7F  cpe     $7F6D
1C3C  7A        mov     a,d
1C3D  38        nop                  ;Note: Alternative opcode used
1C3E  00        nop
1C3F  00        nop
1C40  00        nop
1C41  00        nop
1C42  00        nop
1C43  0E 18     mvi     c,$18
1C45  BE        cmp     m
1C46  6D        mov     l,l
1C47  3D        dcr     a
1C48  3C        inr     a
1C49  3D        dcr     a
1C4A  6D        mov     l,l
1C4B  BE        cmp     m
1C4C  18        nop                  ;Note: Alternative opcode used
1C4D  0E 00     mvi     c,$00
1C4F  00        nop
1C50  00        nop
1C51  00        nop
1C52  00        nop
1C53  00        nop
1C54  1A        ldax    d
1C55  3D        dcr     a
1C56  68        mov     l,b
1C57  FC FC 68  cm      $68FC
1C5A  3D        dcr     a
1C5B  1A        ldax    d
1C5C  00        nop
1C5D  00        nop
1C5E  00        nop
1C5F  00        nop
1C60  00        nop
1C61  00        nop
1C62  0F        rrc
1C63  1F        rar
1C64  1F        rar
1C65  1F        rar
1C66  1F        rar
1C67  7F        mov     a,a
1C68  FF        rst     7
1C69  7F        mov     a,a
1C6A  1F        rar
1C6B  1F        rar
1C6C  1F        rar
1C6D  1F        rar
1C6E  0F        rrc
1C6F  00        nop
1C70  00        nop
1C71  04        inr     b
1C72  01 13 03  lxi     b,$0313
1C75  07        rlc
1C76  B3        ora     e
1C77  0F        rrc
1C78  2F        cma
1C79  03        inx     b
1C7A  2F        cma
1C7B  49        mov     c,c
1C7C  04        inr     b
1C7D  03        inx     b
1C7E  00        nop
1C7F  01 40 08  lxi     b,$0840
1C82  05        dcr     b
1C83  A3        ana     e
1C84  0A        ldax    b
1C85  03        inx     b
1C86  5B        mov     e,e
1C87  0F        rrc
1C88  27        daa
1C89  27        daa
1C8A  0B        dcx     b
1C8B  4B        mov     c,e
1C8C  40        mov     b,b
1C8D  84        add     h
1C8E  11 48 0F  lxi     d,$0F48
1C91  99        sbb     c
1C92  3C        inr     a
1C93  7E        mov     a,m
1C94  3D        dcr     a
1C95  BC        cmp     h
1C96  3E 7C     mvi     a,'|'
1C98  99        sbb     c
1C99  27        daa
1C9A  1B        dcx     d
1C9B  1A        ldax    d
1C9C  26 0F     mvi     h,$0F
1C9E  0E 08     mvi     c,$08
1CA0  0D        dcr     c
1CA1  13        inx     d
1CA2  12        stax    d
1CA3  28        nop                  ;Note: Alternative opcode used
1CA4  12        stax    d
1CA5  02        stax    b
1CA6  0E 11     mvi     c,$11
1CA8  04        inr     b
1CA9  26 00     mvi     h,$00
1CAB  03        inx     b
1CAC  15        dcr     d
1CAD  00        nop
1CAE  0D        dcr     c
1CAF  02        stax    b
1CB0  04        inr     b
1CB1  26 13     mvi     h,$13
1CB3  00        nop
1CB4  01 0B 04  lxi     b,$040B
1CB7  28        nop                  ;Note: Alternative opcode used
1CB8  02        stax    b
1CB9  10        nop                  ;Note: Alternative opcode used
1CBA  20        nop                  ;Note: Alternative opcode used
1CBB  30        nop                  ;Note: Alternative opcode used
1CBC  13        inx     d
1CBD  08        nop                  ;Note: Alternative opcode used
1CBE  0B        dcx     b
1CBF  13        inx     d
1CC0  00        nop
1CC1  08        nop                  ;Note: Alternative opcode used
1CC2  49        mov     c,c
1CC3  22 14 81  shld    $8114
1CC6  42        mov     b,d
1CC7  00        nop
1CC8  42        mov     b,d
1CC9  81        add     c
1CCA  14        inr     d
1CCB  22 49 08  shld    $0849
1CCE  00        nop
1CCF  00        nop
1CD0  44        mov     b,h
1CD1  AA        xra     d
1CD2  10        nop                  ;Note: Alternative opcode used
1CD3  88        adc     b
1CD4  54        mov     d,h
1CD5  22 10 AA  shld    $AA10
1CD8  44        mov     b,h
1CD9  22 54 88  shld    $8854
1CDC  4A        mov     c,d
1CDD  15        dcr     d
1CDE  BE        cmp     m
1CDF  3F        cmc
1CE0  5E        mov     e,m
1CE1  25        dcr     h
1CE2  04        inr     b
1CE3  FC 04 10  cm      $1004
1CE6  FC 10 20  cm      $2010
1CE9  FC 20 80  cm      $8020
1CEC  FC 80 00  cm      $0080
1CEF  FE 00     cpi     $00
1CF1  24        inr     h
1CF2  FE 12     cpi     $12
1CF4  00        nop
1CF5  FE 00     cpi     $00
1CF7  48        mov     c,b
1CF8  FE 90     cpi     $90
1CFA  0F        rrc
1CFB  0B        dcx     b
1CFC  00        nop
1CFD  29        dad     h
1CFE  00        nop
1CFF  00        nop
1D00  01 07 01  lxi     b,$0107
1D03  01 01 04  lxi     b,$0401
1D06  0B        dcx     b
1D07  01 06 03  lxi     b,$0306
1D0A  01 01 0B  lxi     b,$0B01
1D0D  09        dad     b
1D0E  02        stax    b
1D0F  08        nop                  ;Note: Alternative opcode used
1D10  02        stax    b
1D11  0B        dcx     b
1D12  04        inr     b
1D13  07        rlc
1D14  0A        ldax    b
1D15  05        dcr     b
1D16  02        stax    b
1D17  05        dcr     b
1D18  04        inr     b
1D19  06 07     mvi     b,$07
1D1B  08        nop                  ;Note: Alternative opcode used
1D1C  0A        ldax    b
1D1D  06 0A     mvi     b,$0A
1D1F  03        inx     b
1D20  FF        rst     7
1D21  0F        rrc
1D22  FF        rst     7
1D23  1F        rar
1D24  FF        rst     7
1D25  3F        cmc
1D26  FF        rst     7
1D27  7F        mov     a,a
1D28  FF        rst     7
1D29  FF        rst     7
1D2A  FC FF F8  cm      $F8FF
1D2D  FF        rst     7
1D2E  F0        rp
1D2F  FF        rst     7
1D30  F0        rp
1D31  FF        rst     7
1D32  F0        rp
1D33  FF        rst     7
1D34  F0        rp
1D35  FF        rst     7
1D36  F0        rp
1D37  FF        rst     7
1D38  F0        rp
1D39  FF        rst     7
1D3A  F0        rp
1D3B  FF        rst     7
1D3C  F8        rm
1D3D  FF        rst     7
1D3E  FC FF FF  cm      $FFFF
1D41  FF        rst     7
1D42  FF        rst     7
1D43  FF        rst     7
1D44  FF        rst     7
1D45  7F        mov     a,a
1D46  FF        rst     7
1D47  3F        cmc
1D48  FF        rst     7
1D49  1F        rar
1D4A  FF        rst     7
1D4B  0F        rrc
1D4C  05        dcr     b
1D4D  10        nop                  ;Note: Alternative opcode used
1D4E  15        dcr     d
1D4F  30        nop                  ;Note: Alternative opcode used
1D50  94        sub     h
1D51  97        sub     a
1D52  9A        sbb     d
1D53  9D        sbb     l
1D54  10        nop                  ;Note: Alternative opcode used
1D55  05        dcr     b
1D56  05        dcr     b
1D57  10        nop                  ;Note: Alternative opcode used
1D58  15        dcr     d
1D59  10        nop                  ;Note: Alternative opcode used
1D5A  10        nop                  ;Note: Alternative opcode used
1D5B  05        dcr     b
1D5C  30        nop                  ;Note: Alternative opcode used
1D5D  10        nop                  ;Note: Alternative opcode used
1D5E  10        nop                  ;Note: Alternative opcode used
1D5F  10        nop                  ;Note: Alternative opcode used
1D60  05        dcr     b
1D61  15        dcr     d
1D62  10        nop                  ;Note: Alternative opcode used
1D63  05        dcr     b
1D64  00        nop
1D65  00        nop
1D66  00        nop
1D67  00        nop
1D68  04        inr     b
1D69  0C        inr     c
1D6A  1E 37     mvi     e,$37
1D6C  3E 7C     mvi     a,'|'
1D6E  74        mov     m,h
1D6F  7E        mov     a,m
1D70  7E        mov     a,m
1D71  74        mov     m,h
1D72  7C        mov     a,h
1D73  3E 37     mvi     a,$37
1D75  1E 0C     mvi     e,$0C
1D77  04        inr     b
1D78  00        nop
1D79  00        nop
1D7A  00        nop
1D7B  00        nop
1D7C  00        nop
1D7D  22 00 A5  shld    $A500
1D80  40        mov     b,b
1D81  08        nop                  ;Note: Alternative opcode used
1D82  98        sbb     b
1D83  3D        dcr     a
1D84  B6        ora     m
1D85  3C        inr     a
1D86  36 1D     mvi     m,$1D
1D88  10        nop                  ;Note: Alternative opcode used
1D89  48        mov     c,b
1D8A  62        mov     h,d
1D8B  B6        ora     m
1D8C  1D        dcr     e
1D8D  98        sbb     b
1D8E  08        nop                  ;Note: Alternative opcode used
1D8F  42        mov     b,d
1D90  90        sub     b
1D91  08        nop                  ;Note: Alternative opcode used
1D92  00        nop
1D93  00        nop
1D94  26 1F     mvi     h,$1F
1D96  1A        ldax    d
1D97  1B        dcx     d
1D98  1A        ldax    d
1D99  1A        ldax    d
1D9A  1B        dcx     d
1D9B  1F        rar
1D9C  1A        ldax    d
1D9D  1D        dcr     e
1D9E  1A        ldax    d
1D9F  1A        ldax    d
1DA0  10        nop                  ;Note: Alternative opcode used
1DA1  20        nop                  ;Note: Alternative opcode used
1DA2  30        nop                  ;Note: Alternative opcode used
1DA3  60        mov     h,b
1DA4  50        mov     d,b
1DA5  48        mov     c,b
1DA6  48        mov     c,b
1DA7  48        mov     c,b
1DA8  40        mov     b,b
1DA9  40        mov     b,b
1DAA  40        mov     b,b
1DAB  0F        rrc
1DAC  0B        dcx     b
1DAD  00        nop
1DAE  18        nop                  ;Note: Alternative opcode used
1DAF  12        stax    d
1DB0  0F        rrc
1DB1  00        nop
1DB2  02        stax    b
1DB3  04        inr     b
1DB4  26 26     mvi     h,$26
1DB6  08        nop                  ;Note: Alternative opcode used
1DB7  0D        dcr     c
1DB8  15        dcr     d
1DB9  00        nop
1DBA  03        inx     b
1DBB  04        inr     b
1DBC  11 12 0E  lxi     d,$0E12
1DBF  2C        inr     l
1DC0  68        mov     l,b
1DC1  1D        dcr     e
1DC2  0C        inr     c
1DC3  2C        inr     l
1DC4  20        nop                  ;Note: Alternative opcode used
1DC5  1C        inr     e
1DC6  0A        ldax    b
1DC7  2C        inr     l
1DC8  40        mov     b,b
1DC9  1C        inr     e
1DCA  08        nop                  ;Note: Alternative opcode used
1DCB  2C        inr     l
1DCC  00        nop
1DCD  1C        inr     e
1DCE  FF        rst     7
1DCF  0E 2E     mvi     c,$2E
1DD1  E0        rpo
1DD2  1D        dcr     e
1DD3  0C        inr     c
1DD4  2E EA     mvi     l,$EA
1DD6  1D        dcr     e
1DD7  0A        ldax    b
1DD8  2E F4     mvi     l,$F4
1DDA  1D        dcr     e
1DDB  08        nop                  ;Note: Alternative opcode used
1DDC  2E 99     mvi     l,$99
1DDE  1C        inr     e
1DDF  FF        rst     7
1DE0  27        daa
1DE1  38        nop                  ;Note: Alternative opcode used
1DE2  26 0C     mvi     h,$0C
1DE4  18        nop                  ;Note: Alternative opcode used
1DE5  12        stax    d
1DE6  13        inx     d
1DE7  04        inr     b
1DE8  11 18 27  lxi     d,$2718
1DEB  1D        dcr     e
1DEC  1A        ldax    d
1DED  26 0F     mvi     h,$0F
1DEF  0E 08     mvi     c,$08
1DF1  0D        dcr     c
1DF2  13        inx     d
1DF3  12        stax    d
1DF4  27        daa
1DF5  1C        inr     e
1DF6  1A        ldax    d
1DF7  26 0F     mvi     h,$0F
1DF9  0E 08     mvi     c,$08
1DFB  0D        dcr     c
1DFC  13        inx     d
1DFD  12        stax    d
1DFE  00        nop
1DFF  00        nop
1E00  00        nop
1E01  1F        rar
1E02  24        inr     h
1E03  44        mov     b,h
1E04  24        inr     h
1E05  1F        rar
1E06  00        nop
1E07  00        nop
1E08  00        nop
1E09  7F        mov     a,a
1E0A  49        mov     c,c
1E0B  49        mov     c,c
1E0C  49        mov     c,c
1E0D  36 00     mvi     m,$00
1E0F  00        nop
1E10  00        nop
1E11  3E 41     mvi     a,'A'
1E13  41        mov     b,c
1E14  41        mov     b,c
1E15  22 00 00  shld    $0000
1E18  00        nop
1E19  7F        mov     a,a
1E1A  41        mov     b,c
1E1B  41        mov     b,c
1E1C  41        mov     b,c
1E1D  3E 00     mvi     a,$00
1E1F  00        nop
1E20  00        nop
1E21  7F        mov     a,a
1E22  49        mov     c,c
1E23  49        mov     c,c
1E24  49        mov     c,c
1E25  41        mov     b,c
1E26  00        nop
1E27  00        nop
1E28  00        nop
1E29  7F        mov     a,a
1E2A  48        mov     c,b
1E2B  48        mov     c,b
1E2C  48        mov     c,b
1E2D  40        mov     b,b
1E2E  00        nop
1E2F  00        nop
1E30  00        nop
1E31  3E 41     mvi     a,'A'
1E33  41        mov     b,c
1E34  45        mov     b,l
1E35  47        mov     b,a
1E36  00        nop
1E37  00        nop
1E38  00        nop
1E39  7F        mov     a,a
1E3A  08        nop                  ;Note: Alternative opcode used
1E3B  08        nop                  ;Note: Alternative opcode used
1E3C  08        nop                  ;Note: Alternative opcode used
1E3D  7F        mov     a,a
1E3E  00        nop
1E3F  00        nop
1E40  00        nop
1E41  00        nop
1E42  41        mov     b,c
1E43  7F        mov     a,a
1E44  41        mov     b,c
1E45  00        nop
1E46  00        nop
1E47  00        nop
1E48  00        nop
1E49  02        stax    b
1E4A  01 01 01  lxi     b,$0101
1E4D  7E        mov     a,m
1E4E  00        nop
1E4F  00        nop
1E50  00        nop
1E51  7F        mov     a,a
1E52  08        nop                  ;Note: Alternative opcode used
1E53  14        inr     d
1E54  22 41 00  shld    $0041
1E57  00        nop
1E58  00        nop
1E59  7F        mov     a,a
1E5A  01 01 01  lxi     b,$0101
1E5D  01 00 00  lxi     b,$0000
1E60  00        nop
1E61  7F        mov     a,a
1E62  20        nop                  ;Note: Alternative opcode used
1E63  18        nop                  ;Note: Alternative opcode used
1E64  20        nop                  ;Note: Alternative opcode used
1E65  7F        mov     a,a
1E66  00        nop
1E67  00        nop
1E68  00        nop
1E69  7F        mov     a,a
1E6A  10        nop                  ;Note: Alternative opcode used
1E6B  08        nop                  ;Note: Alternative opcode used
1E6C  04        inr     b
1E6D  7F        mov     a,a
1E6E  00        nop
1E6F  00        nop
1E70  00        nop
1E71  3E 41     mvi     a,'A'
1E73  41        mov     b,c
1E74  41        mov     b,c
1E75  3E 00     mvi     a,$00
1E77  00        nop
1E78  00        nop
1E79  7F        mov     a,a
1E7A  48        mov     c,b
1E7B  48        mov     c,b
1E7C  48        mov     c,b
1E7D  30        nop                  ;Note: Alternative opcode used
1E7E  00        nop
1E7F  00        nop
1E80  00        nop
1E81  3E 41     mvi     a,'A'
1E83  45        mov     b,l
1E84  42        mov     b,d
1E85  3D        dcr     a
1E86  00        nop
1E87  00        nop
1E88  00        nop
1E89  7F        mov     a,a
1E8A  48        mov     c,b
1E8B  4C        mov     c,h
1E8C  4A        mov     c,d
1E8D  31 00 00  lxi     sp,$0000
1E90  00        nop
1E91  32 49 49  sta     $4949
1E94  49        mov     c,c
1E95  26 00     mvi     h,$00
1E97  00        nop
1E98  00        nop
1E99  40        mov     b,b
1E9A  40        mov     b,b
1E9B  7F        mov     a,a
1E9C  40        mov     b,b
1E9D  40        mov     b,b
1E9E  00        nop
1E9F  00        nop
1EA0  00        nop
1EA1  7E        mov     a,m
1EA2  01 01 01  lxi     b,$0101
1EA5  7E        mov     a,m
1EA6  00        nop
1EA7  00        nop
1EA8  00        nop
1EA9  7C        mov     a,h
1EAA  02        stax    b
1EAB  01 02 7C  lxi     b,$7C02
1EAE  00        nop
1EAF  00        nop
1EB0  00        nop
1EB1  7F        mov     a,a
1EB2  02        stax    b
1EB3  0C        inr     c
1EB4  02        stax    b
1EB5  7F        mov     a,a
1EB6  00        nop
1EB7  00        nop
1EB8  00        nop
1EB9  63        mov     h,e
1EBA  14        inr     d
1EBB  08        nop                  ;Note: Alternative opcode used
1EBC  14        inr     d
1EBD  63        mov     h,e
1EBE  00        nop
1EBF  00        nop
1EC0  00        nop
1EC1  60        mov     h,b
1EC2  10        nop                  ;Note: Alternative opcode used
1EC3  0F        rrc
1EC4  10        nop                  ;Note: Alternative opcode used
1EC5  60        mov     h,b
1EC6  00        nop
1EC7  00        nop
1EC8  00        nop
1EC9  43        mov     b,e
1ECA  45        mov     b,l
1ECB  49        mov     c,c
1ECC  51        mov     d,c
1ECD  61        mov     h,c
1ECE  00        nop
1ECF  00        nop
1ED0  00        nop
1ED1  3E 45     mvi     a,'E'
1ED3  49        mov     c,c
1ED4  51        mov     d,c
1ED5  3E 00     mvi     a,$00
1ED7  00        nop
1ED8  00        nop
1ED9  00        nop
1EDA  21 7F 01  lxi     h,$017F
1EDD  00        nop
1EDE  00        nop
1EDF  00        nop
1EE0  00        nop
1EE1  23        inx     h
1EE2  45        mov     b,l
1EE3  49        mov     c,c
1EE4  49        mov     c,c
1EE5  31 00 00  lxi     sp,$0000
1EE8  00        nop
1EE9  42        mov     b,d
1EEA  41        mov     b,c
1EEB  49        mov     c,c
1EEC  59        mov     e,c
1EED  66        mov     h,m
1EEE  00        nop
1EEF  00        nop
1EF0  00        nop
1EF1  0C        inr     c
1EF2  14        inr     d
1EF3  24        inr     h
1EF4  7F        mov     a,a
1EF5  04        inr     b
1EF6  00        nop
1EF7  00        nop
1EF8  00        nop
1EF9  72        mov     m,d
1EFA  51        mov     d,c
1EFB  51        mov     d,c
1EFC  51        mov     d,c
1EFD  4E        mov     c,m
1EFE  00        nop
1EFF  00        nop
1F00  00        nop
1F01  1E 29     mvi     e,$29
1F03  49        mov     c,c
1F04  49        mov     c,c
1F05  46        mov     b,m
1F06  00        nop
1F07  00        nop
1F08  00        nop
1F09  40        mov     b,b
1F0A  47        mov     b,a
1F0B  48        mov     c,b
1F0C  50        mov     d,b
1F0D  60        mov     h,b
1F0E  00        nop
1F0F  00        nop
1F10  00        nop
1F11  36 49     mvi     m,'I'
1F13  49        mov     c,c
1F14  49        mov     c,c
1F15  36 00     mvi     m,$00
1F17  00        nop
1F18  00        nop
1F19  31 49 49  lxi     sp,$4949
1F1C  4A        mov     c,d
1F1D  3C        inr     a
1F1E  00        nop
1F1F  00        nop
1F20  00        nop
1F21  08        nop                  ;Note: Alternative opcode used
1F22  14        inr     d
1F23  22 41 00  shld    $0041
1F26  00        nop
1F27  00        nop
1F28  00        nop
1F29  00        nop
1F2A  41        mov     b,c
1F2B  22 14 08  shld    $0814
1F2E  00        nop
1F2F  00        nop
1F30  00        nop
1F31  00        nop
1F32  00        nop
1F33  00        nop
1F34  00        nop
1F35  00        nop
1F36  00        nop
1F37  00        nop
1F38  00        nop
1F39  14        inr     d
1F3A  14        inr     d
1F3B  14        inr     d
1F3C  14        inr     d
1F3D  14        inr     d
1F3E  00        nop
1F3F  00        nop
1F40  00        nop
1F41  22 14 7F  shld    $7F14
1F44  14        inr     d
1F45  22 00 00  shld    $0000
1F48  00        nop
1F49  03        inx     b
1F4A  04        inr     b
1F4B  78        mov     a,b
1F4C  04        inr     b
1F4D  03        inx     b
1F4E  00        nop
1F4F  00        nop
1F50  24        inr     h
1F51  1B        dcx     d
1F52  26 0E     mvi     h,$0E
1F54  11 26 1C  lxi     d,$1C26
1F57  26 0F     mvi     h,$0F
1F59  0B        dcx     b
1F5A  00        nop
1F5B  18        nop                  ;Note: Alternative opcode used
1F5C  04        inr     b
1F5D  11 12 25  lxi     d,$2512
1F60  26 26     mvi     h,$26
1F62  28        nop                  ;Note: Alternative opcode used
1F63  1B        dcx     d
1F64  26 0F     mvi     h,$0F
1F66  0B        dcx     b
1F67  00        nop
1F68  18        nop                  ;Note: Alternative opcode used
1F69  04        inr     b
1F6A  11 26 26  lxi     d,$2626
1F6D  1B        dcx     d
1F6E  26 02     mvi     h,$02
1F70  0E 08     mvi     c,$08
1F72  0D        dcr     c
1F73  26 01     mvi     h,$01
1F75  01 00 00  lxi     b,$0000
1F78  01 00 02  lxi     b,$0200
1F7B  01 00 02  lxi     b,$0200
1F7E  01 00 60  lxi     b,$6000
1F81  10        nop                  ;Note: Alternative opcode used
1F82  0F        rrc
1F83  10        nop                  ;Note: Alternative opcode used
1F84  60        mov     h,b
1F85  30        nop                  ;Note: Alternative opcode used
1F86  18        nop                  ;Note: Alternative opcode used
1F87  1A        ldax    d
1F88  3D        dcr     a
1F89  68        mov     l,b
1F8A  FC FC 68  cm      $68FC
1F8D  3D        dcr     a
1F8E  1A        ldax    d
1F8F  00        nop
1F90  08        nop                  ;Note: Alternative opcode used
1F91  0D        dcr     c
1F92  12        stax    d
1F93  04        inr     b
1F94  11 13 26  lxi     d,$2613
1F97  26 02     mvi     h,$02
1F99  0E 08     mvi     c,$08
1F9B  0D        dcr     c
1F9C  0D        dcr     c
1F9D  2A 50 1F  lhld    $1F50
1FA0  0A        ldax    b
1FA1  2A 62 1F  lhld    $1F62
1FA4  07        rlc
1FA5  2A E1 1F  lhld    $1FE1
1FA8  FF        rst     7
1FA9  02        stax    b
1FAA  11 04 03  lxi     d,$0304
1FAD  08        nop                  ;Note: Alternative opcode used
1FAE  13        inx     d
1FAF  26 00     mvi     h,$00
1FB1  60        mov     h,b
1FB2  10        nop                  ;Note: Alternative opcode used
1FB3  0F        rrc
1FB4  10        nop                  ;Note: Alternative opcode used
1FB5  60        mov     h,b
1FB6  38        nop                  ;Note: Alternative opcode used
1FB7  19        dad
1FB8  3A 6D FA  lda     $FA6D
1FBB  FA 6D 3A  jm      $3A6D
1FBE  19        dad
1FBF  00        nop
1FC0  00        nop
1FC1  20        nop                  ;Note: Alternative opcode used
1FC2  40        mov     b,b
1FC3  4D        mov     c,l
1FC4  50        mov     d,b
1FC5  20        nop                  ;Note: Alternative opcode used
1FC6  00        nop
1FC7  00        nop
1FC8  00        nop
1FC9  00        nop
1FCA  00        nop
1FCB  FF        rst     7
1FCC  B8        cmp     b
1FCD  FF        rst     7
1FCE  80        add     b
1FCF  1F        rar
1FD0  10        nop                  ;Note: Alternative opcode used
1FD1  97        sub     a
1FD2  00        nop
1FD3  80        add     b
1FD4  1F        rar
1FD5  00        nop
1FD6  00        nop
1FD7  01 D0 22  lxi     b,$22D0
1FDA  20        nop                  ;Note: Alternative opcode used
1FDB  1C        inr     e
1FDC  10        nop                  ;Note: Alternative opcode used
1FDD  94        sub     h
1FDE  00        nop
1FDF  20        nop                  ;Note: Alternative opcode used
1FE0  1C        inr     e
1FE1  28        nop                  ;Note: Alternative opcode used
1FE2  1C        inr     e
1FE3  26 0F     mvi     h,$0F
1FE5  0B        dcx     b
1FE6  00        nop
1FE7  18        nop                  ;Note: Alternative opcode used
1FE8  04        inr     b
1FE9  11 12 26  lxi     d,$2612
1FEC  1C        inr     e
1FED  26 02     mvi     h,$02
1FEF  0E 08     mvi     c,$08
1FF1  0D        dcr     c
1FF2  12        stax    d
1FF3  0F        rrc
1FF4  14        inr     d
1FF5  12        stax    d
1FF6  07        rlc
1FF7  26 00     mvi     h,$00
1FF9  08        nop                  ;Note: Alternative opcode used
1FFA  08        nop                  ;Note: Alternative opcode used
1FFB  08        nop                  ;Note: Alternative opcode used
1FFC  08        nop                  ;Note: Alternative opcode used
1FFD  08        nop                  ;Note: Alternative opcode used
1FFE  00        nop
1FFF  00        nop
2000            end
