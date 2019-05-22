0000            org     $0000
0000  20        nop                  ;Note: Alternative opcode used
0001  C3 C9 16  jmp     $16C9
0004  21 84 20  lxi     h,$2084
0007  7E        mov     a,m
0008  A7        ana     a
0009  CA 07 07  jz      $0707
000C  23        inx     h
000D  7E        mov     a,m
000E  A7        ana     a
000F  C0        rnz
0010  06 01     mvi     b,$01
0012  C3 FA 18  jmp     $18FA
0015  21 10 28  lxi     h,$2810
0018  11 A3 1C  lxi     d,$1CA3
001B  0E 15     mvi     c,$15
001D  CD F3 08  call    $08F3
0020  3E 0A     mvi     a,$0A
0022  32 6C 20  sta     $206C
0025  01 BE 1D  lxi     b,$1DBE
0028  CD 56 18  call    $1856
002B  DA 37 18  jc      $1837
002E  CD 44 18  call    $1844
0031  C3 28 18  jmp     $1828
0034  CD B1 0A  call    $0AB1
0037  01 CF 1D  lxi     b,$1DCF
003A  CD 56 18  call    $1856
003D  D8        rc
003E  CD 4C 18  call    $184C
0041  C3 3A 18  jmp     $183A
0044  C5        push    b
0045  06 10     mvi     b,$10
0047  CD 39 14  call    $1439
004A  C1        pop     b
004B  C9        ret
004C  C5        push    b
004D  3A 6C 20  lda     $206C
0050  4F        mov     c,a
0051  CD 93 0A  call    $0A93
0054  C1        pop     b
0055  C9        ret
0056  0A        ldax    b
0057  FE FF     cpi     $FF
0059  37        stc
005A  C8        rz
005B  6F        mov     l,a
005C  03        inx     b
005D  0A        ldax    b
005E  67        mov     h,a
005F  03        inx     b
0060  0A        ldax    b
0061  5F        mov     e,a
0062  03        inx     b
0063  0A        ldax    b
0064  57        mov     d,a
0065  03        inx     b
0066  A7        ana     a
0067  C9        ret
0068  21 C2 20  lxi     h,$20C2
006B  34        inr     m
006C  23        inx     h
006D  4E        mov     c,m
006E  CD D9 01  call    $01D9
0071  47        mov     b,a
0072  3A CA 20  lda     $20CA
0075  B8        cmp     b
0076  CA 98 18  jz      $1898
0079  3A C2 20  lda     $20C2
007C  E6 04     ani     $04
007E  2A CC 20  lhld    $20CC
0081  C2 88 18  jnz     $1888
0084  11 30 00  lxi     d,$0030
0087  19        dad
0088  22 C7 20  shld    $20C7
008B  21 C5 20  lxi     h,$20C5
008E  CD 3B 1A  call    $1A3B
0091  EB        xchg
0092  C3 D3 15  jmp     $15D3
0095  00        nop
0096  00        nop
0097  00        nop
0098  3E 01     mvi     a,$01
009A  32 CB 20  sta     $20CB
009D  C9        ret
009E  21 50 20  lxi     h,$2050
00A1  11 C0 1B  lxi     d,$1BC0
00A4  06 10     mvi     b,$10
00A6  CD 32 1A  call    $1A32
00A9  3E 02     mvi     a,$02
00AB  32 80 20  sta     $2080
00AE  3E FF     mvi     a,$FF
00B0  32 7E 20  sta     $207E
00B3  3E 04     mvi     a,$04
00B5  32 C1 20  sta     $20C1
00B8  3A 55 20  lda     $2055
00BB  E6 01     ani     $01
00BD  CA B8 18  jz      $18B8
00C0  3A 55 20  lda     $2055
00C3  E6 01     ani     $01
00C5  C2 C0 18  jnz     $18C0
00C8  21 11 33  lxi     h,$3311
00CB  3E 26     mvi     a,$26
00CD  00        nop
00CE  CD FF 08  call    $08FF
00D1  C3 B6 0A  jmp     $0AB6
00D4  31 00 24  lxi     sp,$2400
00D7  06 00     mvi     b,$00
00D9  CD E6 01  call    $01E6
00DC  CD 56 19  call    $1956
00DF  3E 08     mvi     a,$08
00E1  32 CF 20  sta     $20CF
00E4  C3 EA 0A  jmp     $0AEA
00E7  3A 67 20  lda     $2067
00EA  21 E7 20  lxi     h,$20E7
00ED  0F        rrc
00EE  D0        rnc
00EF  23        inx     h
00F0  C9        ret
00F1  06 02     mvi     b,$02
00F3  3A 82 20  lda     $2082
00F6  3D        dcr     a
00F7  C0        rnz
00F8  04        inr     b
00F9  C9        ret
00FA  3A 94 20  lda     $2094
00FD  B0        ora     b
00FE  32 94 20  sta     $2094
0101  D3 03     out     $03
0103  C9        ret
0104  21 00 22  lxi     h,$2200
0107  C3 C3 01  jmp     $01C3
010A  CD D8 14  call    $14D8
010D  C3 97 15  jmp     $1597
0110  21 E7 20  lxi     h,$20E7
0113  3A 67 20  lda     $2067
0116  0F        rrc
0117  D8        rc
0118  23        inx     h
0119  C9        ret
011A  0E 1C     mvi     c,$1C
011C  21 1E 24  lxi     h,$241E
011F  11 E4 1A  lxi     d,$1AE4
0122  C3 F3 08  jmp     $08F3
0125  21 F8 20  lxi     h,$20F8
0128  C3 31 19  jmp     $1931
012B  21 FC 20  lxi     h,$20FC
012E  C3 31 19  jmp     $1931
0131  5E        mov     e,m
0132  23        inx     h
0133  56        mov     d,m
0134  23        inx     h
0135  7E        mov     a,m
0136  23        inx     h
0137  66        mov     h,m
0138  6F        mov     l,a
0139  C3 AD 09  jmp     $09AD
013C  0E 07     mvi     c,$07
013E  21 01 35  lxi     h,$3501
0141  11 A9 1F  lxi     d,$1FA9
0144  C3 F3 08  jmp     $08F3
0147  3A EB 20  lda     $20EB
014A  21 01 3C  lxi     h,$3C01
014D  C3 B2 09  jmp     $09B2
0150  21 F4 20  lxi     h,$20F4
0153  C3 31 19  jmp     $1931
0156  CD 5C 1A  call    $1A5C
0159  CD 1A 19  call    $191A
015C  CD 25 19  call    $1925
015F  CD 2B 19  call    $192B
0162  CD 50 19  call    $1950
0165  CD 3C 19  call    $193C
0168  C3 47 19  jmp     $1947
016B  CD DC 19  call    $19DC
016E  C3 71 16  jmp     $1671
0171  3E 01     mvi     a,$01
0173  32 6D 20  sta     $206D
0176  C3 E6 16  jmp     $16E6
0179  CD D7 19  call    $19D7
017C  CD 47 19  call    $1947
017F  C3 3C 19  jmp     $193C
0182  32 C1 20  sta     $20C1
0185  C9        ret
0186  8B        adc     e
0187  19        dad
0188  C3 D6 09  jmp     $09D6
018B  21 03 28  lxi     h,$2803
018E  11 BE 19  lxi     d,$19BE
0191  0E 13     mvi     c,$13
0193  C3 F3 08  jmp     $08F3
0196  00        nop
0197  00        nop
0198  00        nop
0199  00        nop
019A  3A 1E 20  lda     $201E
019D  A7        ana     a
019E  C2 AC 19  jnz     $19AC
01A1  DB 01     in      $01
01A3  E6 76     ani     'v'
01A5  D6 72     sui     'r'
01A7  C0        rnz
01A8  3C        inr     a
01A9  32 1E 20  sta     $201E
01AC  DB 01     in      $01
01AE  E6 76     ani     'v'
01B0  FE 34     cpi     $34
01B2  C0        rnz
01B3  21 1B 2E  lxi     h,$2E1B
01B6  11 F7 0B  lxi     d,$0BF7
01B9  0E 09     mvi     c,$09
01BB  C3 F3 08  jmp     $08F3
01BE  28        nop                  ;Note: Alternative opcode used
01BF  13        inx     d
01C0  00        nop
01C1  08        nop                  ;Note: Alternative opcode used
01C2  13        inx     d
01C3  0E 26     mvi     c,$26
01C5  02        stax    b
01C6  0E 11     mvi     c,$11
01C8  0F        rrc
01C9  0E 11     mvi     c,$11
01CB  00        nop
01CC  13        inx     d
01CD  08        nop                  ;Note: Alternative opcode used
01CE  0E 0D     mvi     c,$0D
01D0  28        nop                  ;Note: Alternative opcode used
01D1  3E 01     mvi     a,$01
01D3  32 E9 20  sta     $20E9
01D6  C9        ret
01D7  AF        xra     a
01D8  C3 D3 19  jmp     $19D3
01DB  00        nop
01DC  3A 94 20  lda     $2094
01DF  A0        ana     b
01E0  32 94 20  sta     $2094
01E3  D3 03     out     $03
01E5  C9        ret
01E6  21 01 27  lxi     h,$2701
01E9  CA FA 19  jz      $19FA
01EC  11 60 1C  lxi     d,$1C60
01EF  06 10     mvi     b,$10
01F1  4F        mov     c,a
01F2  CD 39 14  call    $1439
01F5  79        mov     a,c
01F6  3D        dcr     a
01F7  C2 EC 19  jnz     $19EC
01FA  06 10     mvi     b,$10
01FC  CD CB 14  call    $14CB
01FF  7C        mov     a,h
0200  FE 35     cpi     $35
0202  C2 FA 19  jnz     $19FA
0205  C9        ret
0206  21 72 20  lxi     h,$2072
0209  46        mov     b,m
020A  1A        ldax    d
020B  E6 80     ani     $80
020D  A8        xra     b
020E  C0        rnz
020F  37        stc
0210  C9        ret
0211  32 2B 24  sta     $242B
0214  1C        inr     e
0215  16 11     mvi     d,$11
0217  0D        dcr     c
0218  0A        ldax    b
0219  08        nop                  ;Note: Alternative opcode used
021A  07        rlc
021B  06 05     mvi     b,$05
021D  04        inr     b
021E  03        inx     b
021F  02        stax    b
0220  01 34 2E  lxi     b,$2E34
0223  27        daa
0224  22 1C 18  shld    $181C
0227  15        dcr     d
0228  13        inx     d
0229  10        nop                  ;Note: Alternative opcode used
022A  0E 0D     mvi     c,$0D
022C  0C        inr     c
022D  0B        dcx     b
022E  09        dad     b
022F  07        rlc
0230  05        dcr     b
0231  FF        rst     7
0232  1A        ldax    d
0233  77        mov     m,a
0234  23        inx     h
0235  13        inx     d
0236  05        dcr     b
0237  C2 32 1A  jnz     $1A32
023A  C9        ret
023B  5E        mov     e,m
023C  23        inx     h
023D  56        mov     d,m
023E  23        inx     h
023F  7E        mov     a,m
0240  23        inx     h
0241  4E        mov     c,m
0242  23        inx     h
0243  46        mov     b,m
0244  61        mov     h,c
0245  6F        mov     l,a
0246  C9        ret
0247  C5        push    b
0248  06 03     mvi     b,$03
024A  7C        mov     a,h
024B  1F        rar
024C  67        mov     h,a
024D  7D        mov     a,l
024E  1F        rar
024F  6F        mov     l,a
0250  05        dcr     b
0251  C2 4A 1A  jnz     $1A4A
0254  7C        mov     a,h
0255  E6 3F     ani     $3F
0257  F6 20     ori     $20
0259  67        mov     h,a
025A  C1        pop     b
025B  C9        ret
025C  21 00 24  lxi     h,$2400
025F  36 00     mvi     m,$00
0261  23        inx     h
0262  7C        mov     a,h
0263  FE 40     cpi     '@'
0265  C2 5F 1A  jnz     $1A5F
0268  C9        ret
0269  C5        push    b
026A  E5        push    h
026B  1A        ldax    d
026C  B6        ora     m
026D  77        mov     m,a
026E  13        inx     d
026F  23        inx     h
0270  0D        dcr     c
0271  C2 6B 1A  jnz     $1A6B
0274  E1        pop     h
0275  01 20 00  lxi     b,$0020
0278  09        dad     b
0279  C1        pop     b
027A  05        dcr     b
027B  C2 69 1A  jnz     $1A69
027E  C9        ret
027F  CD 2E 09  call    $092E
0282  A7        ana     a
0283  C8        rz
0284  F5        push    psw
0285  3D        dcr     a
0286  77        mov     m,a
0287  CD E6 19  call    $19E6
028A  F1        pop     psw
028B  21 01 25  lxi     h,$2501
028E  E6 0F     ani     $0F
0290  C3 C5 09  jmp     $09C5
0293  00        nop
0294  00        nop
0295  00        nop
0296  00        nop
0297  FF        rst     7
0298  B8        cmp     b
0299  FE 20     cpi     $20
029B  1C        inr     e
029C  10        nop                  ;Note: Alternative opcode used
029D  9E        sbb     m
029E  00        nop
029F  20        nop                  ;Note: Alternative opcode used
02A0  1C        inr     e
02A1  30        nop                  ;Note: Alternative opcode used
02A2  10        nop                  ;Note: Alternative opcode used
02A3  0B        dcx     b
02A4  08        nop                  ;Note: Alternative opcode used
02A5  07        rlc
02A6  06 00     mvi     b,$00
02A8  0C        inr     c
02A9  04        inr     b
02AA  26 0E     mvi     h,$0E
02AC  15        dcr     d
02AD  04        inr     b
02AE  11 26 26  lxi     d,$2626
02B1  0F        rrc
02B2  0B        dcx     b
02B3  00        nop
02B4  18        nop                  ;Note: Alternative opcode used
02B5  04        inr     b
02B6  11 24 26  lxi     d,$2624
02B9  25        dcr     h
02BA  1B        dcx     d
02BB  26 0E     mvi     h,$0E
02BD  11 26 1C  lxi     d,$1C26
02C0  0F        rrc
02C1  0B        dcx     b
02C2  00        nop
02C3  18        nop                  ;Note: Alternative opcode used
02C4  04        inr     b
02C5  11 12 26  lxi     d,$2612
02C8  01 14 13  lxi     b,$1314
02CB  13        inx     d
02CC  0E 0D     mvi     c,$0D
02CE  26 0E     mvi     h,$0E
02D0  0D        dcr     c
02D1  0B        dcx     b
02D2  18        nop                  ;Note: Alternative opcode used
02D3  26 1B     mvi     h,$1B
02D5  0F        rrc
02D6  0B        dcx     b
02D7  00        nop
02D8  18        nop                  ;Note: Alternative opcode used
02D9  04        inr     b
02DA  11 26 26  lxi     d,$2626
02DD  01 14 13  lxi     b,$1314
02E0  13        inx     d
02E1  0E 0D     mvi     c,$0D
02E3  26 26     mvi     h,$26
02E5  12        stax    d
02E6  02        stax    b
02E7  0E 11     mvi     c,$11
02E9  04        inr     b
02EA  24        inr     h
02EB  1B        dcx     d
02EC  25        dcr     h
02ED  26 07     mvi     h,$07
02EF  08        nop                  ;Note: Alternative opcode used
02F0  3F        cmc
02F1  12        stax    d
02F2  02        stax    b
02F3  0E 11     mvi     c,$11
02F5  04        inr     b
02F6  26 12     mvi     h,$12
02F8  02        stax    b
02F9  0E 11     mvi     c,$11
02FB  04        inr     b
02FC  24        inr     h
02FD  1C        inr     e
02FE  25        dcr     h
02FF  26 01     mvi     h,$01
0301  00        nop
0302  00        nop
0303  10        nop                  ;Note: Alternative opcode used
0304  00        nop
0305  00        nop
0306  00        nop
0307  00        nop
0308  02        stax    b
0309  78        mov     a,b
030A  38        nop                  ;Note: Alternative opcode used
030B  78        mov     a,b
030C  38        nop                  ;Note: Alternative opcode used
030D  00        nop
030E  F8        rm
030F  00        nop
0310  00        nop
0311  80        add     b
0312  00        nop
0313  8E        adc     m
0314  02        stax    b
0315  FF        rst     7
0316  05        dcr     b
0317  0C        inr     c
0318  60        mov     h,b
0319  1C        inr     e
031A  20        nop                  ;Note: Alternative opcode used
031B  30        nop                  ;Note: Alternative opcode used
031C  10        nop                  ;Note: Alternative opcode used
031D  01 00 00  lxi     b,$0000
0320  00        nop
0321  00        nop
0322  00        nop
0323  BB        cmp     e
0324  03        inx     b
0325  00        nop
0326  10        nop                  ;Note: Alternative opcode used
0327  90        sub     b
0328  1C        inr     e
0329  28        nop                  ;Note: Alternative opcode used
032A  30        nop                  ;Note: Alternative opcode used
032B  01 04 00  lxi     b,$0004
032E  FF        rst     7
032F  FF        rst     7
0330  00        nop
0331  00        nop
0332  02        stax    b
0333  76        hlt
0334  04        inr     b
0335  00        nop
0336  00        nop
0337  00        nop
0338  00        nop
0339  00        nop
033A  04        inr     b
033B  EE 1C     xri     $1C
033D  00        nop
033E  00        nop
033F  03        inx     b
0340  00        nop
0341  00        nop
0342  00        nop
0343  B6        ora     m
0344  04        inr     b
0345  00        nop
0346  00        nop
0347  01 00 1D  lxi     b,$1D00
034A  04        inr     b
034B  E2 1C 00  jpo     $001C
034E  00        nop
034F  03        inx     b
0350  00        nop
0351  00        nop
0352  00        nop
0353  82        add     d
0354  06 00     mvi     b,$00
0356  00        nop
0357  01 06 1D  lxi     b,$1D06
035A  04        inr     b
035B  D0        rnc
035C  1C        inr     e
035D  00        nop
035E  00        nop
035F  03        inx     b
0360  FF        rst     7
0361  00        nop
0362  C0        rnz
0363  1C        inr     e
0364  00        nop
0365  00        nop
0366  10        nop                  ;Note: Alternative opcode used
0367  21 01 00  lxi     h,$0001
036A  30        nop                  ;Note: Alternative opcode used
036B  00        nop
036C  12        stax    d
036D  00        nop
036E  00        nop
036F  00        nop
0370  0F        rrc
0371  0B        dcx     b
0372  00        nop
0373  18        nop                  ;Note: Alternative opcode used
0374  26 0F     mvi     h,$0F
0376  0B        dcx     b
0377  00        nop
0378  18        nop                  ;Note: Alternative opcode used
0379  04        inr     b
037A  11 24 1B  lxi     d,$1B24
037D  25        dcr     h
037E  FC 00 01  cm      $0100
0381  FF        rst     7
0382  FF        rst     7
0383  00        nop
0384  00        nop
0385  00        nop
0386  20        nop                  ;Note: Alternative opcode used
0387  64        mov     h,h
0388  1D        dcr     e
0389  D0        rnc
038A  29        dad     h
038B  18        nop                  ;Note: Alternative opcode used
038C  02        stax    b
038D  54        mov     d,h
038E  1D        dcr     e
038F  00        nop
0390  08        nop                  ;Note: Alternative opcode used
0391  00        nop
0392  06 00     mvi     b,$00
0394  00        nop
0395  01 40 00  lxi     b,$0040
0398  01 00 00  lxi     b,$0000
039B  10        nop                  ;Note: Alternative opcode used
039C  9E        sbb     m
039D  00        nop
039E  20        nop                  ;Note: Alternative opcode used
039F  1C        inr     e
03A0  00        nop
03A1  03        inx     b
03A2  04        inr     b
03A3  78        mov     a,b
03A4  14        inr     d
03A5  13        inx     d
03A6  08        nop                  ;Note: Alternative opcode used
03A7  1A        ldax    d
03A8  3D        dcr     a
03A9  68        mov     l,b
03AA  FC FC 68  cm      $68FC
03AD  3D        dcr     a
03AE  1A        ldax    d
03AF  00        nop
03B0  00        nop
03B1  00        nop
03B2  01 B8 98  lxi     b,$98B8
03B5  A0        ana     b
03B6  1B        dcx     d
03B7  10        nop                  ;Note: Alternative opcode used
03B8  FF        rst     7
03B9  00        nop
03BA  A0        ana     b
03BB  1B        dcx     d
03BC  00        nop
03BD  00        nop
03BE  00        nop
03BF  00        nop
03C0  00        nop
03C1  10        nop                  ;Note: Alternative opcode used
03C2  00        nop
03C3  0E 05     mvi     c,$05
03C5  00        nop
03C6  00        nop
03C7  00        nop
03C8  00        nop
03C9  00        nop
03CA  07        rlc
03CB  D0        rnc
03CC  1C        inr     e
03CD  C8        rz
03CE  9B        sbb     e
03CF  03        inx     b
03D0  00        nop
03D1  00        nop
03D2  03        inx     b
03D3  04        inr     b
03D4  78        mov     a,b
03D5  14        inr     d
03D6  0B        dcx     b
03D7  19        dad
03D8  3A 6D FA  lda     $FA6D
03DB  FA 6D 3A  jm      $3A6D
03DE  19        dad
03DF  00        nop
03E0  00        nop
03E1  00        nop
03E2  00        nop
03E3  00        nop
03E4  00        nop
03E5  00        nop
03E6  00        nop
03E7  00        nop
03E8  00        nop
03E9  01 00 00  lxi     b,$0000
03EC  01 74 1F  lxi     b,$1F74
03EF  00        nop
03F0  80        add     b
03F1  00        nop
03F2  00        nop
03F3  00        nop
03F4  00        nop
03F5  00        nop
03F6  1C        inr     e
03F7  2F        cma
03F8  00        nop
03F9  00        nop
03FA  1C        inr     e
03FB  27        daa
03FC  00        nop
03FD  00        nop
03FE  1C        inr     e
03FF  39        dad     sp
0400  00        nop
0401  00        nop
0402  39        dad     sp
0403  79        mov     a,c
0404  7A        mov     a,d
0405  6E        mov     l,m
0406  EC FA FA  cpe     $FAFA
0409  EC 6E 7A  cpe     $7A6E
040C  79        mov     a,c
040D  39        dad     sp
040E  00        nop
040F  00        nop
0410  00        nop
0411  00        nop
0412  00        nop
0413  78        mov     a,b
0414  1D        dcr     e
0415  BE        cmp     m
0416  6C        mov     l,h
0417  3C        inr     a
0418  3C        inr     a
0419  3C        inr     a
041A  6C        mov     l,h
041B  BE        cmp     m
041C  1D        dcr     e
041D  78        mov     a,b
041E  00        nop
041F  00        nop
0420  00        nop
0421  00        nop
0422  00        nop
0423  00        nop
0424  19        dad
0425  3A 6D FA  lda     $FA6D
0428  FA 6D 3A  jm      $3A6D
042B  19        dad
042C  00        nop
042D  00        nop
042E  00        nop
042F  00        nop
0430  00        nop
0431  00        nop
0432  38        nop                  ;Note: Alternative opcode used
0433  7A        mov     a,d
0434  7F        mov     a,a
0435  6D        mov     l,l
0436  EC FA FA  cpe     $FAFA
0439  EC 6D 7F  cpe     $7F6D
043C  7A        mov     a,d
043D  38        nop                  ;Note: Alternative opcode used
043E  00        nop
043F  00        nop
0440  00        nop
0441  00        nop
0442  00        nop
0443  0E 18     mvi     c,$18
0445  BE        cmp     m
0446  6D        mov     l,l
0447  3D        dcr     a
0448  3C        inr     a
0449  3D        dcr     a
044A  6D        mov     l,l
044B  BE        cmp     m
044C  18        nop                  ;Note: Alternative opcode used
044D  0E 00     mvi     c,$00
044F  00        nop
0450  00        nop
0451  00        nop
0452  00        nop
0453  00        nop
0454  1A        ldax    d
0455  3D        dcr     a
0456  68        mov     l,b
0457  FC FC 68  cm      $68FC
045A  3D        dcr     a
045B  1A        ldax    d
045C  00        nop
045D  00        nop
045E  00        nop
045F  00        nop
0460  00        nop
0461  00        nop
0462  0F        rrc
0463  1F        rar
0464  1F        rar
0465  1F        rar
0466  1F        rar
0467  7F        mov     a,a
0468  FF        rst     7
0469  7F        mov     a,a
046A  1F        rar
046B  1F        rar
046C  1F        rar
046D  1F        rar
046E  0F        rrc
046F  00        nop
0470  00        nop
0471  04        inr     b
0472  01 13 03  lxi     b,$0313
0475  07        rlc
0476  B3        ora     e
0477  0F        rrc
0478  2F        cma
0479  03        inx     b
047A  2F        cma
047B  49        mov     c,c
047C  04        inr     b
047D  03        inx     b
047E  00        nop
047F  01 40 08  lxi     b,$0840
0482  05        dcr     b
0483  A3        ana     e
0484  0A        ldax    b
0485  03        inx     b
0486  5B        mov     e,e
0487  0F        rrc
0488  27        daa
0489  27        daa
048A  0B        dcx     b
048B  4B        mov     c,e
048C  40        mov     b,b
048D  84        add     h
048E  11 48 0F  lxi     d,$0F48
0491  99        sbb     c
0492  3C        inr     a
0493  7E        mov     a,m
0494  3D        dcr     a
0495  BC        cmp     h
0496  3E 7C     mvi     a,'|'
0498  99        sbb     c
0499  27        daa
049A  1B        dcx     d
049B  1A        ldax    d
049C  26 0F     mvi     h,$0F
049E  0E 08     mvi     c,$08
04A0  0D        dcr     c
04A1  13        inx     d
04A2  12        stax    d
04A3  28        nop                  ;Note: Alternative opcode used
04A4  12        stax    d
04A5  02        stax    b
04A6  0E 11     mvi     c,$11
04A8  04        inr     b
04A9  26 00     mvi     h,$00
04AB  03        inx     b
04AC  15        dcr     d
04AD  00        nop
04AE  0D        dcr     c
04AF  02        stax    b
04B0  04        inr     b
04B1  26 13     mvi     h,$13
04B3  00        nop
04B4  01 0B 04  lxi     b,$040B
04B7  28        nop                  ;Note: Alternative opcode used
04B8  02        stax    b
04B9  10        nop                  ;Note: Alternative opcode used
04BA  20        nop                  ;Note: Alternative opcode used
04BB  30        nop                  ;Note: Alternative opcode used
04BC  13        inx     d
04BD  08        nop                  ;Note: Alternative opcode used
04BE  0B        dcx     b
04BF  13        inx     d
04C0  00        nop
04C1  08        nop                  ;Note: Alternative opcode used
04C2  49        mov     c,c
04C3  22 14 81  shld    $8114
04C6  42        mov     b,d
04C7  00        nop
04C8  42        mov     b,d
04C9  81        add     c
04CA  14        inr     d
04CB  22 49 08  shld    $0849
04CE  00        nop
04CF  00        nop
04D0  44        mov     b,h
04D1  AA        xra     d
04D2  10        nop                  ;Note: Alternative opcode used
04D3  88        adc     b
04D4  54        mov     d,h
04D5  22 10 AA  shld    $AA10
04D8  44        mov     b,h
04D9  22 54 88  shld    $8854
04DC  4A        mov     c,d
04DD  15        dcr     d
04DE  BE        cmp     m
04DF  3F        cmc
04E0  5E        mov     e,m
04E1  25        dcr     h
04E2  04        inr     b
04E3  FC 04 10  cm      $1004
04E6  FC 10 20  cm      $2010
04E9  FC 20 80  cm      $8020
04EC  FC 80 00  cm      $0080
04EF  FE 00     cpi     $00
04F1  24        inr     h
04F2  FE 12     cpi     $12
04F4  00        nop
04F5  FE 00     cpi     $00
04F7  48        mov     c,b
04F8  FE 90     cpi     $90
04FA  0F        rrc
04FB  0B        dcx     b
04FC  00        nop
04FD  29        dad     h
04FE  00        nop
04FF  00        nop
0500  01 07 01  lxi     b,$0107
0503  01 01 04  lxi     b,$0401
0506  0B        dcx     b
0507  01 06 03  lxi     b,$0306
050A  01 01 0B  lxi     b,$0B01
050D  09        dad     b
050E  02        stax    b
050F  08        nop                  ;Note: Alternative opcode used
0510  02        stax    b
0511  0B        dcx     b
0512  04        inr     b
0513  07        rlc
0514  0A        ldax    b
0515  05        dcr     b
0516  02        stax    b
0517  05        dcr     b
0518  04        inr     b
0519  06 07     mvi     b,$07
051B  08        nop                  ;Note: Alternative opcode used
051C  0A        ldax    b
051D  06 0A     mvi     b,$0A
051F  03        inx     b
0520  FF        rst     7
0521  0F        rrc
0522  FF        rst     7
0523  1F        rar
0524  FF        rst     7
0525  3F        cmc
0526  FF        rst     7
0527  7F        mov     a,a
0528  FF        rst     7
0529  FF        rst     7
052A  FC FF F8  cm      $F8FF
052D  FF        rst     7
052E  F0        rp
052F  FF        rst     7
0530  F0        rp
0531  FF        rst     7
0532  F0        rp
0533  FF        rst     7
0534  F0        rp
0535  FF        rst     7
0536  F0        rp
0537  FF        rst     7
0538  F0        rp
0539  FF        rst     7
053A  F0        rp
053B  FF        rst     7
053C  F8        rm
053D  FF        rst     7
053E  FC FF FF  cm      $FFFF
0541  FF        rst     7
0542  FF        rst     7
0543  FF        rst     7
0544  FF        rst     7
0545  7F        mov     a,a
0546  FF        rst     7
0547  3F        cmc
0548  FF        rst     7
0549  1F        rar
054A  FF        rst     7
054B  0F        rrc
054C  05        dcr     b
054D  10        nop                  ;Note: Alternative opcode used
054E  15        dcr     d
054F  30        nop                  ;Note: Alternative opcode used
0550  94        sub     h
0551  97        sub     a
0552  9A        sbb     d
0553  9D        sbb     l
0554  10        nop                  ;Note: Alternative opcode used
0555  05        dcr     b
0556  05        dcr     b
0557  10        nop                  ;Note: Alternative opcode used
0558  15        dcr     d
0559  10        nop                  ;Note: Alternative opcode used
055A  10        nop                  ;Note: Alternative opcode used
055B  05        dcr     b
055C  30        nop                  ;Note: Alternative opcode used
055D  10        nop                  ;Note: Alternative opcode used
055E  10        nop                  ;Note: Alternative opcode used
055F  10        nop                  ;Note: Alternative opcode used
0560  05        dcr     b
0561  15        dcr     d
0562  10        nop                  ;Note: Alternative opcode used
0563  05        dcr     b
0564  00        nop
0565  00        nop
0566  00        nop
0567  00        nop
0568  04        inr     b
0569  0C        inr     c
056A  1E 37     mvi     e,$37
056C  3E 7C     mvi     a,'|'
056E  74        mov     m,h
056F  7E        mov     a,m
0570  7E        mov     a,m
0571  74        mov     m,h
0572  7C        mov     a,h
0573  3E 37     mvi     a,$37
0575  1E 0C     mvi     e,$0C
0577  04        inr     b
0578  00        nop
0579  00        nop
057A  00        nop
057B  00        nop
057C  00        nop
057D  22 00 A5  shld    $A500
0580  40        mov     b,b
0581  08        nop                  ;Note: Alternative opcode used
0582  98        sbb     b
0583  3D        dcr     a
0584  B6        ora     m
0585  3C        inr     a
0586  36 1D     mvi     m,$1D
0588  10        nop                  ;Note: Alternative opcode used
0589  48        mov     c,b
058A  62        mov     h,d
058B  B6        ora     m
058C  1D        dcr     e
058D  98        sbb     b
058E  08        nop                  ;Note: Alternative opcode used
058F  42        mov     b,d
0590  90        sub     b
0591  08        nop                  ;Note: Alternative opcode used
0592  00        nop
0593  00        nop
0594  26 1F     mvi     h,$1F
0596  1A        ldax    d
0597  1B        dcx     d
0598  1A        ldax    d
0599  1A        ldax    d
059A  1B        dcx     d
059B  1F        rar
059C  1A        ldax    d
059D  1D        dcr     e
059E  1A        ldax    d
059F  1A        ldax    d
05A0  10        nop                  ;Note: Alternative opcode used
05A1  20        nop                  ;Note: Alternative opcode used
05A2  30        nop                  ;Note: Alternative opcode used
05A3  60        mov     h,b
05A4  50        mov     d,b
05A5  48        mov     c,b
05A6  48        mov     c,b
05A7  48        mov     c,b
05A8  40        mov     b,b
05A9  40        mov     b,b
05AA  40        mov     b,b
05AB  0F        rrc
05AC  0B        dcx     b
05AD  00        nop
05AE  18        nop                  ;Note: Alternative opcode used
05AF  12        stax    d
05B0  0F        rrc
05B1  00        nop
05B2  02        stax    b
05B3  04        inr     b
05B4  26 26     mvi     h,$26
05B6  08        nop                  ;Note: Alternative opcode used
05B7  0D        dcr     c
05B8  15        dcr     d
05B9  00        nop
05BA  03        inx     b
05BB  04        inr     b
05BC  11 12 0E  lxi     d,$0E12
05BF  2C        inr     l
05C0  68        mov     l,b
05C1  1D        dcr     e
05C2  0C        inr     c
05C3  2C        inr     l
05C4  20        nop                  ;Note: Alternative opcode used
05C5  1C        inr     e
05C6  0A        ldax    b
05C7  2C        inr     l
05C8  40        mov     b,b
05C9  1C        inr     e
05CA  08        nop                  ;Note: Alternative opcode used
05CB  2C        inr     l
05CC  00        nop
05CD  1C        inr     e
05CE  FF        rst     7
05CF  0E 2E     mvi     c,$2E
05D1  E0        rpo
05D2  1D        dcr     e
05D3  0C        inr     c
05D4  2E EA     mvi     l,$EA
05D6  1D        dcr     e
05D7  0A        ldax    b
05D8  2E F4     mvi     l,$F4
05DA  1D        dcr     e
05DB  08        nop                  ;Note: Alternative opcode used
05DC  2E 99     mvi     l,$99
05DE  1C        inr     e
05DF  FF        rst     7
05E0  27        daa
05E1  38        nop                  ;Note: Alternative opcode used
05E2  26 0C     mvi     h,$0C
05E4  18        nop                  ;Note: Alternative opcode used
05E5  12        stax    d
05E6  13        inx     d
05E7  04        inr     b
05E8  11 18 27  lxi     d,$2718
05EB  1D        dcr     e
05EC  1A        ldax    d
05ED  26 0F     mvi     h,$0F
05EF  0E 08     mvi     c,$08
05F1  0D        dcr     c
05F2  13        inx     d
05F3  12        stax    d
05F4  27        daa
05F5  1C        inr     e
05F6  1A        ldax    d
05F7  26 0F     mvi     h,$0F
05F9  0E 08     mvi     c,$08
05FB  0D        dcr     c
05FC  13        inx     d
05FD  12        stax    d
05FE  00        nop
05FF  00        nop
0600  00        nop
0601  1F        rar
0602  24        inr     h
0603  44        mov     b,h
0604  24        inr     h
0605  1F        rar
0606  00        nop
0607  00        nop
0608  00        nop
0609  7F        mov     a,a
060A  49        mov     c,c
060B  49        mov     c,c
060C  49        mov     c,c
060D  36 00     mvi     m,$00
060F  00        nop
0610  00        nop
0611  3E 41     mvi     a,'A'
0613  41        mov     b,c
0614  41        mov     b,c
0615  22 00 00  shld    $0000
0618  00        nop
0619  7F        mov     a,a
061A  41        mov     b,c
061B  41        mov     b,c
061C  41        mov     b,c
061D  3E 00     mvi     a,$00
061F  00        nop
0620  00        nop
0621  7F        mov     a,a
0622  49        mov     c,c
0623  49        mov     c,c
0624  49        mov     c,c
0625  41        mov     b,c
0626  00        nop
0627  00        nop
0628  00        nop
0629  7F        mov     a,a
062A  48        mov     c,b
062B  48        mov     c,b
062C  48        mov     c,b
062D  40        mov     b,b
062E  00        nop
062F  00        nop
0630  00        nop
0631  3E 41     mvi     a,'A'
0633  41        mov     b,c
0634  45        mov     b,l
0635  47        mov     b,a
0636  00        nop
0637  00        nop
0638  00        nop
0639  7F        mov     a,a
063A  08        nop                  ;Note: Alternative opcode used
063B  08        nop                  ;Note: Alternative opcode used
063C  08        nop                  ;Note: Alternative opcode used
063D  7F        mov     a,a
063E  00        nop
063F  00        nop
0640  00        nop
0641  00        nop
0642  41        mov     b,c
0643  7F        mov     a,a
0644  41        mov     b,c
0645  00        nop
0646  00        nop
0647  00        nop
0648  00        nop
0649  02        stax    b
064A  01 01 01  lxi     b,$0101
064D  7E        mov     a,m
064E  00        nop
064F  00        nop
0650  00        nop
0651  7F        mov     a,a
0652  08        nop                  ;Note: Alternative opcode used
0653  14        inr     d
0654  22 41 00  shld    $0041
0657  00        nop
0658  00        nop
0659  7F        mov     a,a
065A  01 01 01  lxi     b,$0101
065D  01 00 00  lxi     b,$0000
0660  00        nop
0661  7F        mov     a,a
0662  20        nop                  ;Note: Alternative opcode used
0663  18        nop                  ;Note: Alternative opcode used
0664  20        nop                  ;Note: Alternative opcode used
0665  7F        mov     a,a
0666  00        nop
0667  00        nop
0668  00        nop
0669  7F        mov     a,a
066A  10        nop                  ;Note: Alternative opcode used
066B  08        nop                  ;Note: Alternative opcode used
066C  04        inr     b
066D  7F        mov     a,a
066E  00        nop
066F  00        nop
0670  00        nop
0671  3E 41     mvi     a,'A'
0673  41        mov     b,c
0674  41        mov     b,c
0675  3E 00     mvi     a,$00
0677  00        nop
0678  00        nop
0679  7F        mov     a,a
067A  48        mov     c,b
067B  48        mov     c,b
067C  48        mov     c,b
067D  30        nop                  ;Note: Alternative opcode used
067E  00        nop
067F  00        nop
0680  00        nop
0681  3E 41     mvi     a,'A'
0683  45        mov     b,l
0684  42        mov     b,d
0685  3D        dcr     a
0686  00        nop
0687  00        nop
0688  00        nop
0689  7F        mov     a,a
068A  48        mov     c,b
068B  4C        mov     c,h
068C  4A        mov     c,d
068D  31 00 00  lxi     sp,$0000
0690  00        nop
0691  32 49 49  sta     $4949
0694  49        mov     c,c
0695  26 00     mvi     h,$00
0697  00        nop
0698  00        nop
0699  40        mov     b,b
069A  40        mov     b,b
069B  7F        mov     a,a
069C  40        mov     b,b
069D  40        mov     b,b
069E  00        nop
069F  00        nop
06A0  00        nop
06A1  7E        mov     a,m
06A2  01 01 01  lxi     b,$0101
06A5  7E        mov     a,m
06A6  00        nop
06A7  00        nop
06A8  00        nop
06A9  7C        mov     a,h
06AA  02        stax    b
06AB  01 02 7C  lxi     b,$7C02
06AE  00        nop
06AF  00        nop
06B0  00        nop
06B1  7F        mov     a,a
06B2  02        stax    b
06B3  0C        inr     c
06B4  02        stax    b
06B5  7F        mov     a,a
06B6  00        nop
06B7  00        nop
06B8  00        nop
06B9  63        mov     h,e
06BA  14        inr     d
06BB  08        nop                  ;Note: Alternative opcode used
06BC  14        inr     d
06BD  63        mov     h,e
06BE  00        nop
06BF  00        nop
06C0  00        nop
06C1  60        mov     h,b
06C2  10        nop                  ;Note: Alternative opcode used
06C3  0F        rrc
06C4  10        nop                  ;Note: Alternative opcode used
06C5  60        mov     h,b
06C6  00        nop
06C7  00        nop
06C8  00        nop
06C9  43        mov     b,e
06CA  45        mov     b,l
06CB  49        mov     c,c
06CC  51        mov     d,c
06CD  61        mov     h,c
06CE  00        nop
06CF  00        nop
06D0  00        nop
06D1  3E 45     mvi     a,'E'
06D3  49        mov     c,c
06D4  51        mov     d,c
06D5  3E 00     mvi     a,$00
06D7  00        nop
06D8  00        nop
06D9  00        nop
06DA  21 7F 01  lxi     h,$017F
06DD  00        nop
06DE  00        nop
06DF  00        nop
06E0  00        nop
06E1  23        inx     h
06E2  45        mov     b,l
06E3  49        mov     c,c
06E4  49        mov     c,c
06E5  31 00 00  lxi     sp,$0000
06E8  00        nop
06E9  42        mov     b,d
06EA  41        mov     b,c
06EB  49        mov     c,c
06EC  59        mov     e,c
06ED  66        mov     h,m
06EE  00        nop
06EF  00        nop
06F0  00        nop
06F1  0C        inr     c
06F2  14        inr     d
06F3  24        inr     h
06F4  7F        mov     a,a
06F5  04        inr     b
06F6  00        nop
06F7  00        nop
06F8  00        nop
06F9  72        mov     m,d
06FA  51        mov     d,c
06FB  51        mov     d,c
06FC  51        mov     d,c
06FD  4E        mov     c,m
06FE  00        nop
06FF  00        nop
0700  00        nop
0701  1E 29     mvi     e,$29
0703  49        mov     c,c
0704  49        mov     c,c
0705  46        mov     b,m
0706  00        nop
0707  00        nop
0708  00        nop
0709  40        mov     b,b
070A  47        mov     b,a
070B  48        mov     c,b
070C  50        mov     d,b
070D  60        mov     h,b
070E  00        nop
070F  00        nop
0710  00        nop
0711  36 49     mvi     m,'I'
0713  49        mov     c,c
0714  49        mov     c,c
0715  36 00     mvi     m,$00
0717  00        nop
0718  00        nop
0719  31 49 49  lxi     sp,$4949
071C  4A        mov     c,d
071D  3C        inr     a
071E  00        nop
071F  00        nop
0720  00        nop
0721  08        nop                  ;Note: Alternative opcode used
0722  14        inr     d
0723  22 41 00  shld    $0041
0726  00        nop
0727  00        nop
0728  00        nop
0729  00        nop
072A  41        mov     b,c
072B  22 14 08  shld    $0814
072E  00        nop
072F  00        nop
0730  00        nop
0731  00        nop
0732  00        nop
0733  00        nop
0734  00        nop
0735  00        nop
0736  00        nop
0737  00        nop
0738  00        nop
0739  14        inr     d
073A  14        inr     d
073B  14        inr     d
073C  14        inr     d
073D  14        inr     d
073E  00        nop
073F  00        nop
0740  00        nop
0741  22 14 7F  shld    $7F14
0744  14        inr     d
0745  22 00 00  shld    $0000
0748  00        nop
0749  03        inx     b
074A  04        inr     b
074B  78        mov     a,b
074C  04        inr     b
074D  03        inx     b
074E  00        nop
074F  00        nop
0750  24        inr     h
0751  1B        dcx     d
0752  26 0E     mvi     h,$0E
0754  11 26 1C  lxi     d,$1C26
0757  26 0F     mvi     h,$0F
0759  0B        dcx     b
075A  00        nop
075B  18        nop                  ;Note: Alternative opcode used
075C  04        inr     b
075D  11 12 25  lxi     d,$2512
0760  26 26     mvi     h,$26
0762  28        nop                  ;Note: Alternative opcode used
0763  1B        dcx     d
0764  26 0F     mvi     h,$0F
0766  0B        dcx     b
0767  00        nop
0768  18        nop                  ;Note: Alternative opcode used
0769  04        inr     b
076A  11 26 26  lxi     d,$2626
076D  1B        dcx     d
076E  26 02     mvi     h,$02
0770  0E 08     mvi     c,$08
0772  0D        dcr     c
0773  26 01     mvi     h,$01
0775  01 00 00  lxi     b,$0000
0778  01 00 02  lxi     b,$0200
077B  01 00 02  lxi     b,$0200
077E  01 00 60  lxi     b,$6000
0781  10        nop                  ;Note: Alternative opcode used
0782  0F        rrc
0783  10        nop                  ;Note: Alternative opcode used
0784  60        mov     h,b
0785  30        nop                  ;Note: Alternative opcode used
0786  18        nop                  ;Note: Alternative opcode used
0787  1A        ldax    d
0788  3D        dcr     a
0789  68        mov     l,b
078A  FC FC 68  cm      $68FC
078D  3D        dcr     a
078E  1A        ldax    d
078F  00        nop
0790  08        nop                  ;Note: Alternative opcode used
0791  0D        dcr     c
0792  12        stax    d
0793  04        inr     b
0794  11 13 26  lxi     d,$2613
0797  26 02     mvi     h,$02
0799  0E 08     mvi     c,$08
079B  0D        dcr     c
079C  0D        dcr     c
079D  2A 50 1F  lhld    $1F50
07A0  0A        ldax    b
07A1  2A 62 1F  lhld    $1F62
07A4  07        rlc
07A5  2A E1 1F  lhld    $1FE1
07A8  FF        rst     7
07A9  02        stax    b
07AA  11 04 03  lxi     d,$0304
07AD  08        nop                  ;Note: Alternative opcode used
07AE  13        inx     d
07AF  26 00     mvi     h,$00
07B1  60        mov     h,b
07B2  10        nop                  ;Note: Alternative opcode used
07B3  0F        rrc
07B4  10        nop                  ;Note: Alternative opcode used
07B5  60        mov     h,b
07B6  38        nop                  ;Note: Alternative opcode used
07B7  19        dad
07B8  3A 6D FA  lda     $FA6D
07BB  FA 6D 3A  jm      $3A6D
07BE  19        dad
07BF  00        nop
07C0  00        nop
07C1  20        nop                  ;Note: Alternative opcode used
07C2  40        mov     b,b
07C3  4D        mov     c,l
07C4  50        mov     d,b
07C5  20        nop                  ;Note: Alternative opcode used
07C6  00        nop
07C7  00        nop
07C8  00        nop
07C9  00        nop
07CA  00        nop
07CB  FF        rst     7
07CC  B8        cmp     b
07CD  FF        rst     7
07CE  80        add     b
07CF  1F        rar
07D0  10        nop                  ;Note: Alternative opcode used
07D1  97        sub     a
07D2  00        nop
07D3  80        add     b
07D4  1F        rar
07D5  00        nop
07D6  00        nop
07D7  01 D0 22  lxi     b,$22D0
07DA  20        nop                  ;Note: Alternative opcode used
07DB  1C        inr     e
07DC  10        nop                  ;Note: Alternative opcode used
07DD  94        sub     h
07DE  00        nop
07DF  20        nop                  ;Note: Alternative opcode used
07E0  1C        inr     e
07E1  28        nop                  ;Note: Alternative opcode used
07E2  1C        inr     e
07E3  26 0F     mvi     h,$0F
07E5  0B        dcx     b
07E6  00        nop
07E7  18        nop                  ;Note: Alternative opcode used
07E8  04        inr     b
07E9  11 12 26  lxi     d,$2612
07EC  1C        inr     e
07ED  26 02     mvi     h,$02
07EF  0E 08     mvi     c,$08
07F1  0D        dcr     c
07F2  12        stax    d
07F3  0F        rrc
07F4  14        inr     d
07F5  12        stax    d
07F6  07        rlc
07F7  26 00     mvi     h,$00
07F9  08        nop                  ;Note: Alternative opcode used
07FA  08        nop                  ;Note: Alternative opcode used
07FB  08        nop                  ;Note: Alternative opcode used
07FC  08        nop                  ;Note: Alternative opcode used
07FD  08        nop                  ;Note: Alternative opcode used
07FE  00        nop
07FF  00        nop
0800            end
