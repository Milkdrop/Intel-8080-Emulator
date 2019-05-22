0000            org     $0000
0000  AF        xra     a
0001  32 C1 20  sta     $20C1
0004  CD CF 01  call    $01CF
0007  3A 67 20  lda     $2067
000A  0F        rrc
000B  DA 72 08  jc      $0872
000E  CD 13 02  call    $0213
0011  CD CF 01  call    $01CF
0014  CD B1 00  call    $00B1
0017  CD D1 19  call    $19D1
001A  06 20     mvi     b,$20
001C  CD FA 18  call    $18FA
001F  CD 18 16  call    $1618
0022  CD 0A 19  call    $190A
0025  CD F3 15  call    $15F3
0028  CD 88 09  call    $0988
002B  3A 82 20  lda     $2082
002E  A7        ana     a
002F  CA EF 09  jz      $09EF
0032  CD 0E 17  call    $170E
0035  CD 35 09  call    $0935
0038  CD D8 08  call    $08D8
003B  CD 2C 17  call    $172C
003E  CD 59 0A  call    $0A59
0041  CA 49 08  jz      $0849
0044  06 04     mvi     b,$04
0046  CD FA 18  call    $18FA
0049  CD 75 17  call    $1775
004C  D3 06     out     $06
004E  CD 04 18  call    $1804
0051  C3 1F 08  jmp     $081F
0054  00        nop
0055  00        nop
0056  00        nop
0057  11 BA 1A  lxi     d,$1ABA
005A  CD F3 08  call    $08F3
005D  06 98     mvi     b,$98
005F  DB 01     in      $01
0061  0F        rrc
0062  0F        rrc
0063  DA 6D 08  jc      $086D
0066  0F        rrc
0067  DA 98 07  jc      $0798
006A  C3 7F 07  jmp     $077F
006D  3E 01     mvi     a,$01
006F  C3 9B 07  jmp     $079B
0072  CD 1A 02  call    $021A
0075  C3 14 08  jmp     $0814
0078  3A 08 20  lda     $2008
007B  47        mov     b,a
007C  2A 09 20  lhld    $2009
007F  EB        xchg
0080  C3 86 08  jmp     $0886
0083  00        nop
0084  00        nop
0085  00        nop
0086  3A 67 20  lda     $2067
0089  67        mov     h,a
008A  2E FC     mvi     l,$FC
008C  C9        ret
008D  21 11 2B  lxi     h,$2B11
0090  11 70 1B  lxi     d,$1B70
0093  0E 0E     mvi     c,$0E
0095  CD F3 08  call    $08F3
0098  3A 67 20  lda     $2067
009B  0F        rrc
009C  3E 1C     mvi     a,$1C
009E  21 11 37  lxi     h,$3711
00A1  D4 FF 08  cnc     $08FF
00A4  3E B0     mvi     a,$B0
00A6  32 C0 20  sta     $20C0
00A9  3A C0 20  lda     $20C0
00AC  A7        ana     a
00AD  C8        rz
00AE  E6 04     ani     $04
00B0  C2 BC 08  jnz     $08BC
00B3  CD CA 09  call    $09CA
00B6  CD 31 19  call    $1931
00B9  C3 A9 08  jmp     $08A9
00BC  06 20     mvi     b,$20
00BE  21 1C 27  lxi     h,$271C
00C1  3A 67 20  lda     $2067
00C4  0F        rrc
00C5  DA CB 08  jc      $08CB
00C8  21 1C 39  lxi     h,$391C
00CB  CD CB 14  call    $14CB
00CE  C3 A9 08  jmp     $08A9
00D1  DB 02     in      $02
00D3  E6 03     ani     $03
00D5  C6 03     adi     $03
00D7  C9        ret
00D8  3A 82 20  lda     $2082
00DB  FE 09     cpi     $09
00DD  D0        rnc
00DE  3E FB     mvi     a,$FB
00E0  32 7E 20  sta     $207E
00E3  C9        ret
00E4  3A CE 20  lda     $20CE
00E7  A7        ana     a
00E8  C0        rnz
00E9  21 1C 39  lxi     h,$391C
00EC  06 20     mvi     b,$20
00EE  C3 CB 14  jmp     $14CB
00F1  0E 03     mvi     c,$03
00F3  1A        ldax    d
00F4  D5        push    d
00F5  CD FF 08  call    $08FF
00F8  D1        pop     d
00F9  13        inx     d
00FA  0D        dcr     c
00FB  C2 F3 08  jnz     $08F3
00FE  C9        ret
00FF  11 00 1E  lxi     d,$1E00
0102  E5        push    h
0103  26 00     mvi     h,$00
0105  6F        mov     l,a
0106  29        dad     h
0107  29        dad     h
0108  29        dad     h
0109  19        dad
010A  EB        xchg
010B  E1        pop     h
010C  06 08     mvi     b,$08
010E  D3 06     out     $06
0110  C3 39 14  jmp     $1439
0113  3A 09 20  lda     $2009
0116  FE 78     cpi     'x'
0118  D0        rnc
0119  2A 91 20  lhld    $2091
011C  7D        mov     a,l
011D  B4        ora     h
011E  C2 29 09  jnz     $0929
0121  21 00 06  lxi     h,$0600
0124  3E 01     mvi     a,$01
0126  32 83 20  sta     $2083
0129  2B        dcx     h
012A  22 91 20  shld    $2091
012D  C9        ret
012E  CD 11 16  call    $1611
0131  2E FF     mvi     l,$FF
0133  7E        mov     a,m
0134  C9        ret
0135  CD 10 19  call    $1910
0138  2B        dcx     h
0139  2B        dcx     h
013A  7E        mov     a,m
013B  A7        ana     a
013C  C8        rz
013D  06 15     mvi     b,$15
013F  DB 02     in      $02
0141  E6 08     ani     $08
0143  CA 48 09  jz      $0948
0146  06 10     mvi     b,$10
0148  CD CA 09  call    $09CA
014B  23        inx     h
014C  7E        mov     a,m
014D  B8        cmp     b
014E  D8        rc
014F  CD 2E 09  call    $092E
0152  34        inr     m
0153  7E        mov     a,m
0154  F5        push    psw
0155  21 01 25  lxi     h,$2501
0158  24        inr     h
0159  24        inr     h
015A  3D        dcr     a
015B  C2 58 09  jnz     $0958
015E  06 10     mvi     b,$10
0160  11 60 1C  lxi     d,$1C60
0163  CD 39 14  call    $1439
0166  F1        pop     psw
0167  3C        inr     a
0168  CD 8B 1A  call    $1A8B
016B  CD 10 19  call    $1910
016E  2B        dcx     h
016F  2B        dcx     h
0170  36 00     mvi     m,$00
0172  3E FF     mvi     a,$FF
0174  32 99 20  sta     $2099
0177  06 10     mvi     b,$10
0179  C3 FA 18  jmp     $18FA
017C  21 A0 1D  lxi     h,$1DA0
017F  FE 02     cpi     $02
0181  D8        rc
0182  23        inx     h
0183  FE 04     cpi     $04
0185  D8        rc
0186  23        inx     h
0187  C9        ret
0188  CD CA 09  call    $09CA
018B  3A F1 20  lda     $20F1
018E  A7        ana     a
018F  C8        rz
0190  AF        xra     a
0191  32 F1 20  sta     $20F1
0194  E5        push    h
0195  2A F2 20  lhld    $20F2
0198  EB        xchg
0199  E1        pop     h
019A  7E        mov     a,m
019B  83        add     e
019C  27        daa
019D  77        mov     m,a
019E  5F        mov     e,a
019F  23        inx     h
01A0  7E        mov     a,m
01A1  8A        adc     d
01A2  27        daa
01A3  77        mov     m,a
01A4  57        mov     d,a
01A5  23        inx     h
01A6  7E        mov     a,m
01A7  23        inx     h
01A8  66        mov     h,m
01A9  6F        mov     l,a
01AA  C3 AD 09  jmp     $09AD
01AD  7A        mov     a,d
01AE  CD B2 09  call    $09B2
01B1  7B        mov     a,e
01B2  D5        push    d
01B3  F5        push    psw
01B4  0F        rrc
01B5  0F        rrc
01B6  0F        rrc
01B7  0F        rrc
01B8  E6 0F     ani     $0F
01BA  CD C5 09  call    $09C5
01BD  F1        pop     psw
01BE  E6 0F     ani     $0F
01C0  CD C5 09  call    $09C5
01C3  D1        pop     d
01C4  C9        ret
01C5  C6 1A     adi     $1A
01C7  C3 FF 08  jmp     $08FF
01CA  3A 67 20  lda     $2067
01CD  0F        rrc
01CE  21 F8 20  lxi     h,$20F8
01D1  D8        rc
01D2  21 FC 20  lxi     h,$20FC
01D5  C9        ret
01D6  21 02 24  lxi     h,$2402
01D9  36 00     mvi     m,$00
01DB  23        inx     h
01DC  7D        mov     a,l
01DD  E6 1F     ani     $1F
01DF  FE 1C     cpi     $1C
01E1  DA E8 09  jc      $09E8
01E4  11 06 00  lxi     d,$0006
01E7  19        dad
01E8  7C        mov     a,h
01E9  FE 40     cpi     '@'
01EB  DA D9 09  jc      $09D9
01EE  C9        ret
01EF  CD 3C 0A  call    $0A3C
01F2  AF        xra     a
01F3  32 E9 20  sta     $20E9
01F6  CD D6 09  call    $09D6
01F9  3A 67 20  lda     $2067
01FC  F5        push    psw
01FD  CD E4 01  call    $01E4
0200  F1        pop     psw
0201  32 67 20  sta     $2067
0204  3A 67 20  lda     $2067
0207  67        mov     h,a
0208  E5        push    h
0209  2E FE     mvi     l,$FE
020B  7E        mov     a,m
020C  E6 07     ani     $07
020E  3C        inr     a
020F  77        mov     m,a
0210  21 A2 1D  lxi     h,$1DA2
0213  23        inx     h
0214  3D        dcr     a
0215  C2 13 0A  jnz     $0A13
0218  7E        mov     a,m
0219  E1        pop     h
021A  2E FC     mvi     l,$FC
021C  77        mov     m,a
021D  23        inx     h
021E  36 38     mvi     m,$38
0220  7C        mov     a,h
0221  0F        rrc
0222  DA 33 0A  jc      $0A33
0225  3E 21     mvi     a,$21
0227  32 98 20  sta     $2098
022A  CD F5 01  call    $01F5
022D  CD 04 19  call    $1904
0230  C3 04 08  jmp     $0804
0233  CD EF 01  call    $01EF
0236  CD C0 01  call    $01C0
0239  C3 04 08  jmp     $0804
023C  CD 59 0A  call    $0A59
023F  C2 52 0A  jnz     $0A52
0242  3E 30     mvi     a,$30
0244  32 C0 20  sta     $20C0
0247  3A C0 20  lda     $20C0
024A  A7        ana     a
024B  C8        rz
024C  CD 59 0A  call    $0A59
024F  CA 47 0A  jz      $0A47
0252  CD 59 0A  call    $0A59
0255  C2 52 0A  jnz     $0A52
0258  C9        ret
0259  3A 15 20  lda     $2015
025C  FE FF     cpi     $FF
025E  C9        ret
025F  3A EF 20  lda     $20EF
0262  A7        ana     a
0263  CA 7C 0A  jz      $0A7C
0266  48        mov     c,b
0267  06 08     mvi     b,$08
0269  CD FA 18  call    $18FA
026C  41        mov     b,c
026D  78        mov     a,b
026E  CD 7C 09  call    $097C
0271  7E        mov     a,m
0272  21 F3 20  lxi     h,$20F3
0275  36 00     mvi     m,$00
0277  2B        dcx     h
0278  77        mov     m,a
0279  2B        dcx     h
027A  36 01     mvi     m,$01
027C  21 62 20  lxi     h,$2062
027F  C9        ret
0280  3E 02     mvi     a,$02
0282  32 C1 20  sta     $20C1
0285  D3 06     out     $06
0287  3A CB 20  lda     $20CB
028A  A7        ana     a
028B  CA 85 0A  jz      $0A85
028E  AF        xra     a
028F  32 C1 20  sta     $20C1
0292  C9        ret
0293  D5        push    d
0294  1A        ldax    d
0295  CD FF 08  call    $08FF
0298  D1        pop     d
0299  3E 07     mvi     a,$07
029B  32 C0 20  sta     $20C0
029E  3A C0 20  lda     $20C0
02A1  3D        dcr     a
02A2  C2 9E 0A  jnz     $0A9E
02A5  13        inx     d
02A6  0D        dcr     c
02A7  C2 93 0A  jnz     $0A93
02AA  C9        ret
02AB  21 50 20  lxi     h,$2050
02AE  C3 4B 02  jmp     $024B
02B1  3E 40     mvi     a,'@'
02B3  C3 D7 0A  jmp     $0AD7
02B6  3E 80     mvi     a,$80
02B8  C3 D7 0A  jmp     $0AD7
02BB  E1        pop     h
02BC  C3 72 00  jmp     $0072
02BF  3A C1 20  lda     $20C1
02C2  0F        rrc
02C3  DA BB 0A  jc      $0ABB
02C6  0F        rrc
02C7  DA 68 18  jc      $1868
02CA  0F        rrc
02CB  DA AB 0A  jc      $0AAB
02CE  C9        ret
02CF  21 14 2B  lxi     h,$2B14
02D2  0E 0F     mvi     c,$0F
02D4  C3 93 0A  jmp     $0A93
02D7  32 C0 20  sta     $20C0
02DA  3A C0 20  lda     $20C0
02DD  A7        ana     a
02DE  C2 DA 0A  jnz     $0ADA
02E1  C9        ret
02E2  21 C2 20  lxi     h,$20C2
02E5  06 0C     mvi     b,$0C
02E7  C3 32 1A  jmp     $1A32
02EA  AF        xra     a
02EB  D3 03     out     $03
02ED  D3 05     out     $05
02EF  CD 82 19  call    $1982
02F2  FB        ei
02F3  CD B1 0A  call    $0AB1
02F6  3A EC 20  lda     $20EC
02F9  A7        ana     a
02FA  21 17 30  lxi     h,$3017
02FD  0E 04     mvi     c,$04
02FF  C2 E8 0B  jnz     $0BE8
0302  11 FA 1C  lxi     d,$1CFA
0305  CD 93 0A  call    $0A93
0308  11 AF 1D  lxi     d,$1DAF
030B  CD CF 0A  call    $0ACF
030E  CD B1 0A  call    $0AB1
0311  CD 15 18  call    $1815
0314  CD B6 0A  call    $0AB6
0317  3A EC 20  lda     $20EC
031A  A7        ana     a
031B  C2 4A 0B  jnz     $0B4A
031E  11 95 1A  lxi     d,$1A95
0321  CD E2 0A  call    $0AE2
0324  CD 80 0A  call    $0A80
0327  11 B0 1B  lxi     d,$1BB0
032A  CD E2 0A  call    $0AE2
032D  CD 80 0A  call    $0A80
0330  CD B1 0A  call    $0AB1
0333  11 C9 1F  lxi     d,$1FC9
0336  CD E2 0A  call    $0AE2
0339  CD 80 0A  call    $0A80
033C  CD B1 0A  call    $0AB1
033F  21 B7 33  lxi     h,$33B7
0342  06 0A     mvi     b,$0A
0344  CD CB 14  call    $14CB
0347  CD B6 0A  call    $0AB6
034A  CD D6 09  call    $09D6
034D  3A FF 21  lda     $21FF
0350  A7        ana     a
0351  C2 5D 0B  jnz     $0B5D
0354  CD D1 08  call    $08D1
0357  32 FF 21  sta     $21FF
035A  CD 7F 1A  call    $1A7F
035D  CD E4 01  call    $01E4
0360  CD C0 01  call    $01C0
0363  CD EF 01  call    $01EF
0366  CD 1A 02  call    $021A
0369  3E 01     mvi     a,$01
036B  32 C1 20  sta     $20C1
036E  CD CF 01  call    $01CF
0371  CD 18 16  call    $1618
0374  CD F1 0B  call    $0BF1
0377  D3 06     out     $06
0379  CD 59 0A  call    $0A59
037C  CA 71 0B  jz      $0B71
037F  AF        xra     a
0380  32 25 20  sta     $2025
0383  CD 59 0A  call    $0A59
0386  C2 83 0B  jnz     $0B83
0389  AF        xra     a
038A  32 C1 20  sta     $20C1
038D  CD B1 0A  call    $0AB1
0390  CD 88 19  call    $1988
0393  0E 0C     mvi     c,$0C
0395  21 11 2C  lxi     h,$2C11
0398  11 90 1F  lxi     d,$1F90
039B  CD F3 08  call    $08F3
039E  3A EC 20  lda     $20EC
03A1  FE 00     cpi     $00
03A3  C2 AE 0B  jnz     $0BAE
03A6  21 11 33  lxi     h,$3311
03A9  3E 02     mvi     a,$02
03AB  CD FF 08  call    $08FF
03AE  01 9C 1F  lxi     b,$1F9C
03B1  CD 56 18  call    $1856
03B4  CD 4C 18  call    $184C
03B7  DB 02     in      $02
03B9  07        rlc
03BA  DA C3 0B  jc      $0BC3
03BD  01 A0 1F  lxi     b,$1FA0
03C0  CD 3A 18  call    $183A
03C3  CD B6 0A  call    $0AB6
03C6  3A EC 20  lda     $20EC
03C9  FE 00     cpi     $00
03CB  C2 DA 0B  jnz     $0BDA
03CE  11 D5 1F  lxi     d,$1FD5
03D1  CD E2 0A  call    $0AE2
03D4  CD 80 0A  call    $0A80
03D7  CD 9E 18  call    $189E
03DA  21 EC 20  lxi     h,$20EC
03DD  7E        mov     a,m
03DE  3C        inr     a
03DF  E6 01     ani     $01
03E1  77        mov     m,a
03E2  CD D6 09  call    $09D6
03E5  C3 DF 18  jmp     $18DF
03E8  11 AB 1D  lxi     d,$1DAB
03EB  CD 93 0A  call    $0A93
03EE  C3 0B 0B  jmp     $0B0B
03F1  CD 0A 19  call    $190A
03F4  C3 9A 19  jmp     $199A
03F7  13        inx     d
03F8  00        nop
03F9  08        nop                  ;Note: Alternative opcode used
03FA  13        inx     d
03FB  0E 26     mvi     c,$26
03FD  02        stax    b
03FE  0E 0F     mvi     c,$0F
0400  00        nop
0401  00        nop
0402  00        nop
0403  00        nop
0404  00        nop
0405  00        nop
0406  00        nop
0407  00        nop
0408  00        nop
0409  00        nop
040A  00        nop
040B  00        nop
040C  00        nop
040D  00        nop
040E  00        nop
040F  00        nop
0410  00        nop
0411  00        nop
0412  00        nop
0413  00        nop
0414  00        nop
0415  00        nop
0416  00        nop
0417  00        nop
0418  00        nop
0419  00        nop
041A  00        nop
041B  00        nop
041C  00        nop
041D  00        nop
041E  00        nop
041F  00        nop
0420  00        nop
0421  00        nop
0422  00        nop
0423  00        nop
0424  00        nop
0425  00        nop
0426  00        nop
0427  00        nop
0428  00        nop
0429  00        nop
042A  00        nop
042B  00        nop
042C  00        nop
042D  00        nop
042E  00        nop
042F  00        nop
0430  00        nop
0431  00        nop
0432  00        nop
0433  00        nop
0434  00        nop
0435  00        nop
0436  00        nop
0437  00        nop
0438  00        nop
0439  00        nop
043A  00        nop
043B  00        nop
043C  00        nop
043D  00        nop
043E  00        nop
043F  00        nop
0440  00        nop
0441  00        nop
0442  00        nop
0443  00        nop
0444  00        nop
0445  00        nop
0446  00        nop
0447  00        nop
0448  00        nop
0449  00        nop
044A  00        nop
044B  00        nop
044C  00        nop
044D  00        nop
044E  00        nop
044F  00        nop
0450  00        nop
0451  00        nop
0452  00        nop
0453  00        nop
0454  00        nop
0455  00        nop
0456  00        nop
0457  00        nop
0458  00        nop
0459  00        nop
045A  00        nop
045B  00        nop
045C  00        nop
045D  00        nop
045E  00        nop
045F  00        nop
0460  00        nop
0461  00        nop
0462  00        nop
0463  00        nop
0464  00        nop
0465  00        nop
0466  00        nop
0467  00        nop
0468  00        nop
0469  00        nop
046A  00        nop
046B  00        nop
046C  00        nop
046D  00        nop
046E  00        nop
046F  00        nop
0470  00        nop
0471  00        nop
0472  00        nop
0473  00        nop
0474  00        nop
0475  00        nop
0476  00        nop
0477  00        nop
0478  00        nop
0479  00        nop
047A  00        nop
047B  00        nop
047C  00        nop
047D  00        nop
047E  00        nop
047F  00        nop
0480  00        nop
0481  00        nop
0482  00        nop
0483  00        nop
0484  00        nop
0485  00        nop
0486  00        nop
0487  00        nop
0488  00        nop
0489  00        nop
048A  00        nop
048B  00        nop
048C  00        nop
048D  00        nop
048E  00        nop
048F  00        nop
0490  00        nop
0491  00        nop
0492  00        nop
0493  00        nop
0494  00        nop
0495  00        nop
0496  00        nop
0497  00        nop
0498  00        nop
0499  00        nop
049A  00        nop
049B  00        nop
049C  00        nop
049D  00        nop
049E  00        nop
049F  00        nop
04A0  00        nop
04A1  00        nop
04A2  00        nop
04A3  00        nop
04A4  00        nop
04A5  00        nop
04A6  00        nop
04A7  00        nop
04A8  00        nop
04A9  00        nop
04AA  00        nop
04AB  00        nop
04AC  00        nop
04AD  00        nop
04AE  00        nop
04AF  00        nop
04B0  00        nop
04B1  00        nop
04B2  00        nop
04B3  00        nop
04B4  00        nop
04B5  00        nop
04B6  00        nop
04B7  00        nop
04B8  00        nop
04B9  00        nop
04BA  00        nop
04BB  00        nop
04BC  00        nop
04BD  00        nop
04BE  00        nop
04BF  00        nop
04C0  00        nop
04C1  00        nop
04C2  00        nop
04C3  00        nop
04C4  00        nop
04C5  00        nop
04C6  00        nop
04C7  00        nop
04C8  00        nop
04C9  00        nop
04CA  00        nop
04CB  00        nop
04CC  00        nop
04CD  00        nop
04CE  00        nop
04CF  00        nop
04D0  00        nop
04D1  00        nop
04D2  00        nop
04D3  00        nop
04D4  00        nop
04D5  00        nop
04D6  00        nop
04D7  00        nop
04D8  00        nop
04D9  00        nop
04DA  00        nop
04DB  00        nop
04DC  00        nop
04DD  00        nop
04DE  00        nop
04DF  00        nop
04E0  00        nop
04E1  00        nop
04E2  00        nop
04E3  00        nop
04E4  00        nop
04E5  00        nop
04E6  00        nop
04E7  00        nop
04E8  00        nop
04E9  00        nop
04EA  00        nop
04EB  00        nop
04EC  00        nop
04ED  00        nop
04EE  00        nop
04EF  00        nop
04F0  00        nop
04F1  00        nop
04F2  00        nop
04F3  00        nop
04F4  00        nop
04F5  00        nop
04F6  00        nop
04F7  00        nop
04F8  00        nop
04F9  00        nop
04FA  00        nop
04FB  00        nop
04FC  00        nop
04FD  00        nop
04FE  00        nop
04FF  00        nop
0500  00        nop
0501  00        nop
0502  00        nop
0503  00        nop
0504  00        nop
0505  00        nop
0506  00        nop
0507  00        nop
0508  00        nop
0509  00        nop
050A  00        nop
050B  00        nop
050C  00        nop
050D  00        nop
050E  00        nop
050F  00        nop
0510  00        nop
0511  00        nop
0512  00        nop
0513  00        nop
0514  00        nop
0515  00        nop
0516  00        nop
0517  00        nop
0518  00        nop
0519  00        nop
051A  00        nop
051B  00        nop
051C  00        nop
051D  00        nop
051E  00        nop
051F  00        nop
0520  00        nop
0521  00        nop
0522  00        nop
0523  00        nop
0524  00        nop
0525  00        nop
0526  00        nop
0527  00        nop
0528  00        nop
0529  00        nop
052A  00        nop
052B  00        nop
052C  00        nop
052D  00        nop
052E  00        nop
052F  00        nop
0530  00        nop
0531  00        nop
0532  00        nop
0533  00        nop
0534  00        nop
0535  00        nop
0536  00        nop
0537  00        nop
0538  00        nop
0539  00        nop
053A  00        nop
053B  00        nop
053C  00        nop
053D  00        nop
053E  00        nop
053F  00        nop
0540  00        nop
0541  00        nop
0542  00        nop
0543  00        nop
0544  00        nop
0545  00        nop
0546  00        nop
0547  00        nop
0548  00        nop
0549  00        nop
054A  00        nop
054B  00        nop
054C  00        nop
054D  00        nop
054E  00        nop
054F  00        nop
0550  00        nop
0551  00        nop
0552  00        nop
0553  00        nop
0554  00        nop
0555  00        nop
0556  00        nop
0557  00        nop
0558  00        nop
0559  00        nop
055A  00        nop
055B  00        nop
055C  00        nop
055D  00        nop
055E  00        nop
055F  00        nop
0560  00        nop
0561  00        nop
0562  00        nop
0563  00        nop
0564  00        nop
0565  00        nop
0566  00        nop
0567  00        nop
0568  00        nop
0569  00        nop
056A  00        nop
056B  00        nop
056C  00        nop
056D  00        nop
056E  00        nop
056F  00        nop
0570  00        nop
0571  00        nop
0572  00        nop
0573  00        nop
0574  00        nop
0575  00        nop
0576  00        nop
0577  00        nop
0578  00        nop
0579  00        nop
057A  00        nop
057B  00        nop
057C  00        nop
057D  00        nop
057E  00        nop
057F  00        nop
0580  00        nop
0581  00        nop
0582  00        nop
0583  00        nop
0584  00        nop
0585  00        nop
0586  00        nop
0587  00        nop
0588  00        nop
0589  00        nop
058A  00        nop
058B  00        nop
058C  00        nop
058D  00        nop
058E  00        nop
058F  00        nop
0590  00        nop
0591  00        nop
0592  00        nop
0593  00        nop
0594  00        nop
0595  00        nop
0596  00        nop
0597  00        nop
0598  00        nop
0599  00        nop
059A  00        nop
059B  00        nop
059C  00        nop
059D  00        nop
059E  00        nop
059F  00        nop
05A0  00        nop
05A1  00        nop
05A2  00        nop
05A3  00        nop
05A4  00        nop
05A5  00        nop
05A6  00        nop
05A7  00        nop
05A8  00        nop
05A9  00        nop
05AA  00        nop
05AB  00        nop
05AC  00        nop
05AD  00        nop
05AE  00        nop
05AF  00        nop
05B0  00        nop
05B1  00        nop
05B2  00        nop
05B3  00        nop
05B4  00        nop
05B5  00        nop
05B6  00        nop
05B7  00        nop
05B8  00        nop
05B9  00        nop
05BA  00        nop
05BB  00        nop
05BC  00        nop
05BD  00        nop
05BE  00        nop
05BF  00        nop
05C0  00        nop
05C1  00        nop
05C2  00        nop
05C3  00        nop
05C4  00        nop
05C5  00        nop
05C6  00        nop
05C7  00        nop
05C8  00        nop
05C9  00        nop
05CA  00        nop
05CB  00        nop
05CC  00        nop
05CD  00        nop
05CE  00        nop
05CF  00        nop
05D0  00        nop
05D1  00        nop
05D2  00        nop
05D3  00        nop
05D4  00        nop
05D5  00        nop
05D6  00        nop
05D7  00        nop
05D8  00        nop
05D9  00        nop
05DA  00        nop
05DB  00        nop
05DC  00        nop
05DD  00        nop
05DE  00        nop
05DF  00        nop
05E0  00        nop
05E1  00        nop
05E2  00        nop
05E3  00        nop
05E4  00        nop
05E5  00        nop
05E6  00        nop
05E7  00        nop
05E8  00        nop
05E9  00        nop
05EA  00        nop
05EB  00        nop
05EC  00        nop
05ED  00        nop
05EE  00        nop
05EF  00        nop
05F0  00        nop
05F1  00        nop
05F2  00        nop
05F3  00        nop
05F4  00        nop
05F5  00        nop
05F6  00        nop
05F7  00        nop
05F8  00        nop
05F9  00        nop
05FA  00        nop
05FB  00        nop
05FC  00        nop
05FD  00        nop
05FE  00        nop
05FF  00        nop
0600  00        nop
0601  00        nop
0602  00        nop
0603  00        nop
0604  00        nop
0605  00        nop
0606  00        nop
0607  00        nop
0608  00        nop
0609  00        nop
060A  00        nop
060B  00        nop
060C  00        nop
060D  00        nop
060E  00        nop
060F  00        nop
0610  00        nop
0611  00        nop
0612  00        nop
0613  00        nop
0614  00        nop
0615  00        nop
0616  00        nop
0617  00        nop
0618  00        nop
0619  00        nop
061A  00        nop
061B  00        nop
061C  00        nop
061D  00        nop
061E  00        nop
061F  00        nop
0620  00        nop
0621  00        nop
0622  00        nop
0623  00        nop
0624  00        nop
0625  00        nop
0626  00        nop
0627  00        nop
0628  00        nop
0629  00        nop
062A  00        nop
062B  00        nop
062C  00        nop
062D  00        nop
062E  00        nop
062F  00        nop
0630  00        nop
0631  00        nop
0632  00        nop
0633  00        nop
0634  00        nop
0635  00        nop
0636  00        nop
0637  00        nop
0638  00        nop
0639  00        nop
063A  00        nop
063B  00        nop
063C  00        nop
063D  00        nop
063E  00        nop
063F  00        nop
0640  00        nop
0641  00        nop
0642  00        nop
0643  00        nop
0644  00        nop
0645  00        nop
0646  00        nop
0647  00        nop
0648  00        nop
0649  00        nop
064A  00        nop
064B  00        nop
064C  00        nop
064D  00        nop
064E  00        nop
064F  00        nop
0650  00        nop
0651  00        nop
0652  00        nop
0653  00        nop
0654  00        nop
0655  00        nop
0656  00        nop
0657  00        nop
0658  00        nop
0659  00        nop
065A  00        nop
065B  00        nop
065C  00        nop
065D  00        nop
065E  00        nop
065F  00        nop
0660  00        nop
0661  00        nop
0662  00        nop
0663  00        nop
0664  00        nop
0665  00        nop
0666  00        nop
0667  00        nop
0668  00        nop
0669  00        nop
066A  00        nop
066B  00        nop
066C  00        nop
066D  00        nop
066E  00        nop
066F  00        nop
0670  00        nop
0671  00        nop
0672  00        nop
0673  00        nop
0674  00        nop
0675  00        nop
0676  00        nop
0677  00        nop
0678  00        nop
0679  00        nop
067A  00        nop
067B  00        nop
067C  00        nop
067D  00        nop
067E  00        nop
067F  00        nop
0680  00        nop
0681  00        nop
0682  00        nop
0683  00        nop
0684  00        nop
0685  00        nop
0686  00        nop
0687  00        nop
0688  00        nop
0689  00        nop
068A  00        nop
068B  00        nop
068C  00        nop
068D  00        nop
068E  00        nop
068F  00        nop
0690  00        nop
0691  00        nop
0692  00        nop
0693  00        nop
0694  00        nop
0695  00        nop
0696  00        nop
0697  00        nop
0698  00        nop
0699  00        nop
069A  00        nop
069B  00        nop
069C  00        nop
069D  00        nop
069E  00        nop
069F  00        nop
06A0  00        nop
06A1  00        nop
06A2  00        nop
06A3  00        nop
06A4  00        nop
06A5  00        nop
06A6  00        nop
06A7  00        nop
06A8  00        nop
06A9  00        nop
06AA  00        nop
06AB  00        nop
06AC  00        nop
06AD  00        nop
06AE  00        nop
06AF  00        nop
06B0  00        nop
06B1  00        nop
06B2  00        nop
06B3  00        nop
06B4  00        nop
06B5  00        nop
06B6  00        nop
06B7  00        nop
06B8  00        nop
06B9  00        nop
06BA  00        nop
06BB  00        nop
06BC  00        nop
06BD  00        nop
06BE  00        nop
06BF  00        nop
06C0  00        nop
06C1  00        nop
06C2  00        nop
06C3  00        nop
06C4  00        nop
06C5  00        nop
06C6  00        nop
06C7  00        nop
06C8  00        nop
06C9  00        nop
06CA  00        nop
06CB  00        nop
06CC  00        nop
06CD  00        nop
06CE  00        nop
06CF  00        nop
06D0  00        nop
06D1  00        nop
06D2  00        nop
06D3  00        nop
06D4  00        nop
06D5  00        nop
06D6  00        nop
06D7  00        nop
06D8  00        nop
06D9  00        nop
06DA  00        nop
06DB  00        nop
06DC  00        nop
06DD  00        nop
06DE  00        nop
06DF  00        nop
06E0  00        nop
06E1  00        nop
06E2  00        nop
06E3  00        nop
06E4  00        nop
06E5  00        nop
06E6  00        nop
06E7  00        nop
06E8  00        nop
06E9  00        nop
06EA  00        nop
06EB  00        nop
06EC  00        nop
06ED  00        nop
06EE  00        nop
06EF  00        nop
06F0  00        nop
06F1  00        nop
06F2  00        nop
06F3  00        nop
06F4  00        nop
06F5  00        nop
06F6  00        nop
06F7  00        nop
06F8  00        nop
06F9  00        nop
06FA  00        nop
06FB  00        nop
06FC  00        nop
06FD  00        nop
06FE  00        nop
06FF  00        nop
0700  00        nop
0701  00        nop
0702  00        nop
0703  00        nop
0704  00        nop
0705  00        nop
0706  00        nop
0707  00        nop
0708  00        nop
0709  00        nop
070A  00        nop
070B  00        nop
070C  00        nop
070D  00        nop
070E  00        nop
070F  00        nop
0710  00        nop
0711  00        nop
0712  00        nop
0713  00        nop
0714  00        nop
0715  00        nop
0716  00        nop
0717  00        nop
0718  00        nop
0719  00        nop
071A  00        nop
071B  00        nop
071C  00        nop
071D  00        nop
071E  00        nop
071F  00        nop
0720  00        nop
0721  00        nop
0722  00        nop
0723  00        nop
0724  00        nop
0725  00        nop
0726  00        nop
0727  00        nop
0728  00        nop
0729  00        nop
072A  00        nop
072B  00        nop
072C  00        nop
072D  00        nop
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
0739  00        nop
073A  00        nop
073B  00        nop
073C  00        nop
073D  00        nop
073E  00        nop
073F  00        nop
0740  00        nop
0741  00        nop
0742  00        nop
0743  00        nop
0744  00        nop
0745  00        nop
0746  00        nop
0747  00        nop
0748  00        nop
0749  00        nop
074A  00        nop
074B  00        nop
074C  00        nop
074D  00        nop
074E  00        nop
074F  00        nop
0750  00        nop
0751  00        nop
0752  00        nop
0753  00        nop
0754  00        nop
0755  00        nop
0756  00        nop
0757  00        nop
0758  00        nop
0759  00        nop
075A  00        nop
075B  00        nop
075C  00        nop
075D  00        nop
075E  00        nop
075F  00        nop
0760  00        nop
0761  00        nop
0762  00        nop
0763  00        nop
0764  00        nop
0765  00        nop
0766  00        nop
0767  00        nop
0768  00        nop
0769  00        nop
076A  00        nop
076B  00        nop
076C  00        nop
076D  00        nop
076E  00        nop
076F  00        nop
0770  00        nop
0771  00        nop
0772  00        nop
0773  00        nop
0774  00        nop
0775  00        nop
0776  00        nop
0777  00        nop
0778  00        nop
0779  00        nop
077A  00        nop
077B  00        nop
077C  00        nop
077D  00        nop
077E  00        nop
077F  00        nop
0780  00        nop
0781  00        nop
0782  00        nop
0783  00        nop
0784  00        nop
0785  00        nop
0786  00        nop
0787  00        nop
0788  00        nop
0789  00        nop
078A  00        nop
078B  00        nop
078C  00        nop
078D  00        nop
078E  00        nop
078F  00        nop
0790  00        nop
0791  00        nop
0792  00        nop
0793  00        nop
0794  00        nop
0795  00        nop
0796  00        nop
0797  00        nop
0798  00        nop
0799  00        nop
079A  00        nop
079B  00        nop
079C  00        nop
079D  00        nop
079E  00        nop
079F  00        nop
07A0  00        nop
07A1  00        nop
07A2  00        nop
07A3  00        nop
07A4  00        nop
07A5  00        nop
07A6  00        nop
07A7  00        nop
07A8  00        nop
07A9  00        nop
07AA  00        nop
07AB  00        nop
07AC  00        nop
07AD  00        nop
07AE  00        nop
07AF  00        nop
07B0  00        nop
07B1  00        nop
07B2  00        nop
07B3  00        nop
07B4  00        nop
07B5  00        nop
07B6  00        nop
07B7  00        nop
07B8  00        nop
07B9  00        nop
07BA  00        nop
07BB  00        nop
07BC  00        nop
07BD  00        nop
07BE  00        nop
07BF  00        nop
07C0  00        nop
07C1  00        nop
07C2  00        nop
07C3  00        nop
07C4  00        nop
07C5  00        nop
07C6  00        nop
07C7  00        nop
07C8  00        nop
07C9  00        nop
07CA  00        nop
07CB  00        nop
07CC  00        nop
07CD  00        nop
07CE  00        nop
07CF  00        nop
07D0  00        nop
07D1  00        nop
07D2  00        nop
07D3  00        nop
07D4  00        nop
07D5  00        nop
07D6  00        nop
07D7  00        nop
07D8  00        nop
07D9  00        nop
07DA  00        nop
07DB  00        nop
07DC  00        nop
07DD  00        nop
07DE  00        nop
07DF  00        nop
07E0  00        nop
07E1  00        nop
07E2  00        nop
07E3  00        nop
07E4  00        nop
07E5  00        nop
07E6  00        nop
07E7  00        nop
07E8  00        nop
07E9  00        nop
07EA  00        nop
07EB  00        nop
07EC  00        nop
07ED  00        nop
07EE  00        nop
07EF  00        nop
07F0  00        nop
07F1  00        nop
07F2  00        nop
07F3  00        nop
07F4  00        nop
07F5  00        nop
07F6  00        nop
07F7  00        nop
07F8  00        nop
07F9  00        nop
07FA  00        nop
07FB  00        nop
07FC  00        nop
07FD  00        nop
07FE  00        nop
07FF  00        nop
0800            end
