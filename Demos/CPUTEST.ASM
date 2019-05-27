0000            org     $0000
0000  3E 02     mvi     a,$02
0002  3C        inr     a
0003  EA 00 30  jpe     $3000
0006  C3 09 01  jmp     $0109
0009  F3        di
000A  31 FF 2F  lxi     sp,$2FFF
000D  CD 4F 21  call    $214F
0010  CD 4E 0B  call    $0B4E
0013  0D        dcr     c
0014  0A        ldax    b
0015  44        mov     b,h
0016  49        mov     c,c
0017  41        mov     b,c
0018  47        mov     b,a
0019  4E        mov     c,m
001A  4F        mov     c,a
001B  53        mov     d,e
001C  54        mov     d,h
001D  49        mov     c,c
001E  43        mov     b,e
001F  53        mov     d,e
0020  20        nop                  ;Note: Alternative opcode used
0021  49        mov     c,c
0022  49        mov     c,c
0023  20        nop                  ;Note: Alternative opcode used
0024  56        mov     d,m
0025  31 2E 32  lxi     sp,$322E
0028  20        nop                  ;Note: Alternative opcode used
0029  2D        dcr     l
002A  20        nop                  ;Note: Alternative opcode used
002B  43        mov     b,e
002C  50        mov     d,b
002D  55        mov     d,l
002E  20        nop                  ;Note: Alternative opcode used
002F  54        mov     d,h
0030  45        mov     b,l
0031  53        mov     d,e
0032  54        mov     d,h
0033  0D        dcr     c
0034  0A        ldax    b
0035  43        mov     b,e
0036  4F        mov     c,a
0037  50        mov     d,b
0038  59        mov     e,c
0039  52        mov     d,d
003A  49        mov     c,c
003B  47        mov     b,a
003C  48        mov     c,b
003D  54        mov     d,h
003E  20        nop                  ;Note: Alternative opcode used
003F  28        nop                  ;Note: Alternative opcode used
0040  43        mov     b,e
0041  29        dad     h
0042  20        nop                  ;Note: Alternative opcode used
0043  31 39 38  lxi     sp,$3839
0046  31 20 2D  lxi     sp,$2D20
0049  20        nop                  ;Note: Alternative opcode used
004A  53        mov     d,e
004B  55        mov     d,l
004C  50        mov     d,b
004D  45        mov     b,l
004E  52        mov     d,d
004F  53        mov     d,e
0050  4F        mov     c,a
0051  46        mov     b,m
0052  54        mov     d,h
0053  20        nop                  ;Note: Alternative opcode used
0054  41        mov     b,c
0055  53        mov     d,e
0056  53        mov     d,e
0057  4F        mov     c,a
0058  43        mov     b,e
0059  49        mov     c,c
005A  41        mov     b,c
005B  54        mov     d,h
005C  45        mov     b,l
005D  53        mov     d,e
005E  0D        dcr     c
005F  0A        ldax    b
0060  0A        ldax    b
0061  00        nop
0062  C3 6D 01  jmp     $016D
0065  41        mov     b,c
0066  54        mov     d,h
0067  45        mov     b,l
0068  53        mov     d,e
0069  0D        dcr     c
006A  0A        ldax    b
006B  0A        ldax    b
006C  00        nop
006D  CD 0F 09  call    $090F
0070  C3 8D 01  jmp     $018D
0073  21 78 0C  lxi     h,$0C78
0076  CD 4E 0B  call    $0B4E
0079  44        mov     b,h
007A  42        mov     b,d
007B  46        mov     b,m
007C  4C        mov     c,h
007D  41        mov     b,c
007E  47        mov     b,a
007F  20        nop                  ;Note: Alternative opcode used
0080  49        mov     c,c
0081  53        mov     d,e
0082  20        nop                  ;Note: Alternative opcode used
0083  41        mov     b,c
0084  54        mov     d,h
0085  20        nop                  ;Note: Alternative opcode used
0086  00        nop
0087  CD 8B 0B  call    $0B8B
008A  CD 65 0C  call    $0C65
008D  1E 41     mvi     e,'A'
008F  0E 02     mvi     c,$02
0091  CD 05 00  call    $0005
0094  1E 42     mvi     e,'B'
0096  CD E6 03  call    $03E6
0099  1E 43     mvi     e,'C'
009B  CD EA 03  call    $03EA
009E  3A 75 0C  lda     $0C75
00A1  B7        ora     a
00A2  C2 AB 01  jnz     $01AB
00A5  CD 67 0A  call    $0A67
00A8  C3 B0 01  jmp     $01B0
00AB  CD 4E 0B  call    $0B4E
00AE  44        mov     b,h
00AF  00        nop
00B0  3E 45     mvi     a,'E'
00B2  0E 16     mvi     c,$16
00B4  CD 0E 0B  call    $0B0E
00B7  3C        inr     a
00B8  0D        dcr     c
00B9  C2 B4 01  jnz     $01B4
00BC  C3 CA 01  jmp     $01CA
00BF  51        mov     d,c
00C0  52        mov     d,d
00C1  53        mov     d,e
00C2  54        mov     d,h
00C3  55        mov     d,l
00C4  56        mov     d,m
00C5  57        mov     d,a
00C6  58        mov     e,b
00C7  59        mov     e,c
00C8  5A        mov     e,d
00C9  00        nop
00CA  3E 02     mvi     a,$02
00CC  3C        inr     a
00CD  EA D5 01  jpe     $01D5
00D0  3E 01     mvi     a,$01
00D2  C3 D6 01  jmp     $01D6
00D5  AF        xra     a
00D6  32 72 0C  sta     $0C72
00D9  CD 0F 09  call    $090F
00DC  C3 2B 02  jmp     $022B
00DF  32 73 0C  sta     $0C73
00E2  B7        ora     a
00E3  C2 2B 02  jnz     $022B
00E6  CD 4E 0B  call    $0B4E
00E9  0D        dcr     c
00EA  0A        ldax    b
00EB  54        mov     d,h
00EC  55        mov     d,l
00ED  52        mov     d,d
00EE  4B        mov     c,e
00EF  45        mov     b,l
00F0  59        mov     e,c
00F1  2D        dcr     l
00F2  2D        dcr     l
00F3  47        mov     b,a
00F4  4F        mov     c,a
00F5  20        nop                  ;Note: Alternative opcode used
00F6  46        mov     b,m
00F7  49        mov     c,c
00F8  4E        mov     c,m
00F9  44        mov     b,h
00FA  20        nop                  ;Note: Alternative opcode used
00FB  41        mov     b,c
00FC  20        nop                  ;Note: Alternative opcode used
00FD  5A        mov     e,d
00FE  38        nop                  ;Note: Alternative opcode used
00FF  30        nop                  ;Note: Alternative opcode used
0100  21 20 20  lxi     h,$2020
0103  20        nop                  ;Note: Alternative opcode used
0104  4F        mov     c,a
0105  52        mov     d,d
0106  20        nop                  ;Note: Alternative opcode used
0107  49        mov     c,c
0108  20        nop                  ;Note: Alternative opcode used
0109  57        mov     d,a
010A  4F        mov     c,a
010B  4E        mov     c,m
010C  27        daa
010D  54        mov     d,h
010E  20        nop                  ;Note: Alternative opcode used
010F  54        mov     d,h
0110  45        mov     b,l
0111  53        mov     d,e
0112  54        mov     d,h
0113  20        nop                  ;Note: Alternative opcode used
0114  54        mov     d,h
0115  48        mov     c,b
0116  45        mov     b,l
0117  20        nop                  ;Note: Alternative opcode used
0118  52        mov     d,d
0119  45        mov     b,l
011A  46        mov     b,m
011B  52        mov     d,d
011C  45        mov     b,l
011D  53        mov     d,e
011E  48        mov     c,b
011F  20        nop                  ;Note: Alternative opcode used
0120  52        mov     d,d
0121  45        mov     b,l
0122  47        mov     b,a
0123  49        mov     c,c
0124  53        mov     d,e
0125  54        mov     d,h
0126  45        mov     b,l
0127  52        mov     d,d
0128  0D        dcr     c
0129  0A        ldax    b
012A  00        nop
012B  CD FE 08  call    $08FE
012E  C3 38 02  jmp     $0238
0131  AF        xra     a
0132  CD 1D 09  call    $091D
0135  32 72 0C  sta     $0C72
0138  CD 4E 0B  call    $0B4E
013B  0D        dcr     c
013C  0A        ldax    b
013D  43        mov     b,e
013E  50        mov     d,b
013F  55        mov     d,l
0140  20        nop                  ;Note: Alternative opcode used
0141  49        mov     c,c
0142  53        mov     d,e
0143  20        nop                  ;Note: Alternative opcode used
0144  00        nop
0145  3A 72 0C  lda     $0C72
0148  B7        ora     a
0149  CA 80 02  jz      $0280
014C  CD 4E 0B  call    $0B4E
014F  5A        mov     e,d
0150  38        nop                  ;Note: Alternative opcode used
0151  30        nop                  ;Note: Alternative opcode used
0152  00        nop
0153  3A 73 0C  lda     $0C73
0156  B7        ora     a
0157  C2 8D 02  jnz     $028D
015A  CD 4E 0B  call    $0B4E
015D  20        nop                  ;Note: Alternative opcode used
015E  28        nop                  ;Note: Alternative opcode used
015F  52        mov     d,d
0160  45        mov     b,l
0161  46        mov     b,m
0162  52        mov     d,d
0163  45        mov     b,l
0164  53        mov     d,e
0165  48        mov     c,b
0166  20        nop                  ;Note: Alternative opcode used
0167  52        mov     d,d
0168  45        mov     b,l
0169  47        mov     b,a
016A  49        mov     c,c
016B  53        mov     d,e
016C  54        mov     d,h
016D  45        mov     b,l
016E  52        mov     d,d
016F  20        nop                  ;Note: Alternative opcode used
0170  4E        mov     c,m
0171  4F        mov     c,a
0172  54        mov     d,h
0173  20        nop                  ;Note: Alternative opcode used
0174  43        mov     b,e
0175  48        mov     c,b
0176  45        mov     b,l
0177  43        mov     b,e
0178  4B        mov     c,e
0179  45        mov     b,l
017A  44        mov     b,h
017B  29        dad     h
017C  00        nop
017D  C3 8D 02  jmp     $028D
0180  CD 4E 0B  call    $0B4E
0183  38        nop                  ;Note: Alternative opcode used
0184  30        nop                  ;Note: Alternative opcode used
0185  38        nop                  ;Note: Alternative opcode used
0186  30        nop                  ;Note: Alternative opcode used
0187  2F        cma
0188  38        nop                  ;Note: Alternative opcode used
0189  30        nop                  ;Note: Alternative opcode used
018A  38        nop                  ;Note: Alternative opcode used
018B  35        dcr     m
018C  00        nop
018D  AF        xra     a
018E  01 01 00  lxi     b,$0001
0191  CD 4E 0B  call    $0B4E
0194  0D        dcr     c
0195  0A        ldax    b
0196  42        mov     b,d
0197  45        mov     b,l
0198  47        mov     b,a
0199  49        mov     c,c
019A  4E        mov     c,m
019B  20        nop                  ;Note: Alternative opcode used
019C  54        mov     d,h
019D  49        mov     c,c
019E  4D        mov     c,l
019F  49        mov     c,c
01A0  4E        mov     c,m
01A1  47        mov     b,a
01A2  20        nop                  ;Note: Alternative opcode used
01A3  54        mov     d,h
01A4  45        mov     b,l
01A5  53        mov     d,e
01A6  54        mov     d,h
01A7  0D        dcr     c
01A8  0A        ldax    b
01A9  00        nop
01AA  CD 4E 0C  call    $0C4E
01AD  CD FE 08  call    $08FE
01B0  C3 C5 02  jmp     $02C5
01B3  CD 1D 09  call    $091D
01B6  C3 C5 02  jmp     $02C5
01B9  21 00 00  lxi     h,$0000
01BC  3C        inr     a
01BD  C2 BC 02  jnz     $02BC
01C0  09        dad     b
01C1  D2 BC 02  jnc     $02BC
01C4  EB        xchg
01C5  CD 4E 0C  call    $0C4E
01C8  CD 4E 0B  call    $0B4E
01CB  45        mov     b,l
01CC  4E        mov     c,m
01CD  44        mov     b,h
01CE  20        nop                  ;Note: Alternative opcode used
01CF  54        mov     d,h
01D0  49        mov     c,c
01D1  4D        mov     c,l
01D2  49        mov     c,c
01D3  4E        mov     c,m
01D4  47        mov     b,a
01D5  20        nop                  ;Note: Alternative opcode used
01D6  54        mov     d,h
01D7  45        mov     b,l
01D8  53        mov     d,e
01D9  54        mov     d,h
01DA  0D        dcr     c
01DB  0A        ldax    b
01DC  00        nop
01DD  CD F0 03  call    $03F0
01E0  CD 1D 09  call    $091D
01E3  C3 EC 02  jmp     $02EC
01E6  CD 0F 09  call    $090F
01E9  C3 57 03  jmp     $0357
01EC  CD 4E 0B  call    $0B4E
01EF  54        mov     d,h
01F0  41        mov     b,c
01F1  42        mov     b,d
01F2  4C        mov     c,h
01F3  45        mov     b,l
01F4  20        nop                  ;Note: Alternative opcode used
01F5  45        mov     b,l
01F6  4E        mov     c,m
01F7  44        mov     b,h
01F8  20        nop                  ;Note: Alternative opcode used
01F9  00        nop
01FA  2A 7E 0C  lhld    $0C7E
01FD  CD 8B 0B  call    $0B8B
0200  CD 4E 0B  call    $0B4E
0203  0D        dcr     c
0204  0A        ldax    b
0205  54        mov     d,h
0206  41        mov     b,c
0207  42        mov     b,d
0208  4C        mov     c,h
0209  45        mov     b,l
020A  20        nop                  ;Note: Alternative opcode used
020B  53        mov     d,e
020C  49        mov     c,c
020D  5A        mov     e,d
020E  45        mov     b,l
020F  20        nop                  ;Note: Alternative opcode used
0210  00        nop
0211  11 84 F3  lxi     d,$F384
0214  19        dad
0215  CD 8B 0B  call    $0B8B
0218  CD 65 0C  call    $0C65
021B  C3 2A 03  jmp     $032A
021E  2A 7E 0C  lhld    $0C7E
0221  2B        dcx     h
0222  36 01     mvi     m,$01
0224  2B        dcx     h
0225  36 01     mvi     m,$01
0227  2B        dcx     h
0228  36 01     mvi     m,$01
022A  CD 67 0A  call    $0A67
022D  3A 74 0C  lda     $0C74
0230  21 75 0C  lxi     h,$0C75
0233  86        add     m
0234  57        mov     d,a
0235  3E 01     mvi     a,$01
0237  CD FE 08  call    $08FE
023A  32 75 0C  sta     $0C75
023D  32 74 0C  sta     $0C74
0240  3A 74 0C  lda     $0C74
0243  21 75 0C  lxi     h,$0C75
0246  86        add     m
0247  92        sub     d
0248  57        mov     d,a
0249  3A 79 0C  lda     $0C79
024C  92        sub     d
024D  32 79 0C  sta     $0C79
0250  CD 65 0C  call    $0C65
0253  C3 09 01  jmp     $0109
0256  C7        rst     0
0257  2A 7A 0C  lhld    $0C7A
025A  7C        mov     a,h
025B  B5        ora     l
025C  CA 72 03  jz      $0372
025F  CD 8B 0B  call    $0B8B
0262  CD 4E 0B  call    $0B4E
0265  20        nop                  ;Note: Alternative opcode used
0266  45        mov     b,l
0267  52        mov     d,d
0268  52        mov     d,d
0269  4F        mov     c,a
026A  52        mov     d,d
026B  53        mov     d,e
026C  0D        dcr     c
026D  0A        ldax    b
026E  00        nop
026F  C3 84 03  jmp     $0384
0272  CD 4E 0B  call    $0B4E
0275  43        mov     b,e
0276  50        mov     d,b
0277  55        mov     d,l
0278  20        nop                  ;Note: Alternative opcode used
0279  54        mov     d,h
027A  45        mov     b,l
027B  53        mov     d,e
027C  54        mov     d,h
027D  53        mov     d,e
027E  20        nop                  ;Note: Alternative opcode used
027F  4F        mov     c,a
0280  4B        mov     c,e
0281  0D        dcr     c
0282  0A        ldax    b
0283  00        nop
0284  CD 2B 0C  call    $0C2B
0287  C3 8D 01  jmp     $018D
028A  F5        push    psw
028B  CD 1D 09  call    $091D
028E  C3 97 03  jmp     $0397
0291  CD 0F 09  call    $090F
0294  C3 B7 03  jmp     $03B7
0297  F1        pop     psw
0298  F5        push    psw
0299  D5        push    d
029A  57        mov     d,a
029B  3A 79 0C  lda     $0C79
029E  92        sub     d
029F  32 79 0C  sta     $0C79
02A2  D1        pop     d
02A3  F1        pop     psw
02A4  F5        push    psw
02A5  CD 4E 0B  call    $0B4E
02A8  3C        inr     a
02A9  00        nop
02AA  CD A1 0B  call    $0BA1
02AD  CD 4E 0B  call    $0B4E
02B0  3E 00     mvi     a,$00
02B2  CD 2B 0C  call    $0C2B
02B5  F1        pop     psw
02B6  C9        ret
02B7  CD 65 0C  call    $0C65
02BA  CD 4E 0B  call    $0B4E
02BD  43        mov     b,e
02BE  48        mov     c,b
02BF  45        mov     b,l
02C0  43        mov     b,e
02C1  4B        mov     c,e
02C2  53        mov     d,e
02C3  55        mov     d,l
02C4  4D        mov     c,l
02C5  20        nop                  ;Note: Alternative opcode used
02C6  45        mov     b,l
02C7  52        mov     d,d
02C8  52        mov     d,d
02C9  4F        mov     c,a
02CA  52        mov     d,d
02CB  2D        dcr     l
02CC  2D        dcr     l
02CD  4D        mov     c,l
02CE  45        mov     b,l
02CF  4D        mov     c,l
02D0  4F        mov     c,a
02D1  52        mov     d,d
02D2  59        mov     e,c
02D3  20        nop                  ;Note: Alternative opcode used
02D4  4D        mov     c,l
02D5  41        mov     b,c
02D6  59        mov     e,c
02D7  20        nop                  ;Note: Alternative opcode used
02D8  42        mov     b,d
02D9  45        mov     b,l
02DA  20        nop                  ;Note: Alternative opcode used
02DB  42        mov     b,d
02DC  41        mov     b,c
02DD  44        mov     b,h
02DE  3A 20 00  lda     $0020
02E1  F1        pop     psw
02E2  CD A1 0B  call    $0BA1
02E5  C7        rst     0
02E6  CD EA 03  call    $03EA
02E9  C9        ret
02EA  0E 02     mvi     c,$02
02EC  CD BD 20  call    $20BD
02EF  C9        ret
02F0  21 0E 0B  lxi     h,$0B0E
02F3  CD C0 09  call    $09C0
02F6  CD 23 06  call    $0623
02F9  21 80 0C  lxi     h,$0C80
02FC  22 7E 0C  shld    $0C7E
02FF  3E 00     mvi     a,$00
0301  32 47 04  sta     $0447
0304  32 48 04  sta     $0448
0307  21 61 04  lxi     h,$0461
030A  16 01     mvi     d,$01
030C  7E        mov     a,m
030D  23        inx     h
030E  FE 00     cpi     $00
0310  C2 24 04  jnz     $0424
0313  CD 16 09  call    $0916
0316  CD FE 08  call    $08FE
0319  CD 65 0C  call    $0C65
031C  14        inr     d
031D  7A        mov     a,d
031E  FE 04     cpi     $04
0320  FA 0C 04  jm      $040C
0323  C9        ret
0324  32 46 04  sta     $0446
0327  7A        mov     a,d
0328  FE 02     cpi     $02
032A  FA 3D 04  jm      $043D
032D  7E        mov     a,m
032E  23        inx     h
032F  32 47 04  sta     $0447
0332  7A        mov     a,d
0333  FE 03     cpi     $03
0335  FA 3D 04  jm      $043D
0338  7E        mov     a,m
0339  23        inx     h
033A  32 48 04  sta     $0448
033D  D5        push    d
033E  E5        push    h
033F  F5        push    psw
0340  21 AA 0A  lxi     h,$0AAA
0343  CD C0 09  call    $09C0
0346  E4 5F 04  cpo     $045F
0349  CD 2B 06  call    $062B
034C  21 DC 0A  lxi     h,$0ADC
034F  CD C0 09  call    $09C0
0352  CD 23 06  call    $0623
0355  F1        pop     psw
0356  E1        pop     h
0357  D1        pop     d
0358  C3 0C 04  jmp     $040C
035B  0B        dcx     b
035C  C3 49 04  jmp     $0449
035F  03        inx     b
0360  C9        ret
0361  03        inx     b
0362  04        inr     b
0363  05        dcr     b
0364  07        rlc
0365  09        dad     b
0366  0B        dcx     b
0367  0C        inr     c
0368  0D        dcr     c
0369  0F        rrc
036A  13        inx     d
036B  14        inr     d
036C  15        dcr     d
036D  17        ral
036E  19        dad
036F  1B        dcx     d
0370  1C        inr     e
0371  1D        dcr     e
0372  1F        rar
0373  23        inx     h
0374  24        inr     h
0375  25        dcr     h
0376  27        daa
0377  29        dad     h
0378  2B        dcx     h
0379  2C        inr     l
037A  2D        dcr     l
037B  2F        cma
037C  37        stc
037D  39        dad     sp
037E  3C        inr     a
037F  3D        dcr     a
0380  3F        cmc
0381  40        mov     b,b
0382  41        mov     b,c
0383  42        mov     b,d
0384  43        mov     b,e
0385  44        mov     b,h
0386  45        mov     b,l
0387  47        mov     b,a
0388  48        mov     c,b
0389  49        mov     c,c
038A  4A        mov     c,d
038B  4B        mov     c,e
038C  4C        mov     c,h
038D  4D        mov     c,l
038E  4F        mov     c,a
038F  50        mov     d,b
0390  51        mov     d,c
0391  52        mov     d,d
0392  53        mov     d,e
0393  54        mov     d,h
0394  55        mov     d,l
0395  57        mov     d,a
0396  58        mov     e,b
0397  59        mov     e,c
0398  5A        mov     e,d
0399  5B        mov     e,e
039A  5C        mov     e,h
039B  5D        mov     e,l
039C  5F        mov     e,a
039D  60        mov     h,b
039E  61        mov     h,c
039F  62        mov     h,d
03A0  63        mov     h,e
03A1  64        mov     h,h
03A2  65        mov     h,l
03A3  67        mov     h,a
03A4  68        mov     l,b
03A5  69        mov     l,c
03A6  6A        mov     l,d
03A7  6B        mov     l,e
03A8  6C        mov     l,h
03A9  6D        mov     l,l
03AA  6F        mov     l,a
03AB  78        mov     a,b
03AC  78        mov     a,b
03AD  79        mov     a,c
03AE  7A        mov     a,d
03AF  7B        mov     a,e
03B0  7C        mov     a,h
03B1  7D        mov     a,l
03B2  7F        mov     a,a
03B3  80        add     b
03B4  81        add     c
03B5  82        add     d
03B6  83        add     e
03B7  84        add     h
03B8  85        add     l
03B9  87        add     a
03BA  88        adc     b
03BB  89        adc     c
03BC  8A        adc     d
03BD  8B        adc     e
03BE  8C        adc     h
03BF  8D        adc     l
03C0  90        sub     b
03C1  91        sub     c
03C2  92        sub     d
03C3  93        sub     e
03C4  94        sub     h
03C5  95        sub     l
03C6  97        sub     a
03C7  A0        ana     b
03C8  A1        ana     c
03C9  A2        ana     d
03CA  A3        ana     e
03CB  A4        ana     h
03CC  A5        ana     l
03CD  A7        ana     a
03CE  A8        xra     b
03CF  A9        xra     c
03D0  AA        xra     d
03D1  AB        xra     e
03D2  AC        xra     h
03D3  AD        xra     l
03D4  AF        xra     a
03D5  B0        ora     b
03D6  B1        ora     c
03D7  B2        ora     d
03D8  B3        ora     e
03D9  B4        ora     h
03DA  B5        ora     l
03DB  B7        ora     a
03DC  B8        cmp     b
03DD  B9        cmp     c
03DE  BA        cmp     d
03DF  BB        cmp     e
03E0  BC        cmp     h
03E1  BD        cmp     l
03E2  BF        cmp     a
03E3  EB        xchg
03E4  F3        di
03E5  00        nop
03E6  06 02     mvi     b,$02
03E8  0E 03     mvi     c,$03
03EA  16 04     mvi     d,$04
03EC  1E 05     mvi     e,$05
03EE  26 06     mvi     h,$06
03F0  2E 07     mvi     l,$07
03F2  3E 09     mvi     a,$09
03F4  C6 0A     adi     $0A
03F6  CE 0B     aci     $0B
03F8  D6 0C     sui     $0C
03FA  DE 0D     sbi     $0D
03FC  E6 0E     ani     $0E
03FE  EE 0F     xri     $0F
0400  F6 10     ori     $10
0402  FE 11     cpi     $11
0404  26 63     mvi     h,'c'
0406  E5        push    h
0407  C1        pop     b
0408  06 58     mvi     b,'X'
040A  C5        push    b
040B  D1        pop     d
040C  F5        push    psw
040D  E1        pop     h
040E  33        inx     sp
040F  3B        dcx     sp
0410  00        nop
0411  01 76 0C  lxi     b,$0C76
0414  11 13 00  lxi     d,$0013
0417  21 14 00  lxi     h,$0014
041A  22 76 0C  shld    $0C76
041D  2A 1D 05  lhld    $051D
0420  2A 76 0C  lhld    $0C76
0423  32 76 0C  sta     $0C76
0426  3A 26 05  lda     $0526
0429  3A 76 0C  lda     $0C76
042C  11 76 0C  lxi     d,$0C76
042F  3E 4D     mvi     a,'M'
0431  12        stax    d
0432  3E 42     mvi     a,'B'
0434  02        stax    b
0435  3C        inr     a
0436  0A        ldax    b
0437  40        mov     b,b
0438  03        inx     b
0439  0A        ldax    b
043A  40        mov     b,b
043B  D5        push    d
043C  E3        xthl
043D  C1        pop     b
043E  21 76 0C  lxi     h,$0C76
0441  77        mov     m,a
0442  46        mov     b,m
0443  04        inr     b
0444  70        mov     m,b
0445  4E        mov     c,m
0446  0C        inr     c
0447  71        mov     m,c
0448  56        mov     d,m
0449  14        inr     d
044A  73        mov     m,e
044B  7E        mov     a,m
044C  3C        inr     a
044D  77        mov     m,a
044E  54        mov     d,h
044F  66        mov     h,m
0450  62        mov     h,d
0451  55        mov     d,l
0452  6E        mov     l,m
0453  6A        mov     l,d
0454  86        add     m
0455  70        mov     m,b
0456  86        add     m
0457  70        mov     m,b
0458  40        mov     b,b
0459  8E        adc     m
045A  70        mov     m,b
045B  40        mov     b,b
045C  96        sub     m
045D  70        mov     m,b
045E  40        mov     b,b
045F  A6        ana     m
0460  70        mov     m,b
0461  40        mov     b,b
0462  AE        xra     m
0463  70        mov     m,b
0464  40        mov     b,b
0465  B6        ora     m
0466  70        mov     m,b
0467  40        mov     b,b
0468  BE        cmp     m
0469  70        mov     m,b
046A  40        mov     b,b
046B  36 58     mvi     m,'X'
046D  40        mov     b,b
046E  21 5B 04  lxi     h,$045B
0471  E9        pchl
0472  3C        inr     a
0473  04        inr     b
0474  11 FF FF  lxi     d,$FFFF
0477  D5        push    d
0478  F1        pop     psw
0479  7F        mov     a,a
047A  E5        push    h
047B  C9        ret
047C  1B        dcx     d
047D  E5        push    h
047E  C8        rz
047F  1B        dcx     d
0480  E5        push    h
0481  D8        rc
0482  1B        dcx     d
0483  E5        push    h
0484  F8        rm
0485  1B        dcx     d
0486  E5        push    h
0487  E8        rpe
0488  1B        dcx     d
0489  C0        rnz
048A  1B        dcx     d
048B  1B        dcx     d
048C  D0        rnc
048D  1B        dcx     d
048E  1B        dcx     d
048F  F0        rp
0490  1B        dcx     d
0491  1B        dcx     d
0492  E0        rpo
0493  1B        dcx     d
0494  1B        dcx     d
0495  C3 5B 04  jmp     $045B
0498  CA 5B 04  jz      $045B
049B  DA 5B 04  jc      $045B
049E  FA 5B 04  jm      $045B
04A1  EA 5B 04  jpe     $045B
04A4  C2 5B 04  jnz     $045B
04A7  D2 5B 04  jnc     $045B
04AA  F2 5B 04  jp      $045B
04AD  E2 5B 04  jpo     $045B
04B0  CD 5F 04  call    $045F
04B3  CC 5F 04  cz      $045F
04B6  DC 5F 04  cc      $045F
04B9  FC 5F 04  cm      $045F
04BC  EC 5F 04  cpe     $045F
04BF  C4 5F 04  cnz     $045F
04C2  D4 5F 04  cnc     $045F
04C5  F4 5F 04  cp      $045F
04C8  E4 5F 04  cpo     $045F
04CB  11 00 00  lxi     d,$0000
04CE  D5        push    d
04CF  F1        pop     psw
04D0  7F        mov     a,a
04D1  E5        push    h
04D2  C9        ret
04D3  1B        dcx     d
04D4  C8        rz
04D5  1B        dcx     d
04D6  1B        dcx     d
04D7  D8        rc
04D8  1B        dcx     d
04D9  1B        dcx     d
04DA  F8        rm
04DB  1B        dcx     d
04DC  1B        dcx     d
04DD  E8        rpe
04DE  1B        dcx     d
04DF  1B        dcx     d
04E0  E5        push    h
04E1  C0        rnz
04E2  1B        dcx     d
04E3  E5        push    h
04E4  D0        rnc
04E5  1B        dcx     d
04E6  E5        push    h
04E7  F0        rp
04E8  1B        dcx     d
04E9  E5        push    h
04EA  E0        rpo
04EB  1B        dcx     d
04EC  C3 5B 04  jmp     $045B
04EF  CA 5B 04  jz      $045B
04F2  DA 5B 04  jc      $045B
04F5  FA 5B 04  jm      $045B
04F8  EA 5B 04  jpe     $045B
04FB  C2 5B 04  jnz     $045B
04FE  D2 5B 04  jnc     $045B
0501  F2 5B 04  jp      $045B
0504  E2 5B 04  jpo     $045B
0507  CD 5F 04  call    $045F
050A  CC 5F 04  cz      $045F
050D  DC 5F 04  cc      $045F
0510  FC 5F 04  cm      $045F
0513  EC 5F 04  cpe     $045F
0516  C4 5F 04  cnz     $045F
0519  D4 5F 04  cnc     $045F
051C  F4 5F 04  cp      $045F
051F  E4 5F 04  cpo     $045F
0522  00        nop
0523  E5        push    h
0524  21 AA 0A  lxi     h,$0AAA
0527  CD 3A 09  call    $093A
052A  C9        ret
052B  E5        push    h
052C  21 DC 0A  lxi     h,$0ADC
052F  CD 3A 09  call    $093A
0532  E5        push    h
0533  D5        push    d
0534  F5        push    psw
0535  21 AA 0A  lxi     h,$0AAA
0538  11 DC 0A  lxi     d,$0ADC
053B  CD 16 09  call    $0916
053E  CD FE 08  call    $08FE
0541  CD 23 07  call    $0723
0544  CD 16 09  call    $0916
0547  CD FE 08  call    $08FE
054A  CD 6C 0C  call    $0C6C
054D  CD 75 06  call    $0675
0550  F1        pop     psw
0551  D1        pop     d
0552  E1        pop     h
0553  C9        ret
0554  1F        rar
0555  4B        mov     c,e
0556  01 59 44  lxi     b,$4459
0559  10        nop                  ;Note: Alternative opcode used
055A  62        mov     h,d
055B  63        mov     h,e
055C  64        mov     h,h
055D  65        mov     h,l
055E  61        mov     h,c
055F  66        mov     h,m
0560  68        mov     l,b
0561  6C        mov     l,h
0562  42        mov     b,d
0563  43        mov     b,e
0564  44        mov     b,h
0565  45        mov     b,l
0566  41        mov     b,c
0567  46        mov     b,m
0568  48        mov     c,b
0569  4C        mov     c,h
056A  49        mov     c,c
056B  58        mov     e,b
056C  4A        mov     c,d
056D  59        mov     e,c
056E  73        mov     m,e
056F  70        mov     m,b
0570  56        mov     d,m
0571  52        mov     d,d
0572  24        inr     h
0573  24        inr     h
0574  24        inr     h
0575  C5        push    b
0576  0E FF     mvi     c,$FF
0578  E5        push    h
0579  2A 7E 0C  lhld    $0C7E
057C  22 58 06  shld    $0658
057F  E1        pop     h
0580  AF        xra     a
0581  32 7C 0C  sta     $0C7C
0584  0C        inr     c
0585  79        mov     a,c
0586  FE 19     cpi     $19
0588  F2 D4 06  jp      $06D4
058B  2B        dcx     h
058C  7E        mov     a,m
058D  32 54 06  sta     $0654
0590  EB        xchg
0591  2B        dcx     h
0592  46        mov     b,m
0593  F5        push    psw
0594  78        mov     a,b
0595  32 55 06  sta     $0655
0598  F1        pop     psw
0599  EB        xchg
059A  B8        cmp     b
059B  CA 78 06  jz      $0678
059E  3A 72 0C  lda     $0C72
05A1  B7        ora     a
05A2  C2 AB 06  jnz     $06AB
05A5  79        mov     a,c
05A6  FE 08     cpi     $08
05A8  F2 E9 06  jp      $06E9
05AB  79        mov     a,c
05AC  FE 17     cpi     $17
05AE  F2 E9 06  jp      $06E9
05B1  79        mov     a,c
05B2  32 56 06  sta     $0656
05B5  CD 9D 07  call    $079D
05B8  CD 16 09  call    $0916
05BB  CD FE 08  call    $08FE
05BE  CD 53 07  call    $0753
05C1  3A 55 06  lda     $0655
05C4  CD 9D 07  call    $079D
05C7  3A 7C 0C  lda     $0C7C
05CA  B7        ora     a
05CB  CD 0F 09  call    $090F
05CE  C4 C6 07  cnz     $07C6
05D1  C3 78 06  jmp     $0678
05D4  3E 58     mvi     a,'X'
05D6  CD 9D 07  call    $079D
05D9  3E 59     mvi     a,'Y'
05DB  CD 9D 07  call    $079D
05DE  C1        pop     b
05DF  CD 16 09  call    $0916
05E2  CD FE 08  call    $08FE
05E5  CD 65 0C  call    $0C65
05E8  C9        ret
05E9  CD FE 08  call    $08FE
05EC  C3 D4 06  jmp     $06D4
05EF  E5        push    h
05F0  2A 58 06  lhld    $0658
05F3  22 7E 0C  shld    $0C7E
05F6  E1        pop     h
05F7  CD 18 07  call    $0718
05FA  FE 58     cpi     'X'
05FC  CA 05 07  jz      $0705
05FF  CD 18 07  call    $0718
0602  C3 E9 06  jmp     $06E9
0605  CD 18 07  call    $0718
0608  FE 59     cpi     'Y'
060A  C2 E9 06  jnz     $06E9
060D  2A 7E 0C  lhld    $0C7E
0610  2B        dcx     h
0611  2B        dcx     h
0612  22 7E 0C  shld    $0C7E
0615  C3 D4 06  jmp     $06D4
0618  E5        push    h
0619  2A 7E 0C  lhld    $0C7E
061C  7E        mov     a,m
061D  23        inx     h
061E  22 7E 0C  shld    $0C7E
0621  E1        pop     h
0622  C9        ret
0623  3A 46 04  lda     $0446
0626  CD A1 0B  call    $0BA1
0629  3A 47 04  lda     $0447
062C  CD A1 0B  call    $0BA1
062F  3A 48 04  lda     $0448
0632  CD A1 0B  call    $0BA1
0635  C9        ret
0636  E5        push    h
0637  21 5A 06  lxi     h,$065A
063A  CD 83 0B  call    $0B83
063D  FE 41     cpi     'A'
063F  FA 4E 07  jm      $074E
0642  FE 5B     cpi     '['
0644  F2 4E 07  jp      $074E
0647  F5        push    psw
0648  3E 5A     mvi     a,'Z'
064A  CD 0E 0B  call    $0B0E
064D  F1        pop     psw
064E  CD 0E 0B  call    $0B0E
0651  E1        pop     h
0652  C9        ret
0653  E5        push    h
0654  D5        push    d
0655  3A 56 06  lda     $0656
0658  CD A1 0B  call    $0BA1
065B  CD 4E 0B  call    $0B4E
065E  28        nop                  ;Note: Alternative opcode used
065F  00        nop
0660  CD 36 07  call    $0736
0663  CD 4E 0B  call    $0B4E
0666  29        dad     h
0667  3A 00 3A  lda     $3A00
066A  54        mov     d,h
066B  06 CD     mvi     b,$CD
066D  A1        ana     c
066E  0B        dcx     b
066F  CD 4E 0B  call    $0B4E
0672  2D        dcr     l
0673  3E 00     mvi     a,$00
0675  3A 55 06  lda     $0655
0678  CD A1 0B  call    $0BA1
067B  CD 4E 0B  call    $0B4E
067E  28        nop                  ;Note: Alternative opcode used
067F  00        nop
0680  2A 7E 0C  lhld    $0C7E
0683  23        inx     h
0684  7E        mov     a,m
0685  CD A1 0B  call    $0BA1
0688  CD 4E 0B  call    $0B4E
068B  2E 00     mvi     l,$00
068D  3A 57 06  lda     $0657
0690  CD A1 0B  call    $0BA1
0693  CD 4E 0B  call    $0B4E
0696  29        dad     h
0697  2C        inr     l
0698  20        nop                  ;Note: Alternative opcode used
0699  00        nop
069A  D1        pop     d
069B  E1        pop     h
069C  C9        ret
069D  F5        push    psw
069E  E5        push    h
069F  2A 7E 0C  lhld    $0C7E
06A2  F5        push    psw
06A3  7E        mov     a,m
06A4  32 57 06  sta     $0657
06A7  F1        pop     psw
06A8  BE        cmp     m
06A9  CA B7 07  jz      $07B7
06AC  F5        push    psw
06AD  3A 74 0C  lda     $0C74
06B0  32 7C 0C  sta     $0C7C
06B3  F1        pop     psw
06B4  C3 B7 07  jmp     $07B7
06B7  CD FE 08  call    $08FE
06BA  CD C4 07  call    $07C4
06BD  23        inx     h
06BE  22 7E 0C  shld    $0C7E
06C1  E1        pop     h
06C2  F1        pop     psw
06C3  C9        ret
06C4  77        mov     m,a
06C5  C9        ret
06C6  CD 4E 0B  call    $0B4E
06C9  0D        dcr     c
06CA  0A        ldax    b
06CB  43        mov     b,e
06CC  50        mov     d,b
06CD  55        mov     d,l
06CE  20        nop                  ;Note: Alternative opcode used
06CF  46        mov     b,m
06D0  41        mov     b,c
06D1  49        mov     c,c
06D2  4C        mov     c,h
06D3  45        mov     b,l
06D4  44        mov     b,h
06D5  3A 20 00  lda     $0020
06D8  F5        push    psw
06D9  3E 01     mvi     a,$01
06DB  32 7C 0C  sta     $0C7C
06DE  F1        pop     psw
06DF  2A 7A 0C  lhld    $0C7A
06E2  23        inx     h
06E3  22 7A 0C  shld    $0C7A
06E6  CD 4E 0B  call    $0B4E
06E9  0D        dcr     c
06EA  0A        ldax    b
06EB  45        mov     b,l
06EC  52        mov     d,d
06ED  52        mov     d,d
06EE  4F        mov     c,a
06EF  52        mov     d,d
06F0  20        nop                  ;Note: Alternative opcode used
06F1  43        mov     b,e
06F2  4F        mov     c,a
06F3  55        mov     d,l
06F4  4E        mov     c,m
06F5  54        mov     d,h
06F6  20        nop                  ;Note: Alternative opcode used
06F7  00        nop
06F8  CD 8B 0B  call    $0B8B
06FB  CD 4E 0B  call    $0B4E
06FE  48        mov     c,b
06FF  0D        dcr     c
0700  0A        ldax    b
0701  00        nop
0702  2A 7E 0C  lhld    $0C7E
0705  F5        push    psw
0706  CD 1D 09  call    $091D
0709  CD 53 07  call    $0753
070C  CD 4E 0B  call    $0B4E
070F  0D        dcr     c
0710  0A        ldax    b
0711  49        mov     c,c
0712  4E        mov     c,m
0713  53        mov     d,e
0714  54        mov     d,h
0715  52        mov     d,d
0716  55        mov     d,l
0717  43        mov     b,e
0718  54        mov     d,h
0719  49        mov     c,c
071A  4F        mov     c,a
071B  4E        mov     c,m
071C  20        nop                  ;Note: Alternative opcode used
071D  53        mov     d,e
071E  45        mov     b,l
071F  51        mov     d,c
0720  55        mov     d,l
0721  45        mov     b,l
0722  4E        mov     c,m
0723  43        mov     b,e
0724  45        mov     b,l
0725  20        nop                  ;Note: Alternative opcode used
0726  57        mov     d,a
0727  41        mov     b,c
0728  53        mov     d,e
0729  20        nop                  ;Note: Alternative opcode used
072A  00        nop
072B  CD 23 07  call    $0723
072E  CD 4E 0B  call    $0B4E
0731  48        mov     c,b
0732  0D        dcr     c
0733  0A        ldax    b
0734  52        mov     d,d
0735  45        mov     b,l
0736  47        mov     b,a
0737  49        mov     c,c
0738  53        mov     d,e
0739  54        mov     d,h
073A  45        mov     b,l
073B  52        mov     d,d
073C  20        nop                  ;Note: Alternative opcode used
073D  00        nop
073E  3A 56 06  lda     $0656
0741  CD 36 07  call    $0736
0744  F1        pop     psw
0745  F5        push    psw
0746  CD 4E 0B  call    $0B4E
0749  20        nop                  ;Note: Alternative opcode used
074A  43        mov     b,e
074B  4F        mov     c,a
074C  4E        mov     c,m
074D  54        mov     d,h
074E  41        mov     b,c
074F  49        mov     c,c
0750  4E        mov     c,m
0751  53        mov     d,e
0752  20        nop                  ;Note: Alternative opcode used
0753  00        nop
0754  D5        push    d
0755  3A 55 06  lda     $0655
0758  CD 96 0B  call    $0B96
075B  CD 4E 0B  call    $0B4E
075E  0D        dcr     c
075F  0A        ldax    b
0760  42        mov     b,d
0761  55        mov     d,l
0762  54        mov     d,h
0763  20        nop                  ;Note: Alternative opcode used
0764  53        mov     d,e
0765  48        mov     c,b
0766  4F        mov     c,a
0767  55        mov     d,l
0768  4C        mov     c,h
0769  44        mov     b,h
076A  20        nop                  ;Note: Alternative opcode used
076B  43        mov     b,e
076C  4F        mov     c,a
076D  4E        mov     c,m
076E  54        mov     d,h
076F  41        mov     b,c
0770  49        mov     c,c
0771  4E        mov     c,m
0772  20        nop                  ;Note: Alternative opcode used
0773  00        nop
0774  2B        dcx     h
0775  7E        mov     a,m
0776  23        inx     h
0777  CD 96 0B  call    $0B96
077A  CD 4E 0B  call    $0B4E
077D  0D        dcr     c
077E  0A        ldax    b
077F  52        mov     d,d
0780  45        mov     b,l
0781  47        mov     b,a
0782  49        mov     c,c
0783  53        mov     d,e
0784  54        mov     d,h
0785  45        mov     b,l
0786  52        mov     d,d
0787  20        nop                  ;Note: Alternative opcode used
0788  56        mov     d,m
0789  41        mov     b,c
078A  4C        mov     c,h
078B  55        mov     d,l
078C  45        mov     b,l
078D  20        nop                  ;Note: Alternative opcode used
078E  42        mov     b,d
078F  45        mov     b,l
0790  46        mov     b,m
0791  4F        mov     c,a
0792  52        mov     d,d
0793  45        mov     b,l
0794  20        nop                  ;Note: Alternative opcode used
0795  49        mov     c,c
0796  4E        mov     c,m
0797  53        mov     d,e
0798  54        mov     d,h
0799  52        mov     d,d
079A  55        mov     d,l
079B  43        mov     b,e
079C  54        mov     d,h
079D  49        mov     c,c
079E  4F        mov     c,a
079F  4E        mov     c,m
07A0  20        nop                  ;Note: Alternative opcode used
07A1  53        mov     d,e
07A2  45        mov     b,l
07A3  51        mov     d,c
07A4  55        mov     d,l
07A5  45        mov     b,l
07A6  4E        mov     c,m
07A7  43        mov     b,e
07A8  45        mov     b,l
07A9  20        nop                  ;Note: Alternative opcode used
07AA  57        mov     d,a
07AB  41        mov     b,c
07AC  53        mov     d,e
07AD  20        nop                  ;Note: Alternative opcode used
07AE  00        nop
07AF  3A 54 06  lda     $0654
07B2  CD 96 0B  call    $0B96
07B5  D1        pop     d
07B6  CD 4E 0B  call    $0B4E
07B9  0D        dcr     c
07BA  0A        ldax    b
07BB  54        mov     d,h
07BC  45        mov     b,l
07BD  53        mov     d,e
07BE  54        mov     d,h
07BF  20        nop                  ;Note: Alternative opcode used
07C0  4E        mov     c,m
07C1  55        mov     d,l
07C2  4D        mov     c,l
07C3  42        mov     b,d
07C4  45        mov     b,l
07C5  52        mov     d,d
07C6  20        nop                  ;Note: Alternative opcode used
07C7  00        nop
07C8  D5        push    d
07C9  11 83 F3  lxi     d,$F383
07CC  19        dad
07CD  D1        pop     d
07CE  CD 6C 0C  call    $0C6C
07D1  CD 8B 0B  call    $0B8B
07D4  CD 4E 0B  call    $0B4E
07D7  48        mov     c,b
07D8  0D        dcr     c
07D9  0A        ldax    b
07DA  0A        ldax    b
07DB  00        nop
07DC  CD 2B 0C  call    $0C2B
07DF  F1        pop     psw
07E0  C9        ret
07E1  F5        push    psw
07E2  CD FE 08  call    $08FE
07E5  C3 0D 09  jmp     $090D
07E8  F1        pop     psw
07E9  E3        xthl
07EA  F5        push    psw
07EB  23        inx     h
07EC  23        inx     h
07ED  23        inx     h
07EE  AF        xra     a
07EF  BE        cmp     m
07F0  23        inx     h
07F1  C2 EF 08  jnz     $08EF
07F4  F1        pop     psw
07F5  E3        xthl
07F6  C9        ret
07F7  CD FE 08  call    $08FE
07FA  CD A1 0B  call    $0BA1
07FD  C9        ret
07FE  F5        push    psw
07FF  3A 74 0C  lda     $0C74
0802  B7        ora     a
0803  CA 0D 09  jz      $090D
0806  F1        pop     psw
0807  E3        xthl
0808  23        inx     h
0809  23        inx     h
080A  23        inx     h
080B  E3        xthl
080C  C9        ret
080D  F1        pop     psw
080E  C9        ret
080F  CD FE 08  call    $08FE
0812  C3 07 09  jmp     $0907
0815  C9        ret
0816  CD 1D 09  call    $091D
0819  C3 07 09  jmp     $0907
081C  C9        ret
081D  F5        push    psw
081E  3A 78 0C  lda     $0C78
0821  FE 01     cpi     $01
0823  CA 0D 09  jz      $090D
0826  F1        pop     psw
0827  C3 07 09  jmp     $0907
082A  CD B2 0B  call    $0BB2
082D  CD 2B 0C  call    $0C2B
0830  C9        ret
0831  F5        push    psw
0832  AF        xra     a
0833  3C        inr     a
0834  B7        ora     a
0835  C2 33 09  jnz     $0933
0838  F1        pop     psw
0839  C9        ret
083A  22 BC 09  shld    $09BC
083D  E1        pop     h
083E  E3        xthl
083F  E5        push    h
0840  F5        push    psw
0841  2A BC 09  lhld    $09BC
0844  2B        dcx     h
0845  70        mov     m,b
0846  2B        dcx     h
0847  71        mov     m,c
0848  2B        dcx     h
0849  72        mov     m,d
084A  2B        dcx     h
084B  73        mov     m,e
084C  D1        pop     d
084D  2B        dcx     h
084E  72        mov     m,d
084F  2B        dcx     h
0850  73        mov     m,e
0851  EB        xchg
0852  E3        xthl
0853  EB        xchg
0854  2B        dcx     h
0855  72        mov     m,d
0856  2B        dcx     h
0857  73        mov     m,e
0858  EB        xchg
0859  E3        xthl
085A  EB        xchg
085B  E3        xthl
085C  CD 3C 0A  call    $0A3C
085F  08        nop                  ;Note: Alternative opcode used
0860  D9        ret                  ;Note: Alternative opcode used
0861  E3        xthl
0862  F5        push    psw
0863  2B        dcx     h
0864  70        mov     m,b
0865  2B        dcx     h
0866  71        mov     m,c
0867  2B        dcx     h
0868  72        mov     m,d
0869  2B        dcx     h
086A  73        mov     m,e
086B  D1        pop     d
086C  2B        dcx     h
086D  72        mov     m,d
086E  2B        dcx     h
086F  73        mov     m,e
0870  EB        xchg
0871  E3        xthl
0872  EB        xchg
0873  2B        dcx     h
0874  72        mov     m,d
0875  2B        dcx     h
0876  73        mov     m,e
0877  E5        push    h
0878  CD 3C 0A  call    $0A3C
087B  08        nop                  ;Note: Alternative opcode used
087C  D9        ret                  ;Note: Alternative opcode used
087D  E1        pop     h
087E  CD 3C 0A  call    $0A3C
0881  DD E5 CD  call    $CDE5        ;Note: Alternative opcode used
0884  31 0A E5  lxi     sp,$E50A
0887  00        nop
0888  D1        pop     d
0889  2B        dcx     h
088A  72        mov     m,d
088B  2B        dcx     h
088C  73        mov     m,e
088D  CD 3C 0A  call    $0A3C
0890  FD E5 CD  call    $CDE5        ;Note: Alternative opcode used
0893  31 0A E5  lxi     sp,$E50A
0896  00        nop
0897  D1        pop     d
0898  2B        dcx     h
0899  72        mov     m,d
089A  2B        dcx     h
089B  73        mov     m,e
089C  EB        xchg
089D  21 FE FF  lxi     h,$FFFE
08A0  39        dad     sp
08A1  EB        xchg
08A2  2B        dcx     h
08A3  72        mov     m,d
08A4  2B        dcx     h
08A5  73        mov     m,e
08A6  CD 3C 0A  call    $0A3C
08A9  ED 57 2B  call    $2B57        ;Note: Alternative opcode used
08AC  77        mov     m,a
08AD  CD 3C 0A  call    $0A3C
08B0  ED 5F 2B  call    $2B5F        ;Note: Alternative opcode used
08B3  77        mov     m,a
08B4  E1        pop     h
08B5  2A BC 09  lhld    $09BC
08B8  CD C0 09  call    $09C0
08BB  C9        ret
08BC  AA        xra     d
08BD  0A        ldax    b
08BE  00        nop
08BF  00        nop
08C0  2B        dcx     h
08C1  46        mov     b,m
08C2  2B        dcx     h
08C3  4E        mov     c,m
08C4  2B        dcx     h
08C5  56        mov     d,m
08C6  2B        dcx     h
08C7  5E        mov     e,m
08C8  D5        push    d
08C9  2B        dcx     h
08CA  56        mov     d,m
08CB  2B        dcx     h
08CC  5E        mov     e,m
08CD  D5        push    d
08CE  F1        pop     psw
08CF  2B        dcx     h
08D0  56        mov     d,m
08D1  2B        dcx     h
08D2  5E        mov     e,m
08D3  E3        xthl
08D4  EB        xchg
08D5  CD 31 0A  call    $0A31
08D8  33        inx     sp
08D9  33        inx     sp
08DA  CD 31 0A  call    $0A31
08DD  C9        ret
08DE  00        nop
08DF  CD 3C 0A  call    $0A3C
08E2  08        nop                  ;Note: Alternative opcode used
08E3  D9        ret                  ;Note: Alternative opcode used
08E4  E1        pop     h
08E5  2B        dcx     h
08E6  46        mov     b,m
08E7  2B        dcx     h
08E8  4E        mov     c,m
08E9  2B        dcx     h
08EA  56        mov     d,m
08EB  2B        dcx     h
08EC  5E        mov     e,m
08ED  D5        push    d
08EE  2B        dcx     h
08EF  56        mov     d,m
08F0  2B        dcx     h
08F1  5E        mov     e,m
08F2  D5        push    d
08F3  F1        pop     psw
08F4  2B        dcx     h
08F5  56        mov     d,m
08F6  2B        dcx     h
08F7  5E        mov     e,m
08F8  D5        push    d
08F9  2B        dcx     h
08FA  56        mov     d,m
08FB  2B        dcx     h
08FC  5E        mov     e,m
08FD  D5        push    d
08FE  CD 3C 0A  call    $0A3C
0901  DD E1 CD  call    $CDE1        ;Note: Alternative opcode used
0904  31 0A D1  lxi     sp,$D10A
0907  00        nop
0908  2B        dcx     h
0909  56        mov     d,m
090A  2B        dcx     h
090B  5E        mov     e,m
090C  D5        push    d
090D  CD 3C 0A  call    $0A3C
0910  FD E1 CD  call    $CDE1        ;Note: Alternative opcode used
0913  31 0A D1  lxi     sp,$D10A
0916  00        nop
0917  2B        dcx     h
0918  2B        dcx     h
0919  F5        push    psw
091A  2B        dcx     h
091B  7E        mov     a,m
091C  CD 3C 0A  call    $0A3C
091F  ED 47 2B  call    $2B47        ;Note: Alternative opcode used
0922  7E        mov     a,m
0923  CD 3C 0A  call    $0A3C
0926  ED 4F F1  call    $F14F        ;Note: Alternative opcode used
0929  E1        pop     h
092A  D1        pop     d
092B  CD 3C 0A  call    $0A3C
092E  08        nop                  ;Note: Alternative opcode used
092F  D9        ret                  ;Note: Alternative opcode used
0930  C9        ret
0931  F5        push    psw
0932  3A 72 0C  lda     $0C72
0935  B7        ora     a
0936  CA 0D 09  jz      $090D
0939  C3 44 0A  jmp     $0A44
093C  F5        push    psw
093D  3A 72 0C  lda     $0C72
0940  B7        ora     a
0941  C2 0D 09  jnz     $090D
0944  F1        pop     psw
0945  E3        xthl
0946  23        inx     h
0947  23        inx     h
0948  E3        xthl
0949  C9        ret
094A  11 09 01  lxi     d,$0109
094D  2A 7E 0C  lhld    $0C7E
0950  CD 54 0A  call    $0A54
0953  C9        ret
0954  C5        push    b
0955  7C        mov     a,h
0956  2F        cma
0957  47        mov     b,a
0958  7D        mov     a,l
0959  2F        cma
095A  4F        mov     c,a
095B  03        inx     b
095C  AF        xra     a
095D  62        mov     h,d
095E  6B        mov     l,e
095F  86        add     m
0960  09        dad     b
0961  13        inx     d
0962  D2 5D 0A  jnc     $0A5D
0965  C1        pop     b
0966  C9        ret
0967  CD 4A 0A  call    $0A4A
096A  B7        ora     a
096B  C4 8A 03  cnz     $038A
096E  1E 44     mvi     e,'D'
0970  CD EA 03  call    $03EA
0973  C9        ret
0974  00        nop
0975  00        nop
0976  00        nop
0977  00        nop
0978  78        mov     a,b
0979  0A        ldax    b
097A  00        nop
097B  00        nop
097C  00        nop
097D  00        nop
097E  00        nop
097F  00        nop
0980  00        nop
0981  00        nop
0982  00        nop
0983  00        nop
0984  00        nop
0985  00        nop
0986  00        nop
0987  00        nop
0988  00        nop
0989  00        nop
098A  00        nop
098B  00        nop
098C  00        nop
098D  00        nop
098E  00        nop
098F  00        nop
0990  00        nop
0991  00        nop
0992  74        mov     m,h
0993  00        nop
0994  EF        rst     5
0995  2F        cma
0996  0F        rrc
0997  00        nop
0998  10        nop                  ;Note: Alternative opcode used
0999  00        nop
099A  11 00 12  lxi     d,$1200
099D  00        nop
099E  13        inx     d
099F  00        nop
09A0  14        inr     d
09A1  00        nop
09A2  5B        mov     e,e
09A3  04        inr     b
09A4  00        nop
09A5  00        nop
09A6  F8        rm
09A7  FF        rst     7
09A8  F7        rst     6
09A9  00        nop
09AA  AA        xra     d
09AB  0A        ldax    b
09AC  00        nop
09AD  00        nop
09AE  00        nop
09AF  00        nop
09B0  00        nop
09B1  00        nop
09B2  00        nop
09B3  00        nop
09B4  00        nop
09B5  00        nop
09B6  00        nop
09B7  00        nop
09B8  00        nop
09B9  00        nop
09BA  00        nop
09BB  00        nop
09BC  00        nop
09BD  00        nop
09BE  00        nop
09BF  00        nop
09C0  00        nop
09C1  00        nop
09C2  00        nop
09C3  00        nop
09C4  4B        mov     c,e
09C5  00        nop
09C6  EF        rst     5
09C7  2F        cma
09C8  0F        rrc
09C9  00        nop
09CA  10        nop                  ;Note: Alternative opcode used
09CB  00        nop
09CC  11 00 12  lxi     d,$1200
09CF  00        nop
09D0  13        inx     d
09D1  00        nop
09D2  14        inr     d
09D3  00        nop
09D4  5B        mov     e,e
09D5  04        inr     b
09D6  00        nop
09D7  00        nop
09D8  F8        rm
09D9  FF        rst     7
09DA  F7        rst     6
09DB  00        nop
09DC  DC 0A 01  cc      $010A
09DF  00        nop
09E0  02        stax    b
09E1  00        nop
09E2  03        inx     b
09E3  00        nop
09E4  04        inr     b
09E5  00        nop
09E6  05        dcr     b
09E7  00        nop
09E8  06 00     mvi     b,$00
09EA  07        rlc
09EB  00        nop
09EC  08        nop                  ;Note: Alternative opcode used
09ED  00        nop
09EE  09        dad     b
09EF  00        nop
09F0  0A        ldax    b
09F1  00        nop
09F2  0B        dcx     b
09F3  00        nop
09F4  0C        inr     c
09F5  00        nop
09F6  0D        dcr     c
09F7  00        nop
09F8  0E 00     mvi     c,$00
09FA  0F        rrc
09FB  00        nop
09FC  10        nop                  ;Note: Alternative opcode used
09FD  00        nop
09FE  11 00 12  lxi     d,$1200
0A01  00        nop
0A02  13        inx     d
0A03  00        nop
0A04  14        inr     d
0A05  00        nop
0A06  15        dcr     d
0A07  00        nop
0A08  16 00     mvi     d,$00
0A0A  17        ral
0A0B  00        nop
0A0C  18        nop                  ;Note: Alternative opcode used
0A0D  00        nop
0A0E  C5        push    b
0A0F  D5        push    d
0A10  E5        push    h
0A11  F5        push    psw
0A12  5F        mov     e,a
0A13  CD EA 03  call    $03EA
0A16  F1        pop     psw
0A17  E1        pop     h
0A18  D1        pop     d
0A19  C1        pop     b
0A1A  C9        ret
0A1B  C5        push    b
0A1C  D5        push    d
0A1D  E5        push    h
0A1E  0E 01     mvi     c,$01
0A20  CD 05 00  call    $0005
0A23  E1        pop     h
0A24  D1        pop     d
0A25  C1        pop     b
0A26  C9        ret
0A27  E5        push    h
0A28  C5        push    b
0A29  D5        push    d
0A2A  F5        push    psw
0A2B  79        mov     a,c
0A2C  FE 02     cpi     $02
0A2E  C2 3D 0B  jnz     $0B3D
0A31  7B        mov     a,e
0A32  FE 0D     cpi     $0D
0A34  CA 49 0B  jz      $0B49
0A37  CD 33 00  call    $0033
0A3A  C3 49 0B  jmp     $0B49
0A3D  FE 01     cpi     $01
0A3F  C2 49 0B  jnz     $0B49
0A42  CD 2B 00  call    $002B
0A45  B7        ora     a
0A46  CA 42 0B  jz      $0B42
0A49  F1        pop     psw
0A4A  D1        pop     d
0A4B  C1        pop     b
0A4C  E1        pop     h
0A4D  C9        ret
0A4E  E3        xthl
0A4F  F5        push    psw
0A50  7E        mov     a,m
0A51  23        inx     h
0A52  B7        ora     a
0A53  C2 59 0B  jnz     $0B59
0A56  F1        pop     psw
0A57  E3        xthl
0A58  C9        ret
0A59  CD 0E 0B  call    $0B0E
0A5C  C3 50 0B  jmp     $0B50
0A5F  F5        push    psw
0A60  E5        push    h
0A61  D5        push    d
0A62  E6 0F     ani     $0F
0A64  21 73 0B  lxi     h,$0B73
0A67  16 00     mvi     d,$00
0A69  5F        mov     e,a
0A6A  19        dad
0A6B  7E        mov     a,m
0A6C  CD 0E 0B  call    $0B0E
0A6F  D1        pop     d
0A70  E1        pop     h
0A71  F1        pop     psw
0A72  C9        ret
0A73  30        nop                  ;Note: Alternative opcode used
0A74  31 32 33  lxi     sp,$3332
0A77  34        inr     m
0A78  35        dcr     m
0A79  36 37     mvi     m,$37
0A7B  38        nop                  ;Note: Alternative opcode used
0A7C  39        dad     sp
0A7D  41        mov     b,c
0A7E  42        mov     b,d
0A7F  43        mov     b,e
0A80  44        mov     b,h
0A81  45        mov     b,l
0A82  46        mov     b,m
0A83  D5        push    d
0A84  16 00     mvi     d,$00
0A86  5F        mov     e,a
0A87  19        dad
0A88  7E        mov     a,m
0A89  D1        pop     d
0A8A  C9        ret
0A8B  F5        push    psw
0A8C  7C        mov     a,h
0A8D  CD A1 0B  call    $0BA1
0A90  7D        mov     a,l
0A91  CD A1 0B  call    $0BA1
0A94  F1        pop     psw
0A95  C9        ret
0A96  F5        push    psw
0A97  CD A1 0B  call    $0BA1
0A9A  3E 48     mvi     a,'H'
0A9C  CD 0E 0B  call    $0B0E
0A9F  F1        pop     psw
0AA0  C9        ret
0AA1  F5        push    psw
0AA2  0F        rrc
0AA3  0F        rrc
0AA4  0F        rrc
0AA5  0F        rrc
0AA6  CD 5F 0B  call    $0B5F
0AA9  0F        rrc
0AAA  0F        rrc
0AAB  0F        rrc
0AAC  0F        rrc
0AAD  CD 5F 0B  call    $0B5F
0AB0  F1        pop     psw
0AB1  C9        ret
0AB2  CD C3 0B  call    $0BC3
0AB5  CD 3C 0A  call    $0A3C
0AB8  08        nop                  ;Note: Alternative opcode used
0AB9  D9        ret                  ;Note: Alternative opcode used
0ABA  CD C3 0B  call    $0BC3
0ABD  CD 3C 0A  call    $0A3C
0AC0  08        nop                  ;Note: Alternative opcode used
0AC1  D9        ret                  ;Note: Alternative opcode used
0AC2  C9        ret
0AC3  22 2A 0C  shld    $0C2A
0AC6  CD 4E 0B  call    $0B4E
0AC9  0D        dcr     c
0ACA  0A        ldax    b
0ACB  20        nop                  ;Note: Alternative opcode used
0ACC  50        mov     d,b
0ACD  20        nop                  ;Note: Alternative opcode used
0ACE  43        mov     b,e
0ACF  20        nop                  ;Note: Alternative opcode used
0AD0  20        nop                  ;Note: Alternative opcode used
0AD1  41        mov     b,c
0AD2  20        nop                  ;Note: Alternative opcode used
0AD3  46        mov     b,m
0AD4  20        nop                  ;Note: Alternative opcode used
0AD5  20        nop                  ;Note: Alternative opcode used
0AD6  42        mov     b,d
0AD7  20        nop                  ;Note: Alternative opcode used
0AD8  43        mov     b,e
0AD9  20        nop                  ;Note: Alternative opcode used
0ADA  20        nop                  ;Note: Alternative opcode used
0ADB  44        mov     b,h
0ADC  20        nop                  ;Note: Alternative opcode used
0ADD  45        mov     b,l
0ADE  20        nop                  ;Note: Alternative opcode used
0ADF  20        nop                  ;Note: Alternative opcode used
0AE0  48        mov     c,b
0AE1  20        nop                  ;Note: Alternative opcode used
0AE2  4C        mov     c,h
0AE3  20        nop                  ;Note: Alternative opcode used
0AE4  20        nop                  ;Note: Alternative opcode used
0AE5  53        mov     d,e
0AE6  20        nop                  ;Note: Alternative opcode used
0AE7  50        mov     d,b
0AE8  0D        dcr     c
0AE9  0A        ldax    b
0AEA  00        nop
0AEB  E1        pop     h
0AEC  E5        push    h
0AED  F5        push    psw
0AEE  CD 8B 0B  call    $0B8B
0AF1  CD 6C 0C  call    $0C6C
0AF4  F1        pop     psw
0AF5  F5        push    psw
0AF6  CD A1 0B  call    $0BA1
0AF9  E1        pop     h
0AFA  E5        push    h
0AFB  7D        mov     a,l
0AFC  CD A1 0B  call    $0BA1
0AFF  CD 6C 0C  call    $0C6C
0B02  60        mov     h,b
0B03  69        mov     l,c
0B04  CD 8B 0B  call    $0B8B
0B07  CD 6C 0C  call    $0C6C
0B0A  62        mov     h,d
0B0B  6B        mov     l,e
0B0C  CD 8B 0B  call    $0B8B
0B0F  CD 6C 0C  call    $0C6C
0B12  2A 2A 0C  lhld    $0C2A
0B15  CD 8B 0B  call    $0B8B
0B18  CD 6C 0C  call    $0C6C
0B1B  21 00 00  lxi     h,$0000
0B1E  39        dad     sp
0B1F  CD 8B 0B  call    $0B8B
0B22  F1        pop     psw
0B23  2A 2A 0C  lhld    $0C2A
0B26  CD 65 0C  call    $0C65
0B29  C9        ret
0B2A  02        stax    b
0B2B  CD F6 20  call    $20F6
0B2E  C7        rst     0
0B2F  FE 53     cpi     'S'
0B31  CA 0D 09  jz      $090D
0B34  FE 43     cpi     'C'
0B36  CA 0D 09  jz      $090D
0B39  CD 1B 0B  call    $0B1B
0B3C  32 4C 0C  sta     $0C4C
0B3F  F5        push    psw
0B40  2F        cma
0B41  3C        inr     a
0B42  32 4D 0C  sta     $0C4D
0B45  F1        pop     psw
0B46  FE 03     cpi     $03
0B48  C2 0D 09  jnz     $090D
0B4B  C7        rst     0
0B4C  03        inx     b
0B4D  FD F5 3A  call    $3AF5        ;Note: Alternative opcode used
0B50  4C        mov     c,h
0B51  0C        inr     c
0B52  FE 53     cpi     'S'
0B54  CA 0D 09  jz      $090D
0B57  CD 4E 0B  call    $0B4E
0B5A  07        rlc
0B5B  00        nop
0B5C  F1        pop     psw
0B5D  C9        ret
0B5E  CD B2 0B  call    $0BB2
0B61  CD 2B 0C  call    $0C2B
0B64  C9        ret
0B65  CD 4E 0B  call    $0B4E
0B68  0D        dcr     c
0B69  0A        ldax    b
0B6A  00        nop
0B6B  C9        ret
0B6C  CD 4E 0B  call    $0B4E
0B6F  20        nop                  ;Note: Alternative opcode used
0B70  00        nop
0B71  C9        ret
0B72  01 01 01  lxi     b,$0101
0B75  01 58 00  lxi     b,$0058
0B78  00        nop
0B79  17        ral
0B7A  00        nop
0B7B  00        nop
0B7C  00        nop
0B7D  00        nop
0B7E  46        mov     b,m
0B7F  10        nop                  ;Note: Alternative opcode used
0B80  01 19 15  lxi     b,$1519
0B83  EF        rst     5
0B84  58        mov     e,b
0B85  59        mov     e,c
0B86  00        nop
0B87  01 05 00  lxi     b,$0005
0B8A  58        mov     e,b
0B8B  59        mov     e,c
0B8C  00        nop
0B8D  00        nop
0B8E  05        dcr     b
0B8F  42        mov     b,d
0B90  58        mov     e,b
0B91  59        mov     e,c
0B92  05        dcr     b
0B93  40        mov     b,b
0B94  58        mov     e,b
0B95  59        mov     e,c
0B96  07        rlc
0B97  2E 58     mvi     l,'X'
0B99  59        mov     e,c
0B9A  01 18 58  lxi     b,$5818
0B9D  59        mov     e,c
0B9E  01 19 05  lxi     b,$0519
0BA1  08        nop                  ;Note: Alternative opcode used
0BA2  58        mov     e,b
0BA3  59        mov     e,c
0BA4  01 18 05  lxi     b,$0518
0BA7  0A        ldax    b
0BA8  58        mov     e,b
0BA9  59        mov     e,c
0BAA  05        dcr     b
0BAB  00        nop
0BAC  58        mov     e,b
0BAD  59        mov     e,c
0BAE  03        inx     b
0BAF  18        nop                  ;Note: Alternative opcode used
0BB0  58        mov     e,b
0BB1  59        mov     e,c
0BB2  02        stax    b
0BB3  01 58 59  lxi     b,$5958
0BB6  02        stax    b
0BB7  00        nop
0BB8  05        dcr     b
0BB9  42        mov     b,d
0BBA  58        mov     e,b
0BBB  59        mov     e,c
0BBC  05        dcr     b
0BBD  40        mov     b,b
0BBE  58        mov     e,b
0BBF  59        mov     e,c
0BC0  07        rlc
0BC1  46        mov     b,m
0BC2  58        mov     e,b
0BC3  59        mov     e,c
0BC4  03        inx     b
0BC5  17        ral
0BC6  58        mov     e,b
0BC7  59        mov     e,c
0BC8  03        inx     b
0BC9  18        nop                  ;Note: Alternative opcode used
0BCA  05        dcr     b
0BCB  08        nop                  ;Note: Alternative opcode used
0BCC  58        mov     e,b
0BCD  59        mov     e,c
0BCE  03        inx     b
0BCF  17        ral
0BD0  05        dcr     b
0BD1  02        stax    b
0BD2  58        mov     e,b
0BD3  59        mov     e,c
0BD4  05        dcr     b
0BD5  00        nop
0BD6  58        mov     e,b
0BD7  59        mov     e,c
0BD8  07        rlc
0BD9  47        mov     b,a
0BDA  58        mov     e,b
0BDB  59        mov     e,c
0BDC  06 01     mvi     b,$01
0BDE  58        mov     e,b
0BDF  59        mov     e,c
0BE0  05        dcr     b
0BE1  42        mov     b,d
0BE2  06 00     mvi     b,$00
0BE4  58        mov     e,b
0BE5  59        mov     e,c
0BE6  05        dcr     b
0BE7  46        mov     b,m
0BE8  58        mov     e,b
0BE9  59        mov     e,c
0BEA  05        dcr     b
0BEB  44        mov     b,h
0BEC  07        rlc
0BED  8E        adc     m
0BEE  58        mov     e,b
0BEF  59        mov     e,c
0BF0  07        rlc
0BF1  8D        adc     l
0BF2  58        mov     e,b
0BF3  59        mov     e,c
0BF4  05        dcr     b
0BF5  88        adc     b
0BF6  07        rlc
0BF7  8E        adc     m
0BF8  58        mov     e,b
0BF9  59        mov     e,c
0BFA  05        dcr     b
0BFB  8A        adc     d
0BFC  07        rlc
0BFD  8D        adc     l
0BFE  58        mov     e,b
0BFF  59        mov     e,c
0C00  04        inr     b
0C01  FF        rst     7
0C02  05        dcr     b
0C03  BA        cmp     d
0C04  58        mov     e,b
0C05  59        mov     e,c
0C06  05        dcr     b
0C07  A9        xra     c
0C08  58        mov     e,b
0C09  59        mov     e,c
0C0A  05        dcr     b
0C0B  B0        ora     b
0C0C  06 30     mvi     b,$30
0C0E  07        rlc
0C0F  84        add     h
0C10  58        mov     e,b
0C11  59        mov     e,c
0C12  04        inr     b
0C13  00        nop
0C14  05        dcr     b
0C15  50        mov     d,b
0C16  58        mov     e,b
0C17  59        mov     e,c
0C18  04        inr     b
0C19  FF        rst     7
0C1A  05        dcr     b
0C1B  BA        cmp     d
0C1C  58        mov     e,b
0C1D  59        mov     e,c
0C1E  05        dcr     b
0C1F  A9        xra     c
0C20  58        mov     e,b
0C21  59        mov     e,c
0C22  58        mov     e,b
0C23  59        mov     e,c
0C24  00        nop
0C25  18        nop                  ;Note: Alternative opcode used
0C26  58        mov     e,b
0C27  59        mov     e,c
0C28  00        nop
0C29  00        nop
0C2A  58        mov     e,b
0C2B  59        mov     e,c
0C2C  00        nop
0C2D  17        ral
0C2E  58        mov     e,b
0C2F  59        mov     e,c
0C30  00        nop
0C31  30        nop                  ;Note: Alternative opcode used
0C32  58        mov     e,b
0C33  59        mov     e,c
0C34  00        nop
0C35  84        add     h
0C36  58        mov     e,b
0C37  59        mov     e,c
0C38  00        nop
0C39  FF        rst     7
0C3A  58        mov     e,b
0C3B  59        mov     e,c
0C3C  01 FF 58  lxi     b,$58FF
0C3F  59        mov     e,c
0C40  58        mov     e,b
0C41  59        mov     e,c
0C42  01 00 58  lxi     b,$5800
0C45  59        mov     e,c
0C46  01 17 58  lxi     b,$5817
0C49  59        mov     e,c
0C4A  01 30 58  lxi     b,$5830
0C4D  59        mov     e,c
0C4E  01 84 58  lxi     b,$5884
0C51  59        mov     e,c
0C52  01 FF 58  lxi     b,$58FF
0C55  59        mov     e,c
0C56  02        stax    b
0C57  FF        rst     7
0C58  58        mov     e,b
0C59  59        mov     e,c
0C5A  58        mov     e,b
0C5B  59        mov     e,c
0C5C  58        mov     e,b
0C5D  59        mov     e,c
0C5E  02        stax    b
0C5F  17        ral
0C60  58        mov     e,b
0C61  59        mov     e,c
0C62  02        stax    b
0C63  30        nop                  ;Note: Alternative opcode used
0C64  58        mov     e,b
0C65  59        mov     e,c
0C66  02        stax    b
0C67  84        add     h
0C68  58        mov     e,b
0C69  59        mov     e,c
0C6A  02        stax    b
0C6B  FF        rst     7
0C6C  58        mov     e,b
0C6D  59        mov     e,c
0C6E  03        inx     b
0C6F  FF        rst     7
0C70  58        mov     e,b
0C71  59        mov     e,c
0C72  58        mov     e,b
0C73  59        mov     e,c
0C74  58        mov     e,b
0C75  59        mov     e,c
0C76  58        mov     e,b
0C77  59        mov     e,c
0C78  03        inx     b
0C79  30        nop                  ;Note: Alternative opcode used
0C7A  58        mov     e,b
0C7B  59        mov     e,c
0C7C  03        inx     b
0C7D  84        add     h
0C7E  58        mov     e,b
0C7F  59        mov     e,c
0C80  03        inx     b
0C81  FF        rst     7
0C82  58        mov     e,b
0C83  59        mov     e,c
0C84  06 FF     mvi     b,$FF
0C86  58        mov     e,b
0C87  59        mov     e,c
0C88  58        mov     e,b
0C89  59        mov     e,c
0C8A  58        mov     e,b
0C8B  59        mov     e,c
0C8C  58        mov     e,b
0C8D  59        mov     e,c
0C8E  58        mov     e,b
0C8F  59        mov     e,c
0C90  06 84     mvi     b,$84
0C92  58        mov     e,b
0C93  59        mov     e,c
0C94  06 FF     mvi     b,$FF
0C96  58        mov     e,b
0C97  59        mov     e,c
0C98  07        rlc
0C99  FF        rst     7
0C9A  58        mov     e,b
0C9B  59        mov     e,c
0C9C  58        mov     e,b
0C9D  59        mov     e,c
0C9E  58        mov     e,b
0C9F  59        mov     e,c
0CA0  58        mov     e,b
0CA1  59        mov     e,c
0CA2  58        mov     e,b
0CA3  59        mov     e,c
0CA4  58        mov     e,b
0CA5  59        mov     e,c
0CA6  58        mov     e,b
0CA7  59        mov     e,c
0CA8  58        mov     e,b
0CA9  59        mov     e,c
0CAA  58        mov     e,b
0CAB  59        mov     e,c
0CAC  58        mov     e,b
0CAD  59        mov     e,c
0CAE  58        mov     e,b
0CAF  59        mov     e,c
0CB0  58        mov     e,b
0CB1  59        mov     e,c
0CB2  58        mov     e,b
0CB3  59        mov     e,c
0CB4  58        mov     e,b
0CB5  59        mov     e,c
0CB6  58        mov     e,b
0CB7  59        mov     e,c
0CB8  04        inr     b
0CB9  FE 05     cpi     $05
0CBB  B9        cmp     c
0CBC  58        mov     e,b
0CBD  59        mov     e,c
0CBE  04        inr     b
0CBF  FD 58 59  call    $5958        ;Note: Alternative opcode used
0CC2  04        inr     b
0CC3  FC 58 59  cm      $5958
0CC6  04        inr     b
0CC7  FB        ei
0CC8  58        mov     e,b
0CC9  59        mov     e,c
0CCA  04        inr     b
0CCB  FA 58 59  jm      $5958
0CCE  04        inr     b
0CCF  F9        sphl
0CD0  58        mov     e,b
0CD1  59        mov     e,c
0CD2  04        inr     b
0CD3  F2 05 B1  jp      $B105
0CD6  58        mov     e,b
0CD7  59        mov     e,c
0CD8  58        mov     e,b
0CD9  59        mov     e,c
0CDA  58        mov     e,b
0CDB  59        mov     e,c
0CDC  58        mov     e,b
0CDD  59        mov     e,c
0CDE  58        mov     e,b
0CDF  59        mov     e,c
0CE0  58        mov     e,b
0CE1  59        mov     e,c
0CE2  58        mov     e,b
0CE3  59        mov     e,c
0CE4  04        inr     b
0CE5  F3        di
0CE6  05        dcr     b
0CE7  B3        ora     e
0CE8  58        mov     e,b
0CE9  59        mov     e,c
0CEA  04        inr     b
0CEB  F4 58 59  cp      $5958
0CEE  04        inr     b
0CEF  F5        push    psw
0CF0  58        mov     e,b
0CF1  59        mov     e,c
0CF2  04        inr     b
0CF3  F6 58     ori     'X'
0CF5  59        mov     e,c
0CF6  04        inr     b
0CF7  F7        rst     6
0CF8  58        mov     e,b
0CF9  59        mov     e,c
0CFA  04        inr     b
0CFB  F8        rm
0CFC  05        dcr     b
0CFD  BB        cmp     e
0CFE  58        mov     e,b
0CFF  59        mov     e,c
0D00  04        inr     b
0D01  00        nop
0D02  05        dcr     b
0D03  42        mov     b,d
0D04  58        mov     e,b
0D05  59        mov     e,c
0D06  05        dcr     b
0D07  54        mov     d,h
0D08  58        mov     e,b
0D09  59        mov     e,c
0D0A  58        mov     e,b
0D0B  59        mov     e,c
0D0C  58        mov     e,b
0D0D  59        mov     e,c
0D0E  58        mov     e,b
0D0F  59        mov     e,c
0D10  58        mov     e,b
0D11  59        mov     e,c
0D12  58        mov     e,b
0D13  59        mov     e,c
0D14  58        mov     e,b
0D15  59        mov     e,c
0D16  04        inr     b
0D17  FF        rst     7
0D18  05        dcr     b
0D19  AC        xra     h
0D1A  58        mov     e,b
0D1B  59        mov     e,c
0D1C  04        inr     b
0D1D  00        nop
0D1E  05        dcr     b
0D1F  44        mov     b,h
0D20  58        mov     e,b
0D21  59        mov     e,c
0D22  04        inr     b
0D23  FF        rst     7
0D24  05        dcr     b
0D25  AC        xra     h
0D26  58        mov     e,b
0D27  59        mov     e,c
0D28  04        inr     b
0D29  00        nop
0D2A  05        dcr     b
0D2B  44        mov     b,h
0D2C  58        mov     e,b
0D2D  59        mov     e,c
0D2E  04        inr     b
0D2F  FF        rst     7
0D30  05        dcr     b
0D31  AC        xra     h
0D32  58        mov     e,b
0D33  59        mov     e,c
0D34  04        inr     b
0D35  00        nop
0D36  05        dcr     b
0D37  44        mov     b,h
0D38  58        mov     e,b
0D39  59        mov     e,c
0D3A  58        mov     e,b
0D3B  59        mov     e,c
0D3C  04        inr     b
0D3D  FF        rst     7
0D3E  05        dcr     b
0D3F  AC        xra     h
0D40  58        mov     e,b
0D41  59        mov     e,c
0D42  58        mov     e,b
0D43  59        mov     e,c
0D44  58        mov     e,b
0D45  59        mov     e,c
0D46  58        mov     e,b
0D47  59        mov     e,c
0D48  58        mov     e,b
0D49  59        mov     e,c
0D4A  58        mov     e,b
0D4B  59        mov     e,c
0D4C  58        mov     e,b
0D4D  59        mov     e,c
0D4E  05        dcr     b
0D4F  6A        mov     l,d
0D50  58        mov     e,b
0D51  59        mov     e,c
0D52  58        mov     e,b
0D53  59        mov     e,c
0D54  58        mov     e,b
0D55  59        mov     e,c
0D56  58        mov     e,b
0D57  59        mov     e,c
0D58  58        mov     e,b
0D59  59        mov     e,c
0D5A  58        mov     e,b
0D5B  59        mov     e,c
0D5C  58        mov     e,b
0D5D  59        mov     e,c
0D5E  58        mov     e,b
0D5F  59        mov     e,c
0D60  58        mov     e,b
0D61  59        mov     e,c
0D62  00        nop
0D63  02        stax    b
0D64  58        mov     e,b
0D65  59        mov     e,c
0D66  01 03 58  lxi     b,$5803
0D69  59        mov     e,c
0D6A  02        stax    b
0D6B  04        inr     b
0D6C  58        mov     e,b
0D6D  59        mov     e,c
0D6E  03        inx     b
0D6F  05        dcr     b
0D70  58        mov     e,b
0D71  59        mov     e,c
0D72  06 06     mvi     b,$06
0D74  58        mov     e,b
0D75  59        mov     e,c
0D76  07        rlc
0D77  07        rlc
0D78  58        mov     e,b
0D79  59        mov     e,c
0D7A  04        inr     b
0D7B  09        dad     b
0D7C  58        mov     e,b
0D7D  59        mov     e,c
0D7E  04        inr     b
0D7F  13        inx     d
0D80  05        dcr     b
0D81  10        nop                  ;Note: Alternative opcode used
0D82  58        mov     e,b
0D83  59        mov     e,c
0D84  04        inr     b
0D85  1E 05     mvi     e,$05
0D87  08        nop                  ;Note: Alternative opcode used
0D88  58        mov     e,b
0D89  59        mov     e,c
0D8A  04        inr     b
0D8B  12        stax    d
0D8C  05        dcr     b
0D8D  02        stax    b
0D8E  58        mov     e,b
0D8F  59        mov     e,c
0D90  04        inr     b
0D91  05        dcr     b
0D92  05        dcr     b
0D93  12        stax    d
0D94  58        mov     e,b
0D95  59        mov     e,c
0D96  04        inr     b
0D97  04        inr     b
0D98  05        dcr     b
0D99  10        nop                  ;Note: Alternative opcode used
0D9A  58        mov     e,b
0D9B  59        mov     e,c
0D9C  04        inr     b
0D9D  0B        dcx     b
0D9E  05        dcr     b
0D9F  08        nop                  ;Note: Alternative opcode used
0DA0  58        mov     e,b
0DA1  59        mov     e,c
0DA2  04        inr     b
0DA3  1B        dcx     d
0DA4  05        dcr     b
0DA5  0C        inr     c
0DA6  58        mov     e,b
0DA7  59        mov     e,c
0DA8  05        dcr     b
0DA9  02        stax    b
0DAA  58        mov     e,b
0DAB  59        mov     e,c
0DAC  06 63     mvi     b,'c'
0DAE  58        mov     e,b
0DAF  59        mov     e,c
0DB0  00        nop
0DB1  63        mov     h,e
0DB2  01 07 58  lxi     b,$5807
0DB5  59        mov     e,c
0DB6  00        nop
0DB7  58        mov     e,b
0DB8  58        mov     e,b
0DB9  59        mov     e,c
0DBA  02        stax    b
0DBB  58        mov     e,b
0DBC  03        inx     b
0DBD  07        rlc
0DBE  58        mov     e,b
0DBF  59        mov     e,c
0DC0  06 1B     mvi     b,$1B
0DC2  07        rlc
0DC3  02        stax    b
0DC4  58        mov     e,b
0DC5  59        mov     e,c
0DC6  58        mov     e,b
0DC7  59        mov     e,c
0DC8  00        nop
0DC9  0C        inr     c
0DCA  01 76 58  lxi     b,$5876
0DCD  59        mov     e,c
0DCE  02        stax    b
0DCF  00        nop
0DD0  03        inx     b
0DD1  13        inx     d
0DD2  58        mov     e,b
0DD3  59        mov     e,c
0DD4  06 00     mvi     b,$00
0DD6  07        rlc
0DD7  14        inr     d
0DD8  58        mov     e,b
0DD9  59        mov     e,c
0DDA  58        mov     e,b
0DDB  59        mov     e,c
0DDC  06 1D     mvi     b,$1D
0DDE  07        rlc
0DDF  2A 58 59  lhld    $5958
0DE2  06 00     mvi     b,$00
0DE4  07        rlc
0DE5  14        inr     d
0DE6  58        mov     e,b
0DE7  59        mov     e,c
0DE8  58        mov     e,b
0DE9  59        mov     e,c
0DEA  04        inr     b
0DEB  3A 58 59  lda     $5958
0DEE  04        inr     b
0DEF  1B        dcx     d
0DF0  58        mov     e,b
0DF1  59        mov     e,c
0DF2  02        stax    b
0DF3  0C        inr     c
0DF4  03        inx     b
0DF5  76        hlt
0DF6  58        mov     e,b
0DF7  59        mov     e,c
0DF8  04        inr     b
0DF9  4D        mov     c,l
0DFA  58        mov     e,b
0DFB  59        mov     e,c
0DFC  04        inr     b
0DFD  42        mov     b,d
0DFE  58        mov     e,b
0DFF  59        mov     e,c
0E00  05        dcr     b
0E01  00        nop
0E02  58        mov     e,b
0E03  59        mov     e,c
0E04  01 77 04  lxi     b,$0477
0E07  00        nop
0E08  58        mov     e,b
0E09  59        mov     e,c
0E0A  00        nop
0E0B  00        nop
0E0C  01 14 06  lxi     b,$0614
0E0F  0C        inr     c
0E10  07        rlc
0E11  76        hlt
0E12  58        mov     e,b
0E13  59        mov     e,c
0E14  58        mov     e,b
0E15  59        mov     e,c
0E16  00        nop
0E17  01 58 59  lxi     b,$5958
0E1A  01 02 58  lxi     b,$5802
0E1D  59        mov     e,c
0E1E  02        stax    b
0E1F  03        inx     b
0E20  58        mov     e,b
0E21  59        mov     e,c
0E22  04        inr     b
0E23  77        mov     m,a
0E24  05        dcr     b
0E25  20        nop                  ;Note: Alternative opcode used
0E26  58        mov     e,b
0E27  59        mov     e,c
0E28  02        stax    b
0E29  0C        inr     c
0E2A  06 77     mvi     b,'w'
0E2C  58        mov     e,b
0E2D  59        mov     e,c
0E2E  02        stax    b
0E2F  76        hlt
0E30  06 0C     mvi     b,$0C
0E32  07        rlc
0E33  77        mov     m,a
0E34  58        mov     e,b
0E35  59        mov     e,c
0E36  04        inr     b
0E37  EE 05     xri     $05
0E39  AC        xra     h
0E3A  07        rlc
0E3B  76        hlt
0E3C  58        mov     e,b
0E3D  59        mov     e,c
0E3E  04        inr     b
0E3F  EF        rst     5
0E40  05        dcr     b
0E41  A8        xra     b
0E42  58        mov     e,b
0E43  59        mov     e,c
0E44  04        inr     b
0E45  F0        rp
0E46  05        dcr     b
0E47  B0        ora     b
0E48  58        mov     e,b
0E49  59        mov     e,c
0E4A  04        inr     b
0E4B  EF        rst     5
0E4C  05        dcr     b
0E4D  BA        cmp     d
0E4E  58        mov     e,b
0E4F  59        mov     e,c
0E50  04        inr     b
0E51  01 05 10  lxi     b,$1005
0E54  58        mov     e,b
0E55  59        mov     e,c
0E56  04        inr     b
0E57  00        nop
0E58  05        dcr     b
0E59  44        mov     b,h
0E5A  58        mov     e,b
0E5B  59        mov     e,c
0E5C  04        inr     b
0E5D  01 05 00  lxi     b,$0005
0E60  58        mov     e,b
0E61  59        mov     e,c
0E62  05        dcr     b
0E63  42        mov     b,d
0E64  58        mov     e,b
0E65  59        mov     e,c
0E66  58        mov     e,b
0E67  59        mov     e,c
0E68  06 04     mvi     b,$04
0E6A  07        rlc
0E6B  5B        mov     e,e
0E6C  58        mov     e,b
0E6D  59        mov     e,c
0E6E  01 01 58  lxi     b,$5801
0E71  59        mov     e,c
0E72  02        stax    b
0E73  FF        rst     7
0E74  03        inx     b
0E75  FF        rst     7
0E76  58        mov     e,b
0E77  59        mov     e,c
0E78  04        inr     b
0E79  FF        rst     7
0E7A  05        dcr     b
0E7B  FF        rst     7
0E7C  58        mov     e,b
0E7D  59        mov     e,c
0E7E  01 00 58  lxi     b,$5800
0E81  59        mov     e,c
0E82  00        nop
0E83  00        nop
0E84  01 FF 58  lxi     b,$58FF
0E87  59        mov     e,c
0E88  01 FE 58  lxi     b,$58FE
0E8B  59        mov     e,c
0E8C  01 FD 58  lxi     b,$58FD
0E8F  59        mov     e,c
0E90  01 FC 58  lxi     b,$58FC
0E93  59        mov     e,c
0E94  03        inx     b
0E95  FD 58 59  call    $5958        ;Note: Alternative opcode used
0E98  03        inx     b
0E99  FB        ei
0E9A  58        mov     e,b
0E9B  59        mov     e,c
0E9C  03        inx     b
0E9D  F9        sphl
0E9E  58        mov     e,b
0E9F  59        mov     e,c
0EA0  03        inx     b
0EA1  F7        rst     6
0EA2  58        mov     e,b
0EA3  59        mov     e,c
0EA4  01 FB 58  lxi     b,$58FB
0EA7  59        mov     e,c
0EA8  01 FA 58  lxi     b,$58FA
0EAB  59        mov     e,c
0EAC  01 F9 58  lxi     b,$58F9
0EAF  59        mov     e,c
0EB0  01 F8 58  lxi     b,$58F8
0EB3  59        mov     e,c
0EB4  01 F7 58  lxi     b,$58F7
0EB7  59        mov     e,c
0EB8  58        mov     e,b
0EB9  59        mov     e,c
0EBA  58        mov     e,b
0EBB  59        mov     e,c
0EBC  58        mov     e,b
0EBD  59        mov     e,c
0EBE  58        mov     e,b
0EBF  59        mov     e,c
0EC0  01 F8 58  lxi     b,$58F8
0EC3  59        mov     e,c
0EC4  01 F9 58  lxi     b,$58F9
0EC7  59        mov     e,c
0EC8  01 FA 58  lxi     b,$58FA
0ECB  59        mov     e,c
0ECC  01 FB 58  lxi     b,$58FB
0ECF  59        mov     e,c
0ED0  01 FC 58  lxi     b,$58FC
0ED3  59        mov     e,c
0ED4  58        mov     e,b
0ED5  59        mov     e,c
0ED6  58        mov     e,b
0ED7  59        mov     e,c
0ED8  58        mov     e,b
0ED9  59        mov     e,c
0EDA  58        mov     e,b
0EDB  59        mov     e,c
0EDC  02        stax    b
0EDD  00        nop
0EDE  03        inx     b
0EDF  00        nop
0EE0  58        mov     e,b
0EE1  59        mov     e,c
0EE2  04        inr     b
0EE3  00        nop
0EE4  05        dcr     b
0EE5  00        nop
0EE6  58        mov     e,b
0EE7  59        mov     e,c
0EE8  01 FB 58  lxi     b,$58FB
0EEB  59        mov     e,c
0EEC  02        stax    b
0EED  FF        rst     7
0EEE  03        inx     b
0EEF  FE 58     cpi     'X'
0EF1  59        mov     e,c
0EF2  03        inx     b
0EF3  FC 58 59  cm      $5958
0EF6  03        inx     b
0EF7  FA 58 59  jm      $5958
0EFA  03        inx     b
0EFB  F8        rm
0EFC  58        mov     e,b
0EFD  59        mov     e,c
0EFE  01 FA 58  lxi     b,$58FA
0F01  59        mov     e,c
0F02  01 F9 58  lxi     b,$58F9
0F05  59        mov     e,c
0F06  01 F8 58  lxi     b,$58F8
0F09  59        mov     e,c
0F0A  01 F7 58  lxi     b,$58F7
0F0D  59        mov     e,c
0F0E  01 F6 58  lxi     b,$58F6
0F11  59        mov     e,c
0F12  58        mov     e,b
0F13  59        mov     e,c
0F14  58        mov     e,b
0F15  59        mov     e,c
0F16  58        mov     e,b
0F17  59        mov     e,c
0F18  58        mov     e,b
0F19  59        mov     e,c
0F1A  01 F5 58  lxi     b,$58F5
0F1D  59        mov     e,c
0F1E  01 F4 58  lxi     b,$58F4
0F21  59        mov     e,c
0F22  01 F3 58  lxi     b,$58F3
0F25  59        mov     e,c
0F26  01 F2 58  lxi     b,$58F2
0F29  59        mov     e,c
0F2A  01 F3 58  lxi     b,$58F3
0F2D  59        mov     e,c
0F2E  58        mov     e,b
0F2F  59        mov     e,c
0F30  58        mov     e,b
0F31  59        mov     e,c
0F32  58        mov     e,b
0F33  59        mov     e,c
0F34  58        mov     e,b
0F35  59        mov     e,c
0F36  01 F4 58  lxi     b,$58F4
0F39  59        mov     e,c
0F3A  01 F5 58  lxi     b,$58F5
0F3D  59        mov     e,c
0F3E  01 F6 58  lxi     b,$58F6
0F41  59        mov     e,c
0F42  01 F7 58  lxi     b,$58F7
0F45  59        mov     e,c
0F46  FE 03     cpi     $03
0F48  C2 0D 09  jnz     $090D
0F4B  C7        rst     0
0F4C  00        nop
0F4D  00        nop
0F4E  F5        push    psw
0F4F  3A 4C 0C  lda     $0C4C
0F52  FE 53     cpi     'S'
0F54  CA 0D 09  jz      $090D
0F57  CD 4E 0B  call    $0B4E
0F5A  07        rlc
0F5B  00        nop
0F5C  F1        pop     psw
0F5D  C9        ret
0F5E  CD B2 0B  call    $0BB2
0F61  CD 2B 0C  call    $0C2B
0F64  C9        ret
0F65  CD 4E 0B  call    $0B4E
0F68  0D        dcr     c
0F69  0A        ldax    b
0F6A  00        nop
0F6B  C9        ret
0F6C  CD 4E 0B  call    $0B4E
0F6F  20        nop                  ;Note: Alternative opcode used
0F70  00        nop
0F71  C9        ret
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
0F7E  80        add     b
0F7F  0C        inr     c
0F80  44        mov     b,h
0F81  45        mov     b,l
0F82  46        mov     b,m
0F83  D5        push    d
0F84  16 00     mvi     d,$00
0F86  5F        mov     e,a
0F87  19        dad
0F88  7E        mov     a,m
0F89  D1        pop     d
0F8A  C9        ret
0F8B  F5        push    psw
0F8C  7C        mov     a,h
0F8D  CD A1 0B  call    $0BA1
0F90  7D        mov     a,l
0F91  CD A1 0B  call    $0BA1
0F94  F1        pop     psw
0F95  C9        ret
0F96  F5        push    psw
0F97  CD A1 0B  call    $0BA1
0F9A  3E 48     mvi     a,'H'
0F9C  CD 0E 0B  call    $0B0E
0F9F  F1        pop     psw
0FA0  C9        ret
0FA1  F5        push    psw
0FA2  0F        rrc
0FA3  0F        rrc
0FA4  0F        rrc
0FA5  0F        rrc
0FA6  CD 5F 0B  call    $0B5F
0FA9  0F        rrc
0FAA  0F        rrc
0FAB  0F        rrc
0FAC  0F        rrc
0FAD  CD 5F 0B  call    $0B5F
0FB0  F1        pop     psw
0FB1  C9        ret
0FB2  CD C3 0B  call    $0BC3
0FB5  CD 3C 0A  call    $0A3C
0FB8  08        nop                  ;Note: Alternative opcode used
0FB9  D9        ret                  ;Note: Alternative opcode used
0FBA  CD C3 0B  call    $0BC3
0FBD  CD 3C 0A  call    $0A3C
0FC0  08        nop                  ;Note: Alternative opcode used
0FC1  D9        ret                  ;Note: Alternative opcode used
0FC2  C9        ret
0FC3  22 2A 0C  shld    $0C2A
0FC6  CD 4E 0B  call    $0B4E
0FC9  0D        dcr     c
0FCA  0A        ldax    b
0FCB  20        nop                  ;Note: Alternative opcode used
0FCC  50        mov     d,b
0FCD  20        nop                  ;Note: Alternative opcode used
0FCE  43        mov     b,e
0FCF  20        nop                  ;Note: Alternative opcode used
0FD0  20        nop                  ;Note: Alternative opcode used
0FD1  41        mov     b,c
0FD2  20        nop                  ;Note: Alternative opcode used
0FD3  46        mov     b,m
0FD4  20        nop                  ;Note: Alternative opcode used
0FD5  20        nop                  ;Note: Alternative opcode used
0FD6  42        mov     b,d
0FD7  20        nop                  ;Note: Alternative opcode used
0FD8  43        mov     b,e
0FD9  20        nop                  ;Note: Alternative opcode used
0FDA  20        nop                  ;Note: Alternative opcode used
0FDB  44        mov     b,h
0FDC  20        nop                  ;Note: Alternative opcode used
0FDD  45        mov     b,l
0FDE  20        nop                  ;Note: Alternative opcode used
0FDF  20        nop                  ;Note: Alternative opcode used
0FE0  48        mov     c,b
0FE1  20        nop                  ;Note: Alternative opcode used
0FE2  4C        mov     c,h
0FE3  20        nop                  ;Note: Alternative opcode used
0FE4  20        nop                  ;Note: Alternative opcode used
0FE5  53        mov     d,e
0FE6  20        nop                  ;Note: Alternative opcode used
0FE7  50        mov     d,b
0FE8  0D        dcr     c
0FE9  0A        ldax    b
0FEA  00        nop
0FEB  E1        pop     h
0FEC  E5        push    h
0FED  F5        push    psw
0FEE  CD 8B 0B  call    $0B8B
0FF1  CD 6C 0C  call    $0C6C
0FF4  F1        pop     psw
0FF5  F5        push    psw
0FF6  CD A1 0B  call    $0BA1
0FF9  E1        pop     h
0FFA  E5        push    h
0FFB  7D        mov     a,l
0FFC  CD A1 0B  call    $0BA1
0FFF  CD 00 43  call    $4300
1002  50        mov     d,b
1003  55        mov     d,l
1004  20        nop                  ;Note: Alternative opcode used
1005  20        nop                  ;Note: Alternative opcode used
1006  20        nop                  ;Note: Alternative opcode used
1007  20        nop                  ;Note: Alternative opcode used
1008  20        nop                  ;Note: Alternative opcode used
1009  43        mov     b,e
100A  4F        mov     c,a
100B  4D        mov     c,l
100C  01 00 00  lxi     b,$0000
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
1021  43        mov     b,e
1022  50        mov     d,b
1023  55        mov     d,l
1024  46        mov     b,m
1025  49        mov     c,c
1026  58        mov     e,b
1027  20        nop                  ;Note: Alternative opcode used
1028  20        nop                  ;Note: Alternative opcode used
1029  48        mov     c,b
102A  45        mov     b,l
102B  58        mov     e,b
102C  00        nop
102D  00        nop
102E  00        nop
102F  12        stax    d
1030  EF        rst     5
1031  F0        rp
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
1041  43        mov     b,e
1042  50        mov     d,b
1043  55        mov     d,l
1044  32 20 20  sta     $2020
1047  20        nop                  ;Note: Alternative opcode used
1048  20        nop                  ;Note: Alternative opcode used
1049  43        mov     b,e
104A  4F        mov     c,a
104B  4D        mov     c,l
104C  00        nop
104D  00        nop
104E  00        nop
104F  20        nop                  ;Note: Alternative opcode used
1050  F1        pop     psw
1051  F2 00 00  jp      $0000
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
1060  E5        push    h
1061  E5        push    h
1062  E5        push    h
1063  E5        push    h
1064  E5        push    h
1065  E5        push    h
1066  E5        push    h
1067  E5        push    h
1068  E5        push    h
1069  E5        push    h
106A  E5        push    h
106B  E5        push    h
106C  E5        push    h
106D  E5        push    h
106E  E5        push    h
106F  E5        push    h
1070  E5        push    h
1071  E5        push    h
1072  E5        push    h
1073  E5        push    h
1074  E5        push    h
1075  E5        push    h
1076  E5        push    h
1077  E5        push    h
1078  E5        push    h
1079  E5        push    h
107A  E5        push    h
107B  E5        push    h
107C  E5        push    h
107D  E5        push    h
107E  E5        push    h
107F  E5        push    h
1080  44        mov     b,h
1081  45        mov     b,l
1082  46        mov     b,m
1083  D5        push    d
1084  16 00     mvi     d,$00
1086  5F        mov     e,a
1087  19        dad
1088  7E        mov     a,m
1089  D1        pop     d
108A  C9        ret
108B  F5        push    psw
108C  7C        mov     a,h
108D  CD A1 0B  call    $0BA1
1090  7D        mov     a,l
1091  CD A1 0B  call    $0BA1
1094  F1        pop     psw
1095  C9        ret
1096  F5        push    psw
1097  CD A1 0B  call    $0BA1
109A  3E 48     mvi     a,'H'
109C  CD 0E 0B  call    $0B0E
109F  F1        pop     psw
10A0  C9        ret
10A1  F5        push    psw
10A2  0F        rrc
10A3  0F        rrc
10A4  0F        rrc
10A5  0F        rrc
10A6  CD 5F 0B  call    $0B5F
10A9  0F        rrc
10AA  0F        rrc
10AB  0F        rrc
10AC  0F        rrc
10AD  CD 5F 0B  call    $0B5F
10B0  F1        pop     psw
10B1  C9        ret
10B2  CD C3 0B  call    $0BC3
10B5  CD 3C 0A  call    $0A3C
10B8  08        nop                  ;Note: Alternative opcode used
10B9  D9        ret                  ;Note: Alternative opcode used
10BA  CD C3 0B  call    $0BC3
10BD  CD 3C 0A  call    $0A3C
10C0  08        nop                  ;Note: Alternative opcode used
10C1  D9        ret                  ;Note: Alternative opcode used
10C2  C9        ret
10C3  22 2A 0C  shld    $0C2A
10C6  CD 4E 0B  call    $0B4E
10C9  0D        dcr     c
10CA  0A        ldax    b
10CB  20        nop                  ;Note: Alternative opcode used
10CC  50        mov     d,b
10CD  20        nop                  ;Note: Alternative opcode used
10CE  43        mov     b,e
10CF  20        nop                  ;Note: Alternative opcode used
10D0  20        nop                  ;Note: Alternative opcode used
10D1  41        mov     b,c
10D2  20        nop                  ;Note: Alternative opcode used
10D3  46        mov     b,m
10D4  20        nop                  ;Note: Alternative opcode used
10D5  20        nop                  ;Note: Alternative opcode used
10D6  42        mov     b,d
10D7  20        nop                  ;Note: Alternative opcode used
10D8  43        mov     b,e
10D9  20        nop                  ;Note: Alternative opcode used
10DA  20        nop                  ;Note: Alternative opcode used
10DB  44        mov     b,h
10DC  20        nop                  ;Note: Alternative opcode used
10DD  45        mov     b,l
10DE  20        nop                  ;Note: Alternative opcode used
10DF  20        nop                  ;Note: Alternative opcode used
10E0  48        mov     c,b
10E1  20        nop                  ;Note: Alternative opcode used
10E2  4C        mov     c,h
10E3  20        nop                  ;Note: Alternative opcode used
10E4  20        nop                  ;Note: Alternative opcode used
10E5  53        mov     d,e
10E6  20        nop                  ;Note: Alternative opcode used
10E7  50        mov     d,b
10E8  0D        dcr     c
10E9  0A        ldax    b
10EA  00        nop
10EB  E1        pop     h
10EC  E5        push    h
10ED  F5        push    psw
10EE  CD 8B 0B  call    $0B8B
10F1  CD 6C 0C  call    $0C6C
10F4  F1        pop     psw
10F5  F5        push    psw
10F6  CD A1 0B  call    $0BA1
10F9  E1        pop     h
10FA  E5        push    h
10FB  7D        mov     a,l
10FC  CD A1 0B  call    $0BA1
10FF  CD 6C 0C  call    $0C6C
1102  60        mov     h,b
1103  69        mov     l,c
1104  CD 8B 0B  call    $0B8B
1107  CD 6C 0C  call    $0C6C
110A  62        mov     h,d
110B  6B        mov     l,e
110C  CD 8B 0B  call    $0B8B
110F  CD 6C 0C  call    $0C6C
1112  2A 2A 0C  lhld    $0C2A
1115  CD 8B 0B  call    $0B8B
1118  CD 6C 0C  call    $0C6C
111B  21 00 00  lxi     h,$0000
111E  39        dad     sp
111F  CD 8B 0B  call    $0B8B
1122  F1        pop     psw
1123  2A 2A 0C  lhld    $0C2A
1126  CD 65 0C  call    $0C65
1129  C9        ret
112A  02        stax    b
112B  F5        push    psw
112C  3A 4C 0C  lda     $0C4C
112F  FE 53     cpi     'S'
1131  CA 0D 09  jz      $090D
1134  FE 43     cpi     'C'
1136  CA 0D 09  jz      $090D
1139  CD 1B 0B  call    $0B1B
113C  32 4C 0C  sta     $0C4C
113F  F5        push    psw
1140  2F        cma
1141  3C        inr     a
1142  32 4D 0C  sta     $0C4D
1145  F1        pop     psw
1146  FE 03     cpi     $03
1148  C2 0D 09  jnz     $090D
114B  C7        rst     0
114C  00        nop
114D  00        nop
114E  F5        push    psw
114F  3A 4C 0C  lda     $0C4C
1152  FE 53     cpi     'S'
1154  CA 0D 09  jz      $090D
1157  CD 4E 0B  call    $0B4E
115A  07        rlc
115B  00        nop
115C  F1        pop     psw
115D  C9        ret
115E  CD B2 0B  call    $0BB2
1161  CD 2B 0C  call    $0C2B
1164  C9        ret
1165  CD 4E 0B  call    $0B4E
1168  0D        dcr     c
1169  0A        ldax    b
116A  00        nop
116B  C9        ret
116C  CD 4E 0B  call    $0B4E
116F  20        nop                  ;Note: Alternative opcode used
1170  00        nop
1171  C9        ret
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
117E  80        add     b
117F  0C        inr     c
1180  44        mov     b,h
1181  45        mov     b,l
1182  46        mov     b,m
1183  D5        push    d
1184  16 00     mvi     d,$00
1186  5F        mov     e,a
1187  19        dad
1188  7E        mov     a,m
1189  D1        pop     d
118A  C9        ret
118B  F5        push    psw
118C  7C        mov     a,h
118D  CD A1 0B  call    $0BA1
1190  7D        mov     a,l
1191  CD A1 0B  call    $0BA1
1194  F1        pop     psw
1195  C9        ret
1196  F5        push    psw
1197  CD A1 0B  call    $0BA1
119A  3E 48     mvi     a,'H'
119C  CD 0E 0B  call    $0B0E
119F  F1        pop     psw
11A0  C9        ret
11A1  F5        push    psw
11A2  0F        rrc
11A3  0F        rrc
11A4  0F        rrc
11A5  0F        rrc
11A6  CD 5F 0B  call    $0B5F
11A9  0F        rrc
11AA  0F        rrc
11AB  0F        rrc
11AC  0F        rrc
11AD  CD 5F 0B  call    $0B5F
11B0  F1        pop     psw
11B1  C9        ret
11B2  CD C3 0B  call    $0BC3
11B5  CD 3C 0A  call    $0A3C
11B8  08        nop                  ;Note: Alternative opcode used
11B9  D9        ret                  ;Note: Alternative opcode used
11BA  CD C3 0B  call    $0BC3
11BD  CD 3C 0A  call    $0A3C
11C0  08        nop                  ;Note: Alternative opcode used
11C1  D9        ret                  ;Note: Alternative opcode used
11C2  C9        ret
11C3  22 2A 0C  shld    $0C2A
11C6  CD 4E 0B  call    $0B4E
11C9  0D        dcr     c
11CA  0A        ldax    b
11CB  20        nop                  ;Note: Alternative opcode used
11CC  50        mov     d,b
11CD  20        nop                  ;Note: Alternative opcode used
11CE  43        mov     b,e
11CF  20        nop                  ;Note: Alternative opcode used
11D0  20        nop                  ;Note: Alternative opcode used
11D1  41        mov     b,c
11D2  20        nop                  ;Note: Alternative opcode used
11D3  46        mov     b,m
11D4  20        nop                  ;Note: Alternative opcode used
11D5  20        nop                  ;Note: Alternative opcode used
11D6  42        mov     b,d
11D7  20        nop                  ;Note: Alternative opcode used
11D8  43        mov     b,e
11D9  20        nop                  ;Note: Alternative opcode used
11DA  20        nop                  ;Note: Alternative opcode used
11DB  44        mov     b,h
11DC  20        nop                  ;Note: Alternative opcode used
11DD  45        mov     b,l
11DE  20        nop                  ;Note: Alternative opcode used
11DF  20        nop                  ;Note: Alternative opcode used
11E0  48        mov     c,b
11E1  20        nop                  ;Note: Alternative opcode used
11E2  4C        mov     c,h
11E3  20        nop                  ;Note: Alternative opcode used
11E4  20        nop                  ;Note: Alternative opcode used
11E5  53        mov     d,e
11E6  20        nop                  ;Note: Alternative opcode used
11E7  50        mov     d,b
11E8  0D        dcr     c
11E9  0A        ldax    b
11EA  00        nop
11EB  E1        pop     h
11EC  E5        push    h
11ED  F5        push    psw
11EE  CD 8B 0B  call    $0B8B
11F1  CD 6C 0C  call    $0C6C
11F4  F1        pop     psw
11F5  F5        push    psw
11F6  CD A1 0B  call    $0BA1
11F9  E1        pop     h
11FA  E5        push    h
11FB  7D        mov     a,l
11FC  CD A1 0B  call    $0BA1
11FF  CD 6C 0C  call    $0C6C
1202  60        mov     h,b
1203  69        mov     l,c
1204  CD 8B 0B  call    $0B8B
1207  CD 6C 0C  call    $0C6C
120A  62        mov     h,d
120B  6B        mov     l,e
120C  CD 8B 0B  call    $0B8B
120F  CD 6C 0C  call    $0C6C
1212  2A 2A 0C  lhld    $0C2A
1215  CD 8B 0B  call    $0B8B
1218  CD 6C 0C  call    $0C6C
121B  21 00 00  lxi     h,$0000
121E  39        dad     sp
121F  CD 8B 0B  call    $0B8B
1222  F1        pop     psw
1223  2A 2A 0C  lhld    $0C2A
1226  CD 65 0C  call    $0C65
1229  C9        ret
122A  02        stax    b
122B  F5        push    psw
122C  3A 4C 0C  lda     $0C4C
122F  FE 53     cpi     'S'
1231  CA 0D 09  jz      $090D
1234  FE 43     cpi     'C'
1236  CA 0D 09  jz      $090D
1239  CD 1B 0B  call    $0B1B
123C  32 4C 0C  sta     $0C4C
123F  F5        push    psw
1240  2F        cma
1241  3C        inr     a
1242  32 4D 0C  sta     $0C4D
1245  F1        pop     psw
1246  FE 03     cpi     $03
1248  C2 0D 09  jnz     $090D
124B  C7        rst     0
124C  00        nop
124D  00        nop
124E  F5        push    psw
124F  3A 4C 0C  lda     $0C4C
1252  FE 53     cpi     'S'
1254  CA 0D 09  jz      $090D
1257  CD 4E 0B  call    $0B4E
125A  07        rlc
125B  00        nop
125C  F1        pop     psw
125D  C9        ret
125E  CD B2 0B  call    $0BB2
1261  CD 2B 0C  call    $0C2B
1264  C9        ret
1265  CD 4E 0B  call    $0B4E
1268  0D        dcr     c
1269  0A        ldax    b
126A  00        nop
126B  C9        ret
126C  CD 4E 0B  call    $0B4E
126F  20        nop                  ;Note: Alternative opcode used
1270  00        nop
1271  C9        ret
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
127E  80        add     b
127F  0C        inr     c
1280  44        mov     b,h
1281  45        mov     b,l
1282  46        mov     b,m
1283  D5        push    d
1284  16 00     mvi     d,$00
1286  5F        mov     e,a
1287  19        dad
1288  7E        mov     a,m
1289  D1        pop     d
128A  C9        ret
128B  F5        push    psw
128C  7C        mov     a,h
128D  CD A1 0B  call    $0BA1
1290  7D        mov     a,l
1291  CD A1 0B  call    $0BA1
1294  F1        pop     psw
1295  C9        ret
1296  F5        push    psw
1297  CD A1 0B  call    $0BA1
129A  3E 48     mvi     a,'H'
129C  CD 0E 0B  call    $0B0E
129F  F1        pop     psw
12A0  C9        ret
12A1  F5        push    psw
12A2  0F        rrc
12A3  0F        rrc
12A4  0F        rrc
12A5  0F        rrc
12A6  CD 5F 0B  call    $0B5F
12A9  0F        rrc
12AA  0F        rrc
12AB  0F        rrc
12AC  0F        rrc
12AD  CD 5F 0B  call    $0B5F
12B0  F1        pop     psw
12B1  C9        ret
12B2  CD C3 0B  call    $0BC3
12B5  CD 3C 0A  call    $0A3C
12B8  08        nop                  ;Note: Alternative opcode used
12B9  D9        ret                  ;Note: Alternative opcode used
12BA  CD C3 0B  call    $0BC3
12BD  CD 3C 0A  call    $0A3C
12C0  08        nop                  ;Note: Alternative opcode used
12C1  D9        ret                  ;Note: Alternative opcode used
12C2  C9        ret
12C3  22 2A 0C  shld    $0C2A
12C6  CD 4E 0B  call    $0B4E
12C9  0D        dcr     c
12CA  0A        ldax    b
12CB  20        nop                  ;Note: Alternative opcode used
12CC  50        mov     d,b
12CD  20        nop                  ;Note: Alternative opcode used
12CE  43        mov     b,e
12CF  20        nop                  ;Note: Alternative opcode used
12D0  20        nop                  ;Note: Alternative opcode used
12D1  41        mov     b,c
12D2  20        nop                  ;Note: Alternative opcode used
12D3  46        mov     b,m
12D4  20        nop                  ;Note: Alternative opcode used
12D5  20        nop                  ;Note: Alternative opcode used
12D6  42        mov     b,d
12D7  20        nop                  ;Note: Alternative opcode used
12D8  43        mov     b,e
12D9  20        nop                  ;Note: Alternative opcode used
12DA  20        nop                  ;Note: Alternative opcode used
12DB  44        mov     b,h
12DC  20        nop                  ;Note: Alternative opcode used
12DD  45        mov     b,l
12DE  20        nop                  ;Note: Alternative opcode used
12DF  20        nop                  ;Note: Alternative opcode used
12E0  48        mov     c,b
12E1  20        nop                  ;Note: Alternative opcode used
12E2  4C        mov     c,h
12E3  20        nop                  ;Note: Alternative opcode used
12E4  20        nop                  ;Note: Alternative opcode used
12E5  53        mov     d,e
12E6  20        nop                  ;Note: Alternative opcode used
12E7  50        mov     d,b
12E8  0D        dcr     c
12E9  0A        ldax    b
12EA  00        nop
12EB  E1        pop     h
12EC  E5        push    h
12ED  F5        push    psw
12EE  CD 8B 0B  call    $0B8B
12F1  CD 6C 0C  call    $0C6C
12F4  F1        pop     psw
12F5  F5        push    psw
12F6  CD A1 0B  call    $0BA1
12F9  E1        pop     h
12FA  E5        push    h
12FB  7D        mov     a,l
12FC  CD A1 0B  call    $0BA1
12FF  CD 6C 0C  call    $0C6C
1302  60        mov     h,b
1303  69        mov     l,c
1304  CD 8B 0B  call    $0B8B
1307  CD 6C 0C  call    $0C6C
130A  62        mov     h,d
130B  6B        mov     l,e
130C  CD 8B 0B  call    $0B8B
130F  CD 6C 0C  call    $0C6C
1312  2A 2A 0C  lhld    $0C2A
1315  CD 8B 0B  call    $0B8B
1318  CD 6C 0C  call    $0C6C
131B  21 00 00  lxi     h,$0000
131E  39        dad     sp
131F  CD 8B 0B  call    $0B8B
1322  F1        pop     psw
1323  2A 2A 0C  lhld    $0C2A
1326  CD 65 0C  call    $0C65
1329  C9        ret
132A  02        stax    b
132B  F5        push    psw
132C  3A 4C 0C  lda     $0C4C
132F  FE 53     cpi     'S'
1331  CA 0D 09  jz      $090D
1334  FE 43     cpi     'C'
1336  CA 0D 09  jz      $090D
1339  CD 1B 0B  call    $0B1B
133C  32 4C 0C  sta     $0C4C
133F  F5        push    psw
1340  2F        cma
1341  3C        inr     a
1342  32 4D 0C  sta     $0C4D
1345  F1        pop     psw
1346  FE 03     cpi     $03
1348  C2 0D 09  jnz     $090D
134B  C7        rst     0
134C  00        nop
134D  00        nop
134E  F5        push    psw
134F  3A 4C 0C  lda     $0C4C
1352  FE 53     cpi     'S'
1354  CA 0D 09  jz      $090D
1357  CD 4E 0B  call    $0B4E
135A  07        rlc
135B  00        nop
135C  F1        pop     psw
135D  C9        ret
135E  CD B2 0B  call    $0BB2
1361  CD 2B 0C  call    $0C2B
1364  C9        ret
1365  CD 4E 0B  call    $0B4E
1368  0D        dcr     c
1369  0A        ldax    b
136A  00        nop
136B  C9        ret
136C  CD 4E 0B  call    $0B4E
136F  20        nop                  ;Note: Alternative opcode used
1370  00        nop
1371  C9        ret
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
137E  80        add     b
137F  0C        inr     c
1380  44        mov     b,h
1381  45        mov     b,l
1382  46        mov     b,m
1383  D5        push    d
1384  16 00     mvi     d,$00
1386  5F        mov     e,a
1387  19        dad
1388  7E        mov     a,m
1389  D1        pop     d
138A  C9        ret
138B  F5        push    psw
138C  7C        mov     a,h
138D  CD A1 0B  call    $0BA1
1390  7D        mov     a,l
1391  CD A1 0B  call    $0BA1
1394  F1        pop     psw
1395  C9        ret
1396  F5        push    psw
1397  CD A1 0B  call    $0BA1
139A  3E 48     mvi     a,'H'
139C  CD 0E 0B  call    $0B0E
139F  F1        pop     psw
13A0  C9        ret
13A1  F5        push    psw
13A2  0F        rrc
13A3  0F        rrc
13A4  0F        rrc
13A5  0F        rrc
13A6  CD 5F 0B  call    $0B5F
13A9  0F        rrc
13AA  0F        rrc
13AB  0F        rrc
13AC  0F        rrc
13AD  CD 5F 0B  call    $0B5F
13B0  F1        pop     psw
13B1  C9        ret
13B2  CD C3 0B  call    $0BC3
13B5  CD 3C 0A  call    $0A3C
13B8  08        nop                  ;Note: Alternative opcode used
13B9  D9        ret                  ;Note: Alternative opcode used
13BA  CD C3 0B  call    $0BC3
13BD  CD 3C 0A  call    $0A3C
13C0  08        nop                  ;Note: Alternative opcode used
13C1  D9        ret                  ;Note: Alternative opcode used
13C2  C9        ret
13C3  22 2A 0C  shld    $0C2A
13C6  CD 4E 0B  call    $0B4E
13C9  0D        dcr     c
13CA  0A        ldax    b
13CB  20        nop                  ;Note: Alternative opcode used
13CC  50        mov     d,b
13CD  20        nop                  ;Note: Alternative opcode used
13CE  43        mov     b,e
13CF  20        nop                  ;Note: Alternative opcode used
13D0  20        nop                  ;Note: Alternative opcode used
13D1  41        mov     b,c
13D2  20        nop                  ;Note: Alternative opcode used
13D3  46        mov     b,m
13D4  20        nop                  ;Note: Alternative opcode used
13D5  20        nop                  ;Note: Alternative opcode used
13D6  42        mov     b,d
13D7  20        nop                  ;Note: Alternative opcode used
13D8  43        mov     b,e
13D9  20        nop                  ;Note: Alternative opcode used
13DA  20        nop                  ;Note: Alternative opcode used
13DB  44        mov     b,h
13DC  20        nop                  ;Note: Alternative opcode used
13DD  45        mov     b,l
13DE  20        nop                  ;Note: Alternative opcode used
13DF  20        nop                  ;Note: Alternative opcode used
13E0  48        mov     c,b
13E1  20        nop                  ;Note: Alternative opcode used
13E2  4C        mov     c,h
13E3  20        nop                  ;Note: Alternative opcode used
13E4  20        nop                  ;Note: Alternative opcode used
13E5  53        mov     d,e
13E6  20        nop                  ;Note: Alternative opcode used
13E7  50        mov     d,b
13E8  0D        dcr     c
13E9  0A        ldax    b
13EA  00        nop
13EB  E1        pop     h
13EC  E5        push    h
13ED  F5        push    psw
13EE  CD 8B 0B  call    $0B8B
13F1  CD 6C 0C  call    $0C6C
13F4  F1        pop     psw
13F5  F5        push    psw
13F6  CD A1 0B  call    $0BA1
13F9  E1        pop     h
13FA  E5        push    h
13FB  7D        mov     a,l
13FC  CD A1 0B  call    $0BA1
13FF  CD 6C 0C  call    $0C6C
1402  60        mov     h,b
1403  69        mov     l,c
1404  CD 8B 0B  call    $0B8B
1407  CD 6C 0C  call    $0C6C
140A  62        mov     h,d
140B  6B        mov     l,e
140C  CD 8B 0B  call    $0B8B
140F  CD 6C 0C  call    $0C6C
1412  2A 2A 0C  lhld    $0C2A
1415  CD 8B 0B  call    $0B8B
1418  CD 6C 0C  call    $0C6C
141B  21 00 00  lxi     h,$0000
141E  39        dad     sp
141F  CD 8B 0B  call    $0B8B
1422  F1        pop     psw
1423  2A 2A 0C  lhld    $0C2A
1426  CD 65 0C  call    $0C65
1429  C9        ret
142A  02        stax    b
142B  F5        push    psw
142C  3A 4C 0C  lda     $0C4C
142F  FE 53     cpi     'S'
1431  CA 0D 09  jz      $090D
1434  FE 43     cpi     'C'
1436  CA 0D 09  jz      $090D
1439  CD 1B 0B  call    $0B1B
143C  32 4C 0C  sta     $0C4C
143F  F5        push    psw
1440  2F        cma
1441  3C        inr     a
1442  32 4D 0C  sta     $0C4D
1445  F1        pop     psw
1446  FE 03     cpi     $03
1448  C2 0D 09  jnz     $090D
144B  C7        rst     0
144C  00        nop
144D  00        nop
144E  F5        push    psw
144F  3A 4C 0C  lda     $0C4C
1452  FE 53     cpi     'S'
1454  CA 0D 09  jz      $090D
1457  CD 4E 0B  call    $0B4E
145A  07        rlc
145B  00        nop
145C  F1        pop     psw
145D  C9        ret
145E  CD B2 0B  call    $0BB2
1461  CD 2B 0C  call    $0C2B
1464  C9        ret
1465  CD 4E 0B  call    $0B4E
1468  0D        dcr     c
1469  0A        ldax    b
146A  00        nop
146B  C9        ret
146C  CD 4E 0B  call    $0B4E
146F  20        nop                  ;Note: Alternative opcode used
1470  00        nop
1471  C9        ret
1472  00        nop
1473  00        nop
1474  00        nop
1475  00        nop
1476  00        nop
1477  00        nop
1478  00        nop
1479  00        nop
147A  00        nop
147B  00        nop
147C  00        nop
147D  00        nop
147E  80        add     b
147F  0C        inr     c
1480  44        mov     b,h
1481  45        mov     b,l
1482  46        mov     b,m
1483  D5        push    d
1484  16 00     mvi     d,$00
1486  5F        mov     e,a
1487  19        dad
1488  7E        mov     a,m
1489  D1        pop     d
148A  C9        ret
148B  F5        push    psw
148C  7C        mov     a,h
148D  CD A1 0B  call    $0BA1
1490  7D        mov     a,l
1491  CD A1 0B  call    $0BA1
1494  F1        pop     psw
1495  C9        ret
1496  F5        push    psw
1497  CD A1 0B  call    $0BA1
149A  3E 48     mvi     a,'H'
149C  CD 0E 0B  call    $0B0E
149F  F1        pop     psw
14A0  C9        ret
14A1  F5        push    psw
14A2  0F        rrc
14A3  0F        rrc
14A4  0F        rrc
14A5  0F        rrc
14A6  CD 5F 0B  call    $0B5F
14A9  0F        rrc
14AA  0F        rrc
14AB  0F        rrc
14AC  0F        rrc
14AD  CD 5F 0B  call    $0B5F
14B0  F1        pop     psw
14B1  C9        ret
14B2  CD C3 0B  call    $0BC3
14B5  CD 3C 0A  call    $0A3C
14B8  08        nop                  ;Note: Alternative opcode used
14B9  D9        ret                  ;Note: Alternative opcode used
14BA  CD C3 0B  call    $0BC3
14BD  CD 3C 0A  call    $0A3C
14C0  08        nop                  ;Note: Alternative opcode used
14C1  D9        ret                  ;Note: Alternative opcode used
14C2  C9        ret
14C3  22 2A 0C  shld    $0C2A
14C6  CD 4E 0B  call    $0B4E
14C9  0D        dcr     c
14CA  0A        ldax    b
14CB  20        nop                  ;Note: Alternative opcode used
14CC  50        mov     d,b
14CD  20        nop                  ;Note: Alternative opcode used
14CE  43        mov     b,e
14CF  20        nop                  ;Note: Alternative opcode used
14D0  20        nop                  ;Note: Alternative opcode used
14D1  41        mov     b,c
14D2  20        nop                  ;Note: Alternative opcode used
14D3  46        mov     b,m
14D4  20        nop                  ;Note: Alternative opcode used
14D5  20        nop                  ;Note: Alternative opcode used
14D6  42        mov     b,d
14D7  20        nop                  ;Note: Alternative opcode used
14D8  43        mov     b,e
14D9  20        nop                  ;Note: Alternative opcode used
14DA  20        nop                  ;Note: Alternative opcode used
14DB  44        mov     b,h
14DC  20        nop                  ;Note: Alternative opcode used
14DD  45        mov     b,l
14DE  20        nop                  ;Note: Alternative opcode used
14DF  20        nop                  ;Note: Alternative opcode used
14E0  48        mov     c,b
14E1  20        nop                  ;Note: Alternative opcode used
14E2  4C        mov     c,h
14E3  20        nop                  ;Note: Alternative opcode used
14E4  20        nop                  ;Note: Alternative opcode used
14E5  53        mov     d,e
14E6  20        nop                  ;Note: Alternative opcode used
14E7  50        mov     d,b
14E8  0D        dcr     c
14E9  0A        ldax    b
14EA  00        nop
14EB  E1        pop     h
14EC  E5        push    h
14ED  F5        push    psw
14EE  CD 8B 0B  call    $0B8B
14F1  CD 6C 0C  call    $0C6C
14F4  F1        pop     psw
14F5  F5        push    psw
14F6  CD A1 0B  call    $0BA1
14F9  E1        pop     h
14FA  E5        push    h
14FB  7D        mov     a,l
14FC  CD A1 0B  call    $0BA1
14FF  CD 6C 0C  call    $0C6C
1502  60        mov     h,b
1503  69        mov     l,c
1504  CD 8B 0B  call    $0B8B
1507  CD 6C 0C  call    $0C6C
150A  62        mov     h,d
150B  6B        mov     l,e
150C  CD 8B 0B  call    $0B8B
150F  CD 6C 0C  call    $0C6C
1512  2A 2A 0C  lhld    $0C2A
1515  CD 8B 0B  call    $0B8B
1518  CD 6C 0C  call    $0C6C
151B  21 00 00  lxi     h,$0000
151E  39        dad     sp
151F  CD 8B 0B  call    $0B8B
1522  F1        pop     psw
1523  2A 2A 0C  lhld    $0C2A
1526  CD 65 0C  call    $0C65
1529  C9        ret
152A  02        stax    b
152B  F5        push    psw
152C  3A 4C 0C  lda     $0C4C
152F  FE 53     cpi     'S'
1531  CA 0D 09  jz      $090D
1534  FE 43     cpi     'C'
1536  CA 0D 09  jz      $090D
1539  CD 1B 0B  call    $0B1B
153C  32 4C 0C  sta     $0C4C
153F  F5        push    psw
1540  2F        cma
1541  3C        inr     a
1542  32 4D 0C  sta     $0C4D
1545  F1        pop     psw
1546  FE 03     cpi     $03
1548  C2 0D 09  jnz     $090D
154B  C7        rst     0
154C  00        nop
154D  00        nop
154E  F5        push    psw
154F  3A 4C 0C  lda     $0C4C
1552  FE 53     cpi     'S'
1554  CA 0D 09  jz      $090D
1557  CD 4E 0B  call    $0B4E
155A  07        rlc
155B  00        nop
155C  F1        pop     psw
155D  C9        ret
155E  CD B2 0B  call    $0BB2
1561  CD 2B 0C  call    $0C2B
1564  C9        ret
1565  CD 4E 0B  call    $0B4E
1568  0D        dcr     c
1569  0A        ldax    b
156A  00        nop
156B  C9        ret
156C  CD 4E 0B  call    $0B4E
156F  20        nop                  ;Note: Alternative opcode used
1570  00        nop
1571  C9        ret
1572  00        nop
1573  00        nop
1574  00        nop
1575  00        nop
1576  00        nop
1577  00        nop
1578  00        nop
1579  00        nop
157A  00        nop
157B  00        nop
157C  00        nop
157D  00        nop
157E  80        add     b
157F  0C        inr     c
1580  44        mov     b,h
1581  45        mov     b,l
1582  46        mov     b,m
1583  D5        push    d
1584  16 00     mvi     d,$00
1586  5F        mov     e,a
1587  19        dad
1588  7E        mov     a,m
1589  D1        pop     d
158A  C9        ret
158B  F5        push    psw
158C  7C        mov     a,h
158D  CD A1 0B  call    $0BA1
1590  7D        mov     a,l
1591  CD A1 0B  call    $0BA1
1594  F1        pop     psw
1595  C9        ret
1596  F5        push    psw
1597  CD A1 0B  call    $0BA1
159A  3E 48     mvi     a,'H'
159C  CD 0E 0B  call    $0B0E
159F  F1        pop     psw
15A0  C9        ret
15A1  F5        push    psw
15A2  0F        rrc
15A3  0F        rrc
15A4  0F        rrc
15A5  0F        rrc
15A6  CD 5F 0B  call    $0B5F
15A9  0F        rrc
15AA  0F        rrc
15AB  0F        rrc
15AC  0F        rrc
15AD  CD 5F 0B  call    $0B5F
15B0  F1        pop     psw
15B1  C9        ret
15B2  CD C3 0B  call    $0BC3
15B5  CD 3C 0A  call    $0A3C
15B8  08        nop                  ;Note: Alternative opcode used
15B9  D9        ret                  ;Note: Alternative opcode used
15BA  CD C3 0B  call    $0BC3
15BD  CD 3C 0A  call    $0A3C
15C0  08        nop                  ;Note: Alternative opcode used
15C1  D9        ret                  ;Note: Alternative opcode used
15C2  C9        ret
15C3  22 2A 0C  shld    $0C2A
15C6  CD 4E 0B  call    $0B4E
15C9  0D        dcr     c
15CA  0A        ldax    b
15CB  20        nop                  ;Note: Alternative opcode used
15CC  50        mov     d,b
15CD  20        nop                  ;Note: Alternative opcode used
15CE  43        mov     b,e
15CF  20        nop                  ;Note: Alternative opcode used
15D0  20        nop                  ;Note: Alternative opcode used
15D1  41        mov     b,c
15D2  20        nop                  ;Note: Alternative opcode used
15D3  46        mov     b,m
15D4  20        nop                  ;Note: Alternative opcode used
15D5  20        nop                  ;Note: Alternative opcode used
15D6  42        mov     b,d
15D7  20        nop                  ;Note: Alternative opcode used
15D8  43        mov     b,e
15D9  20        nop                  ;Note: Alternative opcode used
15DA  20        nop                  ;Note: Alternative opcode used
15DB  44        mov     b,h
15DC  20        nop                  ;Note: Alternative opcode used
15DD  45        mov     b,l
15DE  20        nop                  ;Note: Alternative opcode used
15DF  20        nop                  ;Note: Alternative opcode used
15E0  48        mov     c,b
15E1  20        nop                  ;Note: Alternative opcode used
15E2  4C        mov     c,h
15E3  20        nop                  ;Note: Alternative opcode used
15E4  20        nop                  ;Note: Alternative opcode used
15E5  53        mov     d,e
15E6  20        nop                  ;Note: Alternative opcode used
15E7  50        mov     d,b
15E8  0D        dcr     c
15E9  0A        ldax    b
15EA  00        nop
15EB  E1        pop     h
15EC  E5        push    h
15ED  F5        push    psw
15EE  CD 8B 0B  call    $0B8B
15F1  CD 6C 0C  call    $0C6C
15F4  F1        pop     psw
15F5  F5        push    psw
15F6  CD A1 0B  call    $0BA1
15F9  E1        pop     h
15FA  E5        push    h
15FB  7D        mov     a,l
15FC  CD A1 0B  call    $0BA1
15FF  CD 6C 0C  call    $0C6C
1602  60        mov     h,b
1603  69        mov     l,c
1604  CD 8B 0B  call    $0B8B
1607  CD 6C 0C  call    $0C6C
160A  62        mov     h,d
160B  6B        mov     l,e
160C  CD 8B 0B  call    $0B8B
160F  CD 6C 0C  call    $0C6C
1612  2A 2A 0C  lhld    $0C2A
1615  CD 8B 0B  call    $0B8B
1618  CD 6C 0C  call    $0C6C
161B  21 00 00  lxi     h,$0000
161E  39        dad     sp
161F  CD 8B 0B  call    $0B8B
1622  F1        pop     psw
1623  2A 2A 0C  lhld    $0C2A
1626  CD 65 0C  call    $0C65
1629  C9        ret
162A  02        stax    b
162B  F5        push    psw
162C  3A 4C 0C  lda     $0C4C
162F  FE 53     cpi     'S'
1631  CA 0D 09  jz      $090D
1634  FE 43     cpi     'C'
1636  CA 0D 09  jz      $090D
1639  CD 1B 0B  call    $0B1B
163C  32 4C 0C  sta     $0C4C
163F  F5        push    psw
1640  2F        cma
1641  3C        inr     a
1642  32 4D 0C  sta     $0C4D
1645  F1        pop     psw
1646  FE 03     cpi     $03
1648  C2 0D 09  jnz     $090D
164B  C7        rst     0
164C  00        nop
164D  00        nop
164E  F5        push    psw
164F  3A 4C 0C  lda     $0C4C
1652  FE 53     cpi     'S'
1654  CA 0D 09  jz      $090D
1657  CD 4E 0B  call    $0B4E
165A  07        rlc
165B  00        nop
165C  F1        pop     psw
165D  C9        ret
165E  CD B2 0B  call    $0BB2
1661  CD 2B 0C  call    $0C2B
1664  C9        ret
1665  CD 4E 0B  call    $0B4E
1668  0D        dcr     c
1669  0A        ldax    b
166A  00        nop
166B  C9        ret
166C  CD 4E 0B  call    $0B4E
166F  20        nop                  ;Note: Alternative opcode used
1670  00        nop
1671  C9        ret
1672  00        nop
1673  00        nop
1674  00        nop
1675  00        nop
1676  00        nop
1677  00        nop
1678  00        nop
1679  00        nop
167A  00        nop
167B  00        nop
167C  00        nop
167D  00        nop
167E  80        add     b
167F  0C        inr     c
1680  44        mov     b,h
1681  45        mov     b,l
1682  46        mov     b,m
1683  D5        push    d
1684  16 00     mvi     d,$00
1686  5F        mov     e,a
1687  19        dad
1688  7E        mov     a,m
1689  D1        pop     d
168A  C9        ret
168B  F5        push    psw
168C  7C        mov     a,h
168D  CD A1 0B  call    $0BA1
1690  7D        mov     a,l
1691  CD A1 0B  call    $0BA1
1694  F1        pop     psw
1695  C9        ret
1696  F5        push    psw
1697  CD A1 0B  call    $0BA1
169A  3E 48     mvi     a,'H'
169C  CD 0E 0B  call    $0B0E
169F  F1        pop     psw
16A0  C9        ret
16A1  F5        push    psw
16A2  0F        rrc
16A3  0F        rrc
16A4  0F        rrc
16A5  0F        rrc
16A6  CD 5F 0B  call    $0B5F
16A9  0F        rrc
16AA  0F        rrc
16AB  0F        rrc
16AC  0F        rrc
16AD  CD 5F 0B  call    $0B5F
16B0  F1        pop     psw
16B1  C9        ret
16B2  CD C3 0B  call    $0BC3
16B5  CD 3C 0A  call    $0A3C
16B8  08        nop                  ;Note: Alternative opcode used
16B9  D9        ret                  ;Note: Alternative opcode used
16BA  CD C3 0B  call    $0BC3
16BD  CD 3C 0A  call    $0A3C
16C0  08        nop                  ;Note: Alternative opcode used
16C1  D9        ret                  ;Note: Alternative opcode used
16C2  C9        ret
16C3  22 2A 0C  shld    $0C2A
16C6  CD 4E 0B  call    $0B4E
16C9  0D        dcr     c
16CA  0A        ldax    b
16CB  20        nop                  ;Note: Alternative opcode used
16CC  50        mov     d,b
16CD  20        nop                  ;Note: Alternative opcode used
16CE  43        mov     b,e
16CF  20        nop                  ;Note: Alternative opcode used
16D0  20        nop                  ;Note: Alternative opcode used
16D1  41        mov     b,c
16D2  20        nop                  ;Note: Alternative opcode used
16D3  46        mov     b,m
16D4  20        nop                  ;Note: Alternative opcode used
16D5  20        nop                  ;Note: Alternative opcode used
16D6  42        mov     b,d
16D7  20        nop                  ;Note: Alternative opcode used
16D8  43        mov     b,e
16D9  20        nop                  ;Note: Alternative opcode used
16DA  20        nop                  ;Note: Alternative opcode used
16DB  44        mov     b,h
16DC  20        nop                  ;Note: Alternative opcode used
16DD  45        mov     b,l
16DE  20        nop                  ;Note: Alternative opcode used
16DF  20        nop                  ;Note: Alternative opcode used
16E0  48        mov     c,b
16E1  20        nop                  ;Note: Alternative opcode used
16E2  4C        mov     c,h
16E3  20        nop                  ;Note: Alternative opcode used
16E4  20        nop                  ;Note: Alternative opcode used
16E5  53        mov     d,e
16E6  20        nop                  ;Note: Alternative opcode used
16E7  50        mov     d,b
16E8  0D        dcr     c
16E9  0A        ldax    b
16EA  00        nop
16EB  E1        pop     h
16EC  E5        push    h
16ED  F5        push    psw
16EE  CD 8B 0B  call    $0B8B
16F1  CD 6C 0C  call    $0C6C
16F4  F1        pop     psw
16F5  F5        push    psw
16F6  CD A1 0B  call    $0BA1
16F9  E1        pop     h
16FA  E5        push    h
16FB  7D        mov     a,l
16FC  CD A1 0B  call    $0BA1
16FF  CD 6C 0C  call    $0C6C
1702  60        mov     h,b
1703  69        mov     l,c
1704  CD 8B 0B  call    $0B8B
1707  CD 6C 0C  call    $0C6C
170A  62        mov     h,d
170B  6B        mov     l,e
170C  CD 8B 0B  call    $0B8B
170F  CD 6C 0C  call    $0C6C
1712  2A 2A 0C  lhld    $0C2A
1715  CD 8B 0B  call    $0B8B
1718  CD 6C 0C  call    $0C6C
171B  21 00 00  lxi     h,$0000
171E  39        dad     sp
171F  CD 8B 0B  call    $0B8B
1722  F1        pop     psw
1723  2A 2A 0C  lhld    $0C2A
1726  CD 65 0C  call    $0C65
1729  C9        ret
172A  02        stax    b
172B  F5        push    psw
172C  3A 4C 0C  lda     $0C4C
172F  FE 53     cpi     'S'
1731  CA 0D 09  jz      $090D
1734  FE 43     cpi     'C'
1736  CA 0D 09  jz      $090D
1739  CD 1B 0B  call    $0B1B
173C  32 4C 0C  sta     $0C4C
173F  F5        push    psw
1740  2F        cma
1741  3C        inr     a
1742  32 4D 0C  sta     $0C4D
1745  F1        pop     psw
1746  FE 03     cpi     $03
1748  C2 0D 09  jnz     $090D
174B  C7        rst     0
174C  00        nop
174D  00        nop
174E  F5        push    psw
174F  3A 4C 0C  lda     $0C4C
1752  FE 53     cpi     'S'
1754  CA 0D 09  jz      $090D
1757  CD 4E 0B  call    $0B4E
175A  07        rlc
175B  00        nop
175C  F1        pop     psw
175D  C9        ret
175E  CD B2 0B  call    $0BB2
1761  CD 2B 0C  call    $0C2B
1764  C9        ret
1765  CD 4E 0B  call    $0B4E
1768  0D        dcr     c
1769  0A        ldax    b
176A  00        nop
176B  C9        ret
176C  CD 4E 0B  call    $0B4E
176F  20        nop                  ;Note: Alternative opcode used
1770  00        nop
1771  C9        ret
1772  00        nop
1773  00        nop
1774  00        nop
1775  00        nop
1776  00        nop
1777  00        nop
1778  00        nop
1779  00        nop
177A  00        nop
177B  00        nop
177C  00        nop
177D  00        nop
177E  80        add     b
177F  0C        inr     c
1780  44        mov     b,h
1781  45        mov     b,l
1782  46        mov     b,m
1783  D5        push    d
1784  16 00     mvi     d,$00
1786  5F        mov     e,a
1787  19        dad
1788  7E        mov     a,m
1789  D1        pop     d
178A  C9        ret
178B  F5        push    psw
178C  7C        mov     a,h
178D  CD A1 0B  call    $0BA1
1790  7D        mov     a,l
1791  CD A1 0B  call    $0BA1
1794  F1        pop     psw
1795  C9        ret
1796  F5        push    psw
1797  CD A1 0B  call    $0BA1
179A  3E 48     mvi     a,'H'
179C  CD 0E 0B  call    $0B0E
179F  F1        pop     psw
17A0  C9        ret
17A1  F5        push    psw
17A2  0F        rrc
17A3  0F        rrc
17A4  0F        rrc
17A5  0F        rrc
17A6  CD 5F 0B  call    $0B5F
17A9  0F        rrc
17AA  0F        rrc
17AB  0F        rrc
17AC  0F        rrc
17AD  CD 5F 0B  call    $0B5F
17B0  F1        pop     psw
17B1  C9        ret
17B2  CD C3 0B  call    $0BC3
17B5  CD 3C 0A  call    $0A3C
17B8  08        nop                  ;Note: Alternative opcode used
17B9  D9        ret                  ;Note: Alternative opcode used
17BA  CD C3 0B  call    $0BC3
17BD  CD 3C 0A  call    $0A3C
17C0  08        nop                  ;Note: Alternative opcode used
17C1  D9        ret                  ;Note: Alternative opcode used
17C2  C9        ret
17C3  22 2A 0C  shld    $0C2A
17C6  CD 4E 0B  call    $0B4E
17C9  0D        dcr     c
17CA  0A        ldax    b
17CB  20        nop                  ;Note: Alternative opcode used
17CC  50        mov     d,b
17CD  20        nop                  ;Note: Alternative opcode used
17CE  43        mov     b,e
17CF  20        nop                  ;Note: Alternative opcode used
17D0  20        nop                  ;Note: Alternative opcode used
17D1  41        mov     b,c
17D2  20        nop                  ;Note: Alternative opcode used
17D3  46        mov     b,m
17D4  20        nop                  ;Note: Alternative opcode used
17D5  20        nop                  ;Note: Alternative opcode used
17D6  42        mov     b,d
17D7  20        nop                  ;Note: Alternative opcode used
17D8  43        mov     b,e
17D9  20        nop                  ;Note: Alternative opcode used
17DA  20        nop                  ;Note: Alternative opcode used
17DB  44        mov     b,h
17DC  20        nop                  ;Note: Alternative opcode used
17DD  45        mov     b,l
17DE  20        nop                  ;Note: Alternative opcode used
17DF  20        nop                  ;Note: Alternative opcode used
17E0  48        mov     c,b
17E1  20        nop                  ;Note: Alternative opcode used
17E2  4C        mov     c,h
17E3  20        nop                  ;Note: Alternative opcode used
17E4  20        nop                  ;Note: Alternative opcode used
17E5  53        mov     d,e
17E6  20        nop                  ;Note: Alternative opcode used
17E7  50        mov     d,b
17E8  0D        dcr     c
17E9  0A        ldax    b
17EA  00        nop
17EB  E1        pop     h
17EC  E5        push    h
17ED  F5        push    psw
17EE  CD 8B 0B  call    $0B8B
17F1  CD 6C 0C  call    $0C6C
17F4  F1        pop     psw
17F5  F5        push    psw
17F6  CD A1 0B  call    $0BA1
17F9  E1        pop     h
17FA  E5        push    h
17FB  7D        mov     a,l
17FC  CD A1 0B  call    $0BA1
17FF  CD 6C 0C  call    $0C6C
1802  60        mov     h,b
1803  69        mov     l,c
1804  CD 8B 0B  call    $0B8B
1807  CD 6C 0C  call    $0C6C
180A  62        mov     h,d
180B  6B        mov     l,e
180C  CD 8B 0B  call    $0B8B
180F  CD 6C 0C  call    $0C6C
1812  2A 2A 0C  lhld    $0C2A
1815  CD 8B 0B  call    $0B8B
1818  CD 6C 0C  call    $0C6C
181B  21 00 00  lxi     h,$0000
181E  39        dad     sp
181F  CD 8B 0B  call    $0B8B
1822  F1        pop     psw
1823  2A 2A 0C  lhld    $0C2A
1826  CD 65 0C  call    $0C65
1829  C9        ret
182A  02        stax    b
182B  F5        push    psw
182C  3A 4C 0C  lda     $0C4C
182F  FE 53     cpi     'S'
1831  CA 0D 09  jz      $090D
1834  FE 43     cpi     'C'
1836  CA 0D 09  jz      $090D
1839  CD 1B 0B  call    $0B1B
183C  32 4C 0C  sta     $0C4C
183F  F5        push    psw
1840  2F        cma
1841  3C        inr     a
1842  32 4D 0C  sta     $0C4D
1845  F1        pop     psw
1846  FE 03     cpi     $03
1848  C2 0D 09  jnz     $090D
184B  C7        rst     0
184C  00        nop
184D  00        nop
184E  F5        push    psw
184F  3A 4C 0C  lda     $0C4C
1852  FE 53     cpi     'S'
1854  CA 0D 09  jz      $090D
1857  CD 4E 0B  call    $0B4E
185A  07        rlc
185B  00        nop
185C  F1        pop     psw
185D  C9        ret
185E  CD B2 0B  call    $0BB2
1861  CD 2B 0C  call    $0C2B
1864  C9        ret
1865  CD 4E 0B  call    $0B4E
1868  0D        dcr     c
1869  0A        ldax    b
186A  00        nop
186B  C9        ret
186C  CD 4E 0B  call    $0B4E
186F  20        nop                  ;Note: Alternative opcode used
1870  00        nop
1871  C9        ret
1872  00        nop
1873  00        nop
1874  00        nop
1875  00        nop
1876  00        nop
1877  00        nop
1878  00        nop
1879  00        nop
187A  00        nop
187B  00        nop
187C  00        nop
187D  00        nop
187E  80        add     b
187F  0C        inr     c
1880  44        mov     b,h
1881  45        mov     b,l
1882  46        mov     b,m
1883  D5        push    d
1884  16 00     mvi     d,$00
1886  5F        mov     e,a
1887  19        dad
1888  7E        mov     a,m
1889  D1        pop     d
188A  C9        ret
188B  F5        push    psw
188C  7C        mov     a,h
188D  CD A1 0B  call    $0BA1
1890  7D        mov     a,l
1891  CD A1 0B  call    $0BA1
1894  F1        pop     psw
1895  C9        ret
1896  F5        push    psw
1897  CD A1 0B  call    $0BA1
189A  3E 48     mvi     a,'H'
189C  CD 0E 0B  call    $0B0E
189F  F1        pop     psw
18A0  C9        ret
18A1  F5        push    psw
18A2  0F        rrc
18A3  0F        rrc
18A4  0F        rrc
18A5  0F        rrc
18A6  CD 5F 0B  call    $0B5F
18A9  0F        rrc
18AA  0F        rrc
18AB  0F        rrc
18AC  0F        rrc
18AD  CD 5F 0B  call    $0B5F
18B0  F1        pop     psw
18B1  C9        ret
18B2  CD C3 0B  call    $0BC3
18B5  CD 3C 0A  call    $0A3C
18B8  08        nop                  ;Note: Alternative opcode used
18B9  D9        ret                  ;Note: Alternative opcode used
18BA  CD C3 0B  call    $0BC3
18BD  CD 3C 0A  call    $0A3C
18C0  08        nop                  ;Note: Alternative opcode used
18C1  D9        ret                  ;Note: Alternative opcode used
18C2  C9        ret
18C3  22 2A 0C  shld    $0C2A
18C6  CD 4E 0B  call    $0B4E
18C9  0D        dcr     c
18CA  0A        ldax    b
18CB  20        nop                  ;Note: Alternative opcode used
18CC  50        mov     d,b
18CD  20        nop                  ;Note: Alternative opcode used
18CE  43        mov     b,e
18CF  20        nop                  ;Note: Alternative opcode used
18D0  20        nop                  ;Note: Alternative opcode used
18D1  41        mov     b,c
18D2  20        nop                  ;Note: Alternative opcode used
18D3  46        mov     b,m
18D4  20        nop                  ;Note: Alternative opcode used
18D5  20        nop                  ;Note: Alternative opcode used
18D6  42        mov     b,d
18D7  20        nop                  ;Note: Alternative opcode used
18D8  43        mov     b,e
18D9  20        nop                  ;Note: Alternative opcode used
18DA  20        nop                  ;Note: Alternative opcode used
18DB  44        mov     b,h
18DC  20        nop                  ;Note: Alternative opcode used
18DD  45        mov     b,l
18DE  20        nop                  ;Note: Alternative opcode used
18DF  20        nop                  ;Note: Alternative opcode used
18E0  48        mov     c,b
18E1  20        nop                  ;Note: Alternative opcode used
18E2  4C        mov     c,h
18E3  20        nop                  ;Note: Alternative opcode used
18E4  20        nop                  ;Note: Alternative opcode used
18E5  53        mov     d,e
18E6  20        nop                  ;Note: Alternative opcode used
18E7  50        mov     d,b
18E8  0D        dcr     c
18E9  0A        ldax    b
18EA  00        nop
18EB  E1        pop     h
18EC  E5        push    h
18ED  F5        push    psw
18EE  CD 8B 0B  call    $0B8B
18F1  CD 6C 0C  call    $0C6C
18F4  F1        pop     psw
18F5  F5        push    psw
18F6  CD A1 0B  call    $0BA1
18F9  E1        pop     h
18FA  E5        push    h
18FB  7D        mov     a,l
18FC  CD A1 0B  call    $0BA1
18FF  CD 6C 0C  call    $0C6C
1902  60        mov     h,b
1903  69        mov     l,c
1904  CD 8B 0B  call    $0B8B
1907  CD 6C 0C  call    $0C6C
190A  62        mov     h,d
190B  6B        mov     l,e
190C  CD 8B 0B  call    $0B8B
190F  CD 6C 0C  call    $0C6C
1912  2A 2A 0C  lhld    $0C2A
1915  CD 8B 0B  call    $0B8B
1918  CD 6C 0C  call    $0C6C
191B  21 00 00  lxi     h,$0000
191E  39        dad     sp
191F  CD 8B 0B  call    $0B8B
1922  F1        pop     psw
1923  2A 2A 0C  lhld    $0C2A
1926  CD 65 0C  call    $0C65
1929  C9        ret
192A  02        stax    b
192B  F5        push    psw
192C  3A 4C 0C  lda     $0C4C
192F  FE 53     cpi     'S'
1931  CA 0D 09  jz      $090D
1934  FE 43     cpi     'C'
1936  CA 0D 09  jz      $090D
1939  CD 1B 0B  call    $0B1B
193C  32 4C 0C  sta     $0C4C
193F  F5        push    psw
1940  2F        cma
1941  3C        inr     a
1942  32 4D 0C  sta     $0C4D
1945  F1        pop     psw
1946  FE 03     cpi     $03
1948  C2 0D 09  jnz     $090D
194B  C7        rst     0
194C  00        nop
194D  00        nop
194E  F5        push    psw
194F  3A 4C 0C  lda     $0C4C
1952  FE 53     cpi     'S'
1954  CA 0D 09  jz      $090D
1957  CD 4E 0B  call    $0B4E
195A  07        rlc
195B  00        nop
195C  F1        pop     psw
195D  C9        ret
195E  CD B2 0B  call    $0BB2
1961  CD 2B 0C  call    $0C2B
1964  C9        ret
1965  CD 4E 0B  call    $0B4E
1968  0D        dcr     c
1969  0A        ldax    b
196A  00        nop
196B  C9        ret
196C  CD 4E 0B  call    $0B4E
196F  20        nop                  ;Note: Alternative opcode used
1970  00        nop
1971  C9        ret
1972  00        nop
1973  00        nop
1974  00        nop
1975  00        nop
1976  00        nop
1977  00        nop
1978  00        nop
1979  00        nop
197A  00        nop
197B  00        nop
197C  00        nop
197D  00        nop
197E  80        add     b
197F  0C        inr     c
1980  44        mov     b,h
1981  45        mov     b,l
1982  46        mov     b,m
1983  D5        push    d
1984  16 00     mvi     d,$00
1986  5F        mov     e,a
1987  19        dad
1988  7E        mov     a,m
1989  D1        pop     d
198A  C9        ret
198B  F5        push    psw
198C  7C        mov     a,h
198D  CD A1 0B  call    $0BA1
1990  7D        mov     a,l
1991  CD A1 0B  call    $0BA1
1994  F1        pop     psw
1995  C9        ret
1996  F5        push    psw
1997  CD A1 0B  call    $0BA1
199A  3E 48     mvi     a,'H'
199C  CD 0E 0B  call    $0B0E
199F  F1        pop     psw
19A0  C9        ret
19A1  F5        push    psw
19A2  0F        rrc
19A3  0F        rrc
19A4  0F        rrc
19A5  0F        rrc
19A6  CD 5F 0B  call    $0B5F
19A9  0F        rrc
19AA  0F        rrc
19AB  0F        rrc
19AC  0F        rrc
19AD  CD 5F 0B  call    $0B5F
19B0  F1        pop     psw
19B1  C9        ret
19B2  CD C3 0B  call    $0BC3
19B5  CD 3C 0A  call    $0A3C
19B8  08        nop                  ;Note: Alternative opcode used
19B9  D9        ret                  ;Note: Alternative opcode used
19BA  CD C3 0B  call    $0BC3
19BD  CD 3C 0A  call    $0A3C
19C0  08        nop                  ;Note: Alternative opcode used
19C1  D9        ret                  ;Note: Alternative opcode used
19C2  C9        ret
19C3  22 2A 0C  shld    $0C2A
19C6  CD 4E 0B  call    $0B4E
19C9  0D        dcr     c
19CA  0A        ldax    b
19CB  20        nop                  ;Note: Alternative opcode used
19CC  50        mov     d,b
19CD  20        nop                  ;Note: Alternative opcode used
19CE  43        mov     b,e
19CF  20        nop                  ;Note: Alternative opcode used
19D0  20        nop                  ;Note: Alternative opcode used
19D1  41        mov     b,c
19D2  20        nop                  ;Note: Alternative opcode used
19D3  46        mov     b,m
19D4  20        nop                  ;Note: Alternative opcode used
19D5  20        nop                  ;Note: Alternative opcode used
19D6  42        mov     b,d
19D7  20        nop                  ;Note: Alternative opcode used
19D8  43        mov     b,e
19D9  20        nop                  ;Note: Alternative opcode used
19DA  20        nop                  ;Note: Alternative opcode used
19DB  44        mov     b,h
19DC  20        nop                  ;Note: Alternative opcode used
19DD  45        mov     b,l
19DE  20        nop                  ;Note: Alternative opcode used
19DF  20        nop                  ;Note: Alternative opcode used
19E0  48        mov     c,b
19E1  20        nop                  ;Note: Alternative opcode used
19E2  4C        mov     c,h
19E3  20        nop                  ;Note: Alternative opcode used
19E4  20        nop                  ;Note: Alternative opcode used
19E5  53        mov     d,e
19E6  20        nop                  ;Note: Alternative opcode used
19E7  50        mov     d,b
19E8  0D        dcr     c
19E9  0A        ldax    b
19EA  00        nop
19EB  E1        pop     h
19EC  E5        push    h
19ED  F5        push    psw
19EE  CD 8B 0B  call    $0B8B
19F1  CD 6C 0C  call    $0C6C
19F4  F1        pop     psw
19F5  F5        push    psw
19F6  CD A1 0B  call    $0BA1
19F9  E1        pop     h
19FA  E5        push    h
19FB  7D        mov     a,l
19FC  CD A1 0B  call    $0BA1
19FF  CD 6C 0C  call    $0C6C
1A02  60        mov     h,b
1A03  69        mov     l,c
1A04  CD 8B 0B  call    $0B8B
1A07  CD 6C 0C  call    $0C6C
1A0A  62        mov     h,d
1A0B  6B        mov     l,e
1A0C  CD 8B 0B  call    $0B8B
1A0F  CD 6C 0C  call    $0C6C
1A12  2A 2A 0C  lhld    $0C2A
1A15  CD 8B 0B  call    $0B8B
1A18  CD 6C 0C  call    $0C6C
1A1B  21 00 00  lxi     h,$0000
1A1E  39        dad     sp
1A1F  CD 8B 0B  call    $0B8B
1A22  F1        pop     psw
1A23  2A 2A 0C  lhld    $0C2A
1A26  CD 65 0C  call    $0C65
1A29  C9        ret
1A2A  02        stax    b
1A2B  F5        push    psw
1A2C  3A 4C 0C  lda     $0C4C
1A2F  FE 53     cpi     'S'
1A31  CA 0D 09  jz      $090D
1A34  FE 43     cpi     'C'
1A36  CA 0D 09  jz      $090D
1A39  CD 1B 0B  call    $0B1B
1A3C  32 4C 0C  sta     $0C4C
1A3F  F5        push    psw
1A40  2F        cma
1A41  3C        inr     a
1A42  32 4D 0C  sta     $0C4D
1A45  F1        pop     psw
1A46  FE 03     cpi     $03
1A48  C2 0D 09  jnz     $090D
1A4B  C7        rst     0
1A4C  00        nop
1A4D  00        nop
1A4E  F5        push    psw
1A4F  3A 4C 0C  lda     $0C4C
1A52  FE 53     cpi     'S'
1A54  CA 0D 09  jz      $090D
1A57  CD 4E 0B  call    $0B4E
1A5A  07        rlc
1A5B  00        nop
1A5C  F1        pop     psw
1A5D  C9        ret
1A5E  CD B2 0B  call    $0BB2
1A61  CD 2B 0C  call    $0C2B
1A64  C9        ret
1A65  CD 4E 0B  call    $0B4E
1A68  0D        dcr     c
1A69  0A        ldax    b
1A6A  00        nop
1A6B  C9        ret
1A6C  CD 4E 0B  call    $0B4E
1A6F  20        nop                  ;Note: Alternative opcode used
1A70  00        nop
1A71  C9        ret
1A72  00        nop
1A73  00        nop
1A74  00        nop
1A75  00        nop
1A76  00        nop
1A77  00        nop
1A78  00        nop
1A79  00        nop
1A7A  00        nop
1A7B  00        nop
1A7C  00        nop
1A7D  00        nop
1A7E  80        add     b
1A7F  0C        inr     c
1A80  44        mov     b,h
1A81  45        mov     b,l
1A82  46        mov     b,m
1A83  D5        push    d
1A84  16 00     mvi     d,$00
1A86  5F        mov     e,a
1A87  19        dad
1A88  7E        mov     a,m
1A89  D1        pop     d
1A8A  C9        ret
1A8B  F5        push    psw
1A8C  7C        mov     a,h
1A8D  CD A1 0B  call    $0BA1
1A90  7D        mov     a,l
1A91  CD A1 0B  call    $0BA1
1A94  F1        pop     psw
1A95  C9        ret
1A96  F5        push    psw
1A97  CD A1 0B  call    $0BA1
1A9A  3E 48     mvi     a,'H'
1A9C  CD 0E 0B  call    $0B0E
1A9F  F1        pop     psw
1AA0  C9        ret
1AA1  F5        push    psw
1AA2  0F        rrc
1AA3  0F        rrc
1AA4  0F        rrc
1AA5  0F        rrc
1AA6  CD 5F 0B  call    $0B5F
1AA9  0F        rrc
1AAA  0F        rrc
1AAB  0F        rrc
1AAC  0F        rrc
1AAD  CD 5F 0B  call    $0B5F
1AB0  F1        pop     psw
1AB1  C9        ret
1AB2  CD C3 0B  call    $0BC3
1AB5  CD 3C 0A  call    $0A3C
1AB8  08        nop                  ;Note: Alternative opcode used
1AB9  D9        ret                  ;Note: Alternative opcode used
1ABA  CD C3 0B  call    $0BC3
1ABD  CD 3C 0A  call    $0A3C
1AC0  08        nop                  ;Note: Alternative opcode used
1AC1  D9        ret                  ;Note: Alternative opcode used
1AC2  C9        ret
1AC3  22 2A 0C  shld    $0C2A
1AC6  CD 4E 0B  call    $0B4E
1AC9  0D        dcr     c
1ACA  0A        ldax    b
1ACB  20        nop                  ;Note: Alternative opcode used
1ACC  50        mov     d,b
1ACD  20        nop                  ;Note: Alternative opcode used
1ACE  43        mov     b,e
1ACF  20        nop                  ;Note: Alternative opcode used
1AD0  20        nop                  ;Note: Alternative opcode used
1AD1  41        mov     b,c
1AD2  20        nop                  ;Note: Alternative opcode used
1AD3  46        mov     b,m
1AD4  20        nop                  ;Note: Alternative opcode used
1AD5  20        nop                  ;Note: Alternative opcode used
1AD6  42        mov     b,d
1AD7  20        nop                  ;Note: Alternative opcode used
1AD8  43        mov     b,e
1AD9  20        nop                  ;Note: Alternative opcode used
1ADA  20        nop                  ;Note: Alternative opcode used
1ADB  44        mov     b,h
1ADC  20        nop                  ;Note: Alternative opcode used
1ADD  45        mov     b,l
1ADE  20        nop                  ;Note: Alternative opcode used
1ADF  20        nop                  ;Note: Alternative opcode used
1AE0  48        mov     c,b
1AE1  20        nop                  ;Note: Alternative opcode used
1AE2  4C        mov     c,h
1AE3  20        nop                  ;Note: Alternative opcode used
1AE4  20        nop                  ;Note: Alternative opcode used
1AE5  53        mov     d,e
1AE6  20        nop                  ;Note: Alternative opcode used
1AE7  50        mov     d,b
1AE8  0D        dcr     c
1AE9  0A        ldax    b
1AEA  00        nop
1AEB  E1        pop     h
1AEC  E5        push    h
1AED  F5        push    psw
1AEE  CD 8B 0B  call    $0B8B
1AF1  CD 6C 0C  call    $0C6C
1AF4  F1        pop     psw
1AF5  F5        push    psw
1AF6  CD A1 0B  call    $0BA1
1AF9  E1        pop     h
1AFA  E5        push    h
1AFB  7D        mov     a,l
1AFC  CD A1 0B  call    $0BA1
1AFF  CD 6C 0C  call    $0C6C
1B02  60        mov     h,b
1B03  69        mov     l,c
1B04  CD 8B 0B  call    $0B8B
1B07  CD 6C 0C  call    $0C6C
1B0A  62        mov     h,d
1B0B  6B        mov     l,e
1B0C  CD 8B 0B  call    $0B8B
1B0F  CD 6C 0C  call    $0C6C
1B12  2A 2A 0C  lhld    $0C2A
1B15  CD 8B 0B  call    $0B8B
1B18  CD 6C 0C  call    $0C6C
1B1B  21 00 00  lxi     h,$0000
1B1E  39        dad     sp
1B1F  CD 8B 0B  call    $0B8B
1B22  F1        pop     psw
1B23  2A 2A 0C  lhld    $0C2A
1B26  CD 65 0C  call    $0C65
1B29  C9        ret
1B2A  02        stax    b
1B2B  F5        push    psw
1B2C  3A 4C 0C  lda     $0C4C
1B2F  FE 53     cpi     'S'
1B31  CA 0D 09  jz      $090D
1B34  FE 43     cpi     'C'
1B36  CA 0D 09  jz      $090D
1B39  CD 1B 0B  call    $0B1B
1B3C  32 4C 0C  sta     $0C4C
1B3F  F5        push    psw
1B40  2F        cma
1B41  3C        inr     a
1B42  32 4D 0C  sta     $0C4D
1B45  F1        pop     psw
1B46  FE 03     cpi     $03
1B48  C2 0D 09  jnz     $090D
1B4B  C7        rst     0
1B4C  00        nop
1B4D  00        nop
1B4E  F5        push    psw
1B4F  3A 4C 0C  lda     $0C4C
1B52  FE 53     cpi     'S'
1B54  CA 0D 09  jz      $090D
1B57  CD 4E 0B  call    $0B4E
1B5A  07        rlc
1B5B  00        nop
1B5C  F1        pop     psw
1B5D  C9        ret
1B5E  CD B2 0B  call    $0BB2
1B61  CD 2B 0C  call    $0C2B
1B64  C9        ret
1B65  CD 4E 0B  call    $0B4E
1B68  0D        dcr     c
1B69  0A        ldax    b
1B6A  00        nop
1B6B  C9        ret
1B6C  CD 4E 0B  call    $0B4E
1B6F  20        nop                  ;Note: Alternative opcode used
1B70  00        nop
1B71  C9        ret
1B72  00        nop
1B73  00        nop
1B74  00        nop
1B75  00        nop
1B76  00        nop
1B77  00        nop
1B78  00        nop
1B79  00        nop
1B7A  00        nop
1B7B  00        nop
1B7C  00        nop
1B7D  00        nop
1B7E  80        add     b
1B7F  0C        inr     c
1B80  44        mov     b,h
1B81  45        mov     b,l
1B82  46        mov     b,m
1B83  D5        push    d
1B84  16 00     mvi     d,$00
1B86  5F        mov     e,a
1B87  19        dad
1B88  7E        mov     a,m
1B89  D1        pop     d
1B8A  C9        ret
1B8B  F5        push    psw
1B8C  7C        mov     a,h
1B8D  CD A1 0B  call    $0BA1
1B90  7D        mov     a,l
1B91  CD A1 0B  call    $0BA1
1B94  F1        pop     psw
1B95  C9        ret
1B96  F5        push    psw
1B97  CD A1 0B  call    $0BA1
1B9A  3E 48     mvi     a,'H'
1B9C  CD 0E 0B  call    $0B0E
1B9F  F1        pop     psw
1BA0  C9        ret
1BA1  F5        push    psw
1BA2  0F        rrc
1BA3  0F        rrc
1BA4  0F        rrc
1BA5  0F        rrc
1BA6  CD 5F 0B  call    $0B5F
1BA9  0F        rrc
1BAA  0F        rrc
1BAB  0F        rrc
1BAC  0F        rrc
1BAD  CD 5F 0B  call    $0B5F
1BB0  F1        pop     psw
1BB1  C9        ret
1BB2  CD C3 0B  call    $0BC3
1BB5  CD 3C 0A  call    $0A3C
1BB8  08        nop                  ;Note: Alternative opcode used
1BB9  D9        ret                  ;Note: Alternative opcode used
1BBA  CD C3 0B  call    $0BC3
1BBD  CD 3C 0A  call    $0A3C
1BC0  08        nop                  ;Note: Alternative opcode used
1BC1  D9        ret                  ;Note: Alternative opcode used
1BC2  C9        ret
1BC3  22 2A 0C  shld    $0C2A
1BC6  CD 4E 0B  call    $0B4E
1BC9  0D        dcr     c
1BCA  0A        ldax    b
1BCB  20        nop                  ;Note: Alternative opcode used
1BCC  50        mov     d,b
1BCD  20        nop                  ;Note: Alternative opcode used
1BCE  43        mov     b,e
1BCF  20        nop                  ;Note: Alternative opcode used
1BD0  20        nop                  ;Note: Alternative opcode used
1BD1  41        mov     b,c
1BD2  20        nop                  ;Note: Alternative opcode used
1BD3  46        mov     b,m
1BD4  20        nop                  ;Note: Alternative opcode used
1BD5  20        nop                  ;Note: Alternative opcode used
1BD6  42        mov     b,d
1BD7  20        nop                  ;Note: Alternative opcode used
1BD8  43        mov     b,e
1BD9  20        nop                  ;Note: Alternative opcode used
1BDA  20        nop                  ;Note: Alternative opcode used
1BDB  44        mov     b,h
1BDC  20        nop                  ;Note: Alternative opcode used
1BDD  45        mov     b,l
1BDE  20        nop                  ;Note: Alternative opcode used
1BDF  20        nop                  ;Note: Alternative opcode used
1BE0  48        mov     c,b
1BE1  20        nop                  ;Note: Alternative opcode used
1BE2  4C        mov     c,h
1BE3  20        nop                  ;Note: Alternative opcode used
1BE4  20        nop                  ;Note: Alternative opcode used
1BE5  53        mov     d,e
1BE6  20        nop                  ;Note: Alternative opcode used
1BE7  50        mov     d,b
1BE8  0D        dcr     c
1BE9  0A        ldax    b
1BEA  00        nop
1BEB  E1        pop     h
1BEC  E5        push    h
1BED  F5        push    psw
1BEE  CD 8B 0B  call    $0B8B
1BF1  CD 6C 0C  call    $0C6C
1BF4  F1        pop     psw
1BF5  F5        push    psw
1BF6  CD A1 0B  call    $0BA1
1BF9  E1        pop     h
1BFA  E5        push    h
1BFB  7D        mov     a,l
1BFC  CD A1 0B  call    $0BA1
1BFF  CD 6C 0C  call    $0C6C
1C02  60        mov     h,b
1C03  69        mov     l,c
1C04  CD 8B 0B  call    $0B8B
1C07  CD 6C 0C  call    $0C6C
1C0A  62        mov     h,d
1C0B  6B        mov     l,e
1C0C  CD 8B 0B  call    $0B8B
1C0F  CD 6C 0C  call    $0C6C
1C12  2A 2A 0C  lhld    $0C2A
1C15  CD 8B 0B  call    $0B8B
1C18  CD 6C 0C  call    $0C6C
1C1B  21 00 00  lxi     h,$0000
1C1E  39        dad     sp
1C1F  CD 8B 0B  call    $0B8B
1C22  F1        pop     psw
1C23  2A 2A 0C  lhld    $0C2A
1C26  CD 65 0C  call    $0C65
1C29  C9        ret
1C2A  02        stax    b
1C2B  F5        push    psw
1C2C  3A 4C 0C  lda     $0C4C
1C2F  FE 53     cpi     'S'
1C31  CA 0D 09  jz      $090D
1C34  FE 43     cpi     'C'
1C36  CA 0D 09  jz      $090D
1C39  CD 1B 0B  call    $0B1B
1C3C  32 4C 0C  sta     $0C4C
1C3F  F5        push    psw
1C40  2F        cma
1C41  3C        inr     a
1C42  32 4D 0C  sta     $0C4D
1C45  F1        pop     psw
1C46  FE 03     cpi     $03
1C48  C2 0D 09  jnz     $090D
1C4B  C7        rst     0
1C4C  00        nop
1C4D  00        nop
1C4E  F5        push    psw
1C4F  3A 4C 0C  lda     $0C4C
1C52  FE 53     cpi     'S'
1C54  CA 0D 09  jz      $090D
1C57  CD 4E 0B  call    $0B4E
1C5A  07        rlc
1C5B  00        nop
1C5C  F1        pop     psw
1C5D  C9        ret
1C5E  CD B2 0B  call    $0BB2
1C61  CD 2B 0C  call    $0C2B
1C64  C9        ret
1C65  CD 4E 0B  call    $0B4E
1C68  0D        dcr     c
1C69  0A        ldax    b
1C6A  00        nop
1C6B  C9        ret
1C6C  CD 4E 0B  call    $0B4E
1C6F  20        nop                  ;Note: Alternative opcode used
1C70  00        nop
1C71  C9        ret
1C72  00        nop
1C73  00        nop
1C74  00        nop
1C75  00        nop
1C76  00        nop
1C77  00        nop
1C78  00        nop
1C79  00        nop
1C7A  00        nop
1C7B  00        nop
1C7C  00        nop
1C7D  00        nop
1C7E  80        add     b
1C7F  0C        inr     c
1C80  44        mov     b,h
1C81  45        mov     b,l
1C82  46        mov     b,m
1C83  D5        push    d
1C84  16 00     mvi     d,$00
1C86  5F        mov     e,a
1C87  19        dad
1C88  7E        mov     a,m
1C89  D1        pop     d
1C8A  C9        ret
1C8B  F5        push    psw
1C8C  7C        mov     a,h
1C8D  CD A1 0B  call    $0BA1
1C90  7D        mov     a,l
1C91  CD A1 0B  call    $0BA1
1C94  F1        pop     psw
1C95  C9        ret
1C96  F5        push    psw
1C97  CD A1 0B  call    $0BA1
1C9A  3E 48     mvi     a,'H'
1C9C  CD 0E 0B  call    $0B0E
1C9F  F1        pop     psw
1CA0  C9        ret
1CA1  F5        push    psw
1CA2  0F        rrc
1CA3  0F        rrc
1CA4  0F        rrc
1CA5  0F        rrc
1CA6  CD 5F 0B  call    $0B5F
1CA9  0F        rrc
1CAA  0F        rrc
1CAB  0F        rrc
1CAC  0F        rrc
1CAD  CD 5F 0B  call    $0B5F
1CB0  F1        pop     psw
1CB1  C9        ret
1CB2  CD C3 0B  call    $0BC3
1CB5  CD 3C 0A  call    $0A3C
1CB8  08        nop                  ;Note: Alternative opcode used
1CB9  D9        ret                  ;Note: Alternative opcode used
1CBA  CD C3 0B  call    $0BC3
1CBD  CD 3C 0A  call    $0A3C
1CC0  08        nop                  ;Note: Alternative opcode used
1CC1  D9        ret                  ;Note: Alternative opcode used
1CC2  C9        ret
1CC3  22 2A 0C  shld    $0C2A
1CC6  CD 4E 0B  call    $0B4E
1CC9  0D        dcr     c
1CCA  0A        ldax    b
1CCB  20        nop                  ;Note: Alternative opcode used
1CCC  50        mov     d,b
1CCD  20        nop                  ;Note: Alternative opcode used
1CCE  43        mov     b,e
1CCF  20        nop                  ;Note: Alternative opcode used
1CD0  20        nop                  ;Note: Alternative opcode used
1CD1  41        mov     b,c
1CD2  20        nop                  ;Note: Alternative opcode used
1CD3  46        mov     b,m
1CD4  20        nop                  ;Note: Alternative opcode used
1CD5  20        nop                  ;Note: Alternative opcode used
1CD6  42        mov     b,d
1CD7  20        nop                  ;Note: Alternative opcode used
1CD8  43        mov     b,e
1CD9  20        nop                  ;Note: Alternative opcode used
1CDA  20        nop                  ;Note: Alternative opcode used
1CDB  44        mov     b,h
1CDC  20        nop                  ;Note: Alternative opcode used
1CDD  45        mov     b,l
1CDE  20        nop                  ;Note: Alternative opcode used
1CDF  20        nop                  ;Note: Alternative opcode used
1CE0  48        mov     c,b
1CE1  20        nop                  ;Note: Alternative opcode used
1CE2  4C        mov     c,h
1CE3  20        nop                  ;Note: Alternative opcode used
1CE4  20        nop                  ;Note: Alternative opcode used
1CE5  53        mov     d,e
1CE6  20        nop                  ;Note: Alternative opcode used
1CE7  50        mov     d,b
1CE8  0D        dcr     c
1CE9  0A        ldax    b
1CEA  00        nop
1CEB  E1        pop     h
1CEC  E5        push    h
1CED  F5        push    psw
1CEE  CD 8B 0B  call    $0B8B
1CF1  CD 6C 0C  call    $0C6C
1CF4  F1        pop     psw
1CF5  F5        push    psw
1CF6  CD A1 0B  call    $0BA1
1CF9  E1        pop     h
1CFA  E5        push    h
1CFB  7D        mov     a,l
1CFC  CD A1 0B  call    $0BA1
1CFF  CD 6C 0C  call    $0C6C
1D02  60        mov     h,b
1D03  69        mov     l,c
1D04  CD 8B 0B  call    $0B8B
1D07  CD 6C 0C  call    $0C6C
1D0A  62        mov     h,d
1D0B  6B        mov     l,e
1D0C  CD 8B 0B  call    $0B8B
1D0F  CD 6C 0C  call    $0C6C
1D12  2A 2A 0C  lhld    $0C2A
1D15  CD 8B 0B  call    $0B8B
1D18  CD 6C 0C  call    $0C6C
1D1B  21 00 00  lxi     h,$0000
1D1E  39        dad     sp
1D1F  CD 8B 0B  call    $0B8B
1D22  F1        pop     psw
1D23  2A 2A 0C  lhld    $0C2A
1D26  CD 65 0C  call    $0C65
1D29  C9        ret
1D2A  02        stax    b
1D2B  F5        push    psw
1D2C  3A 4C 0C  lda     $0C4C
1D2F  FE 53     cpi     'S'
1D31  CA 0D 09  jz      $090D
1D34  FE 43     cpi     'C'
1D36  CA 0D 09  jz      $090D
1D39  CD 1B 0B  call    $0B1B
1D3C  32 4C 0C  sta     $0C4C
1D3F  F5        push    psw
1D40  2F        cma
1D41  3C        inr     a
1D42  32 4D 0C  sta     $0C4D
1D45  F1        pop     psw
1D46  FE 03     cpi     $03
1D48  C2 0D 09  jnz     $090D
1D4B  C7        rst     0
1D4C  00        nop
1D4D  00        nop
1D4E  F5        push    psw
1D4F  3A 4C 0C  lda     $0C4C
1D52  FE 53     cpi     'S'
1D54  CA 0D 09  jz      $090D
1D57  CD 4E 0B  call    $0B4E
1D5A  07        rlc
1D5B  00        nop
1D5C  F1        pop     psw
1D5D  C9        ret
1D5E  CD B2 0B  call    $0BB2
1D61  CD 2B 0C  call    $0C2B
1D64  C9        ret
1D65  CD 4E 0B  call    $0B4E
1D68  0D        dcr     c
1D69  0A        ldax    b
1D6A  00        nop
1D6B  C9        ret
1D6C  CD 4E 0B  call    $0B4E
1D6F  20        nop                  ;Note: Alternative opcode used
1D70  00        nop
1D71  C9        ret
1D72  00        nop
1D73  00        nop
1D74  00        nop
1D75  00        nop
1D76  00        nop
1D77  00        nop
1D78  00        nop
1D79  00        nop
1D7A  00        nop
1D7B  00        nop
1D7C  00        nop
1D7D  00        nop
1D7E  80        add     b
1D7F  0C        inr     c
1D80  44        mov     b,h
1D81  45        mov     b,l
1D82  46        mov     b,m
1D83  D5        push    d
1D84  16 00     mvi     d,$00
1D86  5F        mov     e,a
1D87  19        dad
1D88  7E        mov     a,m
1D89  D1        pop     d
1D8A  C9        ret
1D8B  F5        push    psw
1D8C  7C        mov     a,h
1D8D  CD A1 0B  call    $0BA1
1D90  7D        mov     a,l
1D91  CD A1 0B  call    $0BA1
1D94  F1        pop     psw
1D95  C9        ret
1D96  F5        push    psw
1D97  CD A1 0B  call    $0BA1
1D9A  3E 48     mvi     a,'H'
1D9C  CD 0E 0B  call    $0B0E
1D9F  F1        pop     psw
1DA0  C9        ret
1DA1  F5        push    psw
1DA2  0F        rrc
1DA3  0F        rrc
1DA4  0F        rrc
1DA5  0F        rrc
1DA6  CD 5F 0B  call    $0B5F
1DA9  0F        rrc
1DAA  0F        rrc
1DAB  0F        rrc
1DAC  0F        rrc
1DAD  CD 5F 0B  call    $0B5F
1DB0  F1        pop     psw
1DB1  C9        ret
1DB2  CD C3 0B  call    $0BC3
1DB5  CD 3C 0A  call    $0A3C
1DB8  08        nop                  ;Note: Alternative opcode used
1DB9  D9        ret                  ;Note: Alternative opcode used
1DBA  CD C3 0B  call    $0BC3
1DBD  CD 3C 0A  call    $0A3C
1DC0  08        nop                  ;Note: Alternative opcode used
1DC1  D9        ret                  ;Note: Alternative opcode used
1DC2  C9        ret
1DC3  22 2A 0C  shld    $0C2A
1DC6  CD 4E 0B  call    $0B4E
1DC9  0D        dcr     c
1DCA  0A        ldax    b
1DCB  20        nop                  ;Note: Alternative opcode used
1DCC  50        mov     d,b
1DCD  20        nop                  ;Note: Alternative opcode used
1DCE  43        mov     b,e
1DCF  20        nop                  ;Note: Alternative opcode used
1DD0  20        nop                  ;Note: Alternative opcode used
1DD1  41        mov     b,c
1DD2  20        nop                  ;Note: Alternative opcode used
1DD3  46        mov     b,m
1DD4  20        nop                  ;Note: Alternative opcode used
1DD5  20        nop                  ;Note: Alternative opcode used
1DD6  42        mov     b,d
1DD7  20        nop                  ;Note: Alternative opcode used
1DD8  43        mov     b,e
1DD9  20        nop                  ;Note: Alternative opcode used
1DDA  20        nop                  ;Note: Alternative opcode used
1DDB  44        mov     b,h
1DDC  20        nop                  ;Note: Alternative opcode used
1DDD  45        mov     b,l
1DDE  20        nop                  ;Note: Alternative opcode used
1DDF  20        nop                  ;Note: Alternative opcode used
1DE0  48        mov     c,b
1DE1  20        nop                  ;Note: Alternative opcode used
1DE2  4C        mov     c,h
1DE3  20        nop                  ;Note: Alternative opcode used
1DE4  20        nop                  ;Note: Alternative opcode used
1DE5  53        mov     d,e
1DE6  20        nop                  ;Note: Alternative opcode used
1DE7  50        mov     d,b
1DE8  0D        dcr     c
1DE9  0A        ldax    b
1DEA  00        nop
1DEB  E1        pop     h
1DEC  E5        push    h
1DED  F5        push    psw
1DEE  CD 8B 0B  call    $0B8B
1DF1  CD 6C 0C  call    $0C6C
1DF4  F1        pop     psw
1DF5  F5        push    psw
1DF6  CD A1 0B  call    $0BA1
1DF9  E1        pop     h
1DFA  E5        push    h
1DFB  7D        mov     a,l
1DFC  CD A1 0B  call    $0BA1
1DFF  CD 6C 0C  call    $0C6C
1E02  60        mov     h,b
1E03  69        mov     l,c
1E04  CD 8B 0B  call    $0B8B
1E07  CD 6C 0C  call    $0C6C
1E0A  62        mov     h,d
1E0B  6B        mov     l,e
1E0C  CD 8B 0B  call    $0B8B
1E0F  CD 6C 0C  call    $0C6C
1E12  2A 2A 0C  lhld    $0C2A
1E15  CD 8B 0B  call    $0B8B
1E18  CD 6C 0C  call    $0C6C
1E1B  21 00 00  lxi     h,$0000
1E1E  39        dad     sp
1E1F  CD 8B 0B  call    $0B8B
1E22  F1        pop     psw
1E23  2A 2A 0C  lhld    $0C2A
1E26  CD 65 0C  call    $0C65
1E29  C9        ret
1E2A  02        stax    b
1E2B  F5        push    psw
1E2C  3A 4C 0C  lda     $0C4C
1E2F  FE 53     cpi     'S'
1E31  CA 0D 09  jz      $090D
1E34  FE 43     cpi     'C'
1E36  CA 0D 09  jz      $090D
1E39  CD 1B 0B  call    $0B1B
1E3C  32 4C 0C  sta     $0C4C
1E3F  F5        push    psw
1E40  2F        cma
1E41  3C        inr     a
1E42  32 4D 0C  sta     $0C4D
1E45  F1        pop     psw
1E46  FE 03     cpi     $03
1E48  C2 0D 09  jnz     $090D
1E4B  C7        rst     0
1E4C  00        nop
1E4D  00        nop
1E4E  F5        push    psw
1E4F  3A 4C 0C  lda     $0C4C
1E52  FE 53     cpi     'S'
1E54  CA 0D 09  jz      $090D
1E57  CD 4E 0B  call    $0B4E
1E5A  07        rlc
1E5B  00        nop
1E5C  F1        pop     psw
1E5D  C9        ret
1E5E  CD B2 0B  call    $0BB2
1E61  CD 2B 0C  call    $0C2B
1E64  C9        ret
1E65  CD 4E 0B  call    $0B4E
1E68  0D        dcr     c
1E69  0A        ldax    b
1E6A  00        nop
1E6B  C9        ret
1E6C  CD 4E 0B  call    $0B4E
1E6F  20        nop                  ;Note: Alternative opcode used
1E70  00        nop
1E71  C9        ret
1E72  00        nop
1E73  00        nop
1E74  00        nop
1E75  00        nop
1E76  00        nop
1E77  00        nop
1E78  00        nop
1E79  00        nop
1E7A  00        nop
1E7B  00        nop
1E7C  00        nop
1E7D  00        nop
1E7E  80        add     b
1E7F  0C        inr     c
1E80  44        mov     b,h
1E81  45        mov     b,l
1E82  46        mov     b,m
1E83  D5        push    d
1E84  16 00     mvi     d,$00
1E86  5F        mov     e,a
1E87  19        dad
1E88  7E        mov     a,m
1E89  D1        pop     d
1E8A  C9        ret
1E8B  F5        push    psw
1E8C  7C        mov     a,h
1E8D  CD A1 0B  call    $0BA1
1E90  7D        mov     a,l
1E91  CD A1 0B  call    $0BA1
1E94  F1        pop     psw
1E95  C9        ret
1E96  F5        push    psw
1E97  CD A1 0B  call    $0BA1
1E9A  3E 48     mvi     a,'H'
1E9C  CD 0E 0B  call    $0B0E
1E9F  F1        pop     psw
1EA0  C9        ret
1EA1  F5        push    psw
1EA2  0F        rrc
1EA3  0F        rrc
1EA4  0F        rrc
1EA5  0F        rrc
1EA6  CD 5F 0B  call    $0B5F
1EA9  0F        rrc
1EAA  0F        rrc
1EAB  0F        rrc
1EAC  0F        rrc
1EAD  CD 5F 0B  call    $0B5F
1EB0  F1        pop     psw
1EB1  C9        ret
1EB2  CD C3 0B  call    $0BC3
1EB5  CD 3C 0A  call    $0A3C
1EB8  08        nop                  ;Note: Alternative opcode used
1EB9  D9        ret                  ;Note: Alternative opcode used
1EBA  CD C3 0B  call    $0BC3
1EBD  CD 3C 0A  call    $0A3C
1EC0  08        nop                  ;Note: Alternative opcode used
1EC1  D9        ret                  ;Note: Alternative opcode used
1EC2  C9        ret
1EC3  22 2A 0C  shld    $0C2A
1EC6  CD 4E 0B  call    $0B4E
1EC9  0D        dcr     c
1ECA  0A        ldax    b
1ECB  20        nop                  ;Note: Alternative opcode used
1ECC  50        mov     d,b
1ECD  20        nop                  ;Note: Alternative opcode used
1ECE  43        mov     b,e
1ECF  20        nop                  ;Note: Alternative opcode used
1ED0  20        nop                  ;Note: Alternative opcode used
1ED1  41        mov     b,c
1ED2  20        nop                  ;Note: Alternative opcode used
1ED3  46        mov     b,m
1ED4  20        nop                  ;Note: Alternative opcode used
1ED5  20        nop                  ;Note: Alternative opcode used
1ED6  42        mov     b,d
1ED7  20        nop                  ;Note: Alternative opcode used
1ED8  43        mov     b,e
1ED9  20        nop                  ;Note: Alternative opcode used
1EDA  20        nop                  ;Note: Alternative opcode used
1EDB  44        mov     b,h
1EDC  20        nop                  ;Note: Alternative opcode used
1EDD  45        mov     b,l
1EDE  20        nop                  ;Note: Alternative opcode used
1EDF  20        nop                  ;Note: Alternative opcode used
1EE0  48        mov     c,b
1EE1  20        nop                  ;Note: Alternative opcode used
1EE2  4C        mov     c,h
1EE3  20        nop                  ;Note: Alternative opcode used
1EE4  20        nop                  ;Note: Alternative opcode used
1EE5  53        mov     d,e
1EE6  20        nop                  ;Note: Alternative opcode used
1EE7  50        mov     d,b
1EE8  0D        dcr     c
1EE9  0A        ldax    b
1EEA  00        nop
1EEB  E1        pop     h
1EEC  E5        push    h
1EED  F5        push    psw
1EEE  CD 8B 0B  call    $0B8B
1EF1  CD 6C 0C  call    $0C6C
1EF4  F1        pop     psw
1EF5  F5        push    psw
1EF6  CD A1 0B  call    $0BA1
1EF9  E1        pop     h
1EFA  E5        push    h
1EFB  7D        mov     a,l
1EFC  CD A1 0B  call    $0BA1
1EFF  CD 00 00  call    $0000
1F02  00        nop
1F03  00        nop
1F04  00        nop
1F05  44        mov     b,h
1F06  49        mov     c,c
1F07  41        mov     b,c
1F08  47        mov     b,a
1F09  20        nop                  ;Note: Alternative opcode used
1F0A  20        nop                  ;Note: Alternative opcode used
1F0B  20        nop                  ;Note: Alternative opcode used
1F0C  20        nop                  ;Note: Alternative opcode used
1F0D  4C        mov     c,h
1F0E  4F        mov     c,a
1F0F  47        mov     b,a
1F10  00        nop
1F11  00        nop
1F12  00        nop
1F13  00        nop
1F14  00        nop
1F15  00        nop
1F16  00        nop
1F17  00        nop
1F18  00        nop
1F19  00        nop
1F1A  00        nop
1F1B  00        nop
1F1C  00        nop
1F1D  00        nop
1F1E  00        nop
1F1F  00        nop
1F20  00        nop
1F21  00        nop
1F22  00        nop
1F23  00        nop
1F24  00        nop
1F25  F5        push    psw
1F26  E5        push    h
1F27  D5        push    d
1F28  C5        push    b
1F29  0E 0D     mvi     c,$0D
1F2B  CD 05 00  call    $0005
1F2E  21 80 00  lxi     h,$0080
1F31  22 01 20  shld    $2001
1F34  3E 80     mvi     a,$80
1F36  32 03 20  sta     $2003
1F39  C1        pop     b
1F3A  D1        pop     d
1F3B  E1        pop     h
1F3C  F1        pop     psw
1F3D  C9        ret
1F3E  E5        push    h
1F3F  D5        push    d
1F40  C5        push    b
1F41  11 04 20  lxi     d,$2004
1F44  0E 0F     mvi     c,$0F
1F46  CD 05 00  call    $0005
1F49  FE FF     cpi     $FF
1F4B  C2 52 20  jnz     $2052
1F4E  37        stc
1F4F  C3 53 20  jmp     $2053
1F52  A7        ana     a
1F53  C1        pop     b
1F54  D1        pop     d
1F55  E1        pop     h
1F56  C9        ret
1F57  E5        push    h
1F58  D5        push    d
1F59  C5        push    b
1F5A  0E 16     mvi     c,$16
1F5C  CD 05 00  call    $0005
1F5F  FE FF     cpi     $FF
1F61  C2 68 20  jnz     $2068
1F64  37        stc
1F65  C3 69 20  jmp     $2069
1F68  A7        ana     a
1F69  C1        pop     b
1F6A  D1        pop     d
1F6B  E1        pop     h
1F6C  C9        ret
1F6D  E5        push    h
1F6E  D5        push    d
1F6F  C5        push    b
1F70  0E 14     mvi     c,$14
1F72  CD 05 00  call    $0005
1F75  A7        ana     a
1F76  CA 7A 20  jz      $207A
1F79  37        stc
1F7A  C1        pop     b
1F7B  D1        pop     d
1F7C  E1        pop     h
1F7D  C9        ret
1F7E  D5        push    d
1F7F  C5        push    b
1F80  CD 6D 20  call    $206D
1F83  D2 80 20  jnc     $2080
1F86  FE 01     cpi     $01
1F88  CA 8F 20  jz      $208F
1F8B  37        stc
1F8C  C3 A9 20  jmp     $20A9
1F8F  3A 24 20  lda     $2024
1F92  3D        dcr     a
1F93  32 24 20  sta     $2024
1F96  21 80 00  lxi     h,$0080
1F99  06 80     mvi     b,$80
1F9B  3E 1A     mvi     a,$1A
1F9D  BE        cmp     m
1F9E  CA A9 20  jz      $20A9
1FA1  23        inx     h
1FA2  05        dcr     b
1FA3  C2 9D 20  jnz     $209D
1FA6  21 00 00  lxi     h,$0000
1FA9  C1        pop     b
1FAA  D1        pop     d
1FAB  C9        ret
1FAC  E5        push    h
1FAD  D5        push    d
1FAE  C5        push    b
1FAF  0E 15     mvi     c,$15
1FB1  CD 05 00  call    $0005
1FB4  A7        ana     a
1FB5  CA B9 20  jz      $20B9
1FB8  37        stc
1FB9  C1        pop     b
1FBA  D1        pop     d
1FBB  E1        pop     h
1FBC  C9        ret
1FBD  F5        push    psw
1FBE  0E 02     mvi     c,$02
1FC0  CD 05 00  call    $0005
1FC3  3A 00 20  lda     $2000
1FC6  B7        ora     a
1FC7  C2 CC 20  jnz     $20CC
1FCA  F1        pop     psw
1FCB  C9        ret
1FCC  F1        pop     psw
1FCD  E5        push    h
1FCE  D5        push    d
1FCF  C5        push    b
1FD0  4F        mov     c,a
1FD1  2A 01 20  lhld    $2001
1FD4  77        mov     m,a
1FD5  23        inx     h
1FD6  3A 03 20  lda     $2003
1FD9  3D        dcr     a
1FDA  C2 EB 20  jnz     $20EB
1FDD  11 04 20  lxi     d,$2004
1FE0  CD AC 20  call    $20AC
1FE3  DA EB 20  jc      $20EB
1FE6  3E 80     mvi     a,$80
1FE8  21 80 00  lxi     h,$0080
1FEB  22 01 20  shld    $2001
1FEE  32 03 20  sta     $2003
1FF1  79        mov     a,c
1FF2  C1        pop     b
1FF3  D1        pop     d
1FF4  E1        pop     h
1FF5  C9        ret
1FF6  F5        push    psw
1FF7  3A 00 20  lda     $2000
1FFA  B7        ora     a
1FFB  C2 00 21  jnz     $2100
1FFE  F1        pop     psw
1FFF  C9        ret
2000  E5        push    h
2001  D5        push    d
2002  C5        push    b
2003  2A 01 20  lhld    $2001
2006  36 1A     mvi     m,$1A
2008  11 04 20  lxi     d,$2004
200B  CD AC 20  call    $20AC
200E  D2 26 21  jnc     $2126
2011  CD 4E 0B  call    $0B4E
2014  43        mov     b,e
2015  41        mov     b,c
2016  4E        mov     c,m
2017  4E        mov     c,m
2018  4F        mov     c,a
2019  54        mov     d,h
201A  20        nop                  ;Note: Alternative opcode used
201B  46        mov     b,m
201C  4C        mov     c,h
201D  55        mov     d,l
201E  53        mov     d,e
201F  48        mov     c,b
2020  20        nop                  ;Note: Alternative opcode used
2021  46        mov     b,m
2022  49        mov     c,c
2023  4C        mov     c,h
2024  45        mov     b,l
2025  00        nop
2026  0E 10     mvi     c,$10
2028  CD 05 00  call    $0005
202B  FE FF     cpi     $FF
202D  C2 4A 21  jnz     $214A
2030  CD 4E 0B  call    $0B4E
2033  43        mov     b,e
2034  41        mov     b,c
2035  4E        mov     c,m
2036  4E        mov     c,m
2037  4F        mov     c,a
2038  54        mov     d,h
2039  20        nop                  ;Note: Alternative opcode used
203A  43        mov     b,e
203B  4C        mov     c,h
203C  4F        mov     c,a
203D  53        mov     d,e
203E  45        mov     b,l
203F  20        nop                  ;Note: Alternative opcode used
2040  54        mov     d,h
2041  48        mov     c,b
2042  45        mov     b,l
2043  20        nop                  ;Note: Alternative opcode used
2044  46        mov     b,m
2045  49        mov     c,c
2046  4C        mov     c,h
2047  45        mov     b,l
2048  00        nop
2049  C7        rst     0
204A  C1        pop     b
204B  D1        pop     d
204C  E1        pop     h
204D  F1        pop     psw
204E  C9        ret
204F  F5        push    psw
2050  E5        push    h
2051  D5        push    d
2052  C5        push    b
2053  AF        xra     a
2054  32 00 20  sta     $2000
2057  21 80 00  lxi     h,$0080
205A  7E        mov     a,m
205B  FE 04     cpi     $04
205D  C2 0A 22  jnz     $220A
2060  23        inx     h
2061  7E        mov     a,m
2062  FE 20     cpi     $20
2064  C2 0A 22  jnz     $220A
2067  23        inx     h
2068  7E        mov     a,m
2069  FE 4C     cpi     'L'
206B  C2 0A 22  jnz     $220A
206E  23        inx     h
206F  7E        mov     a,m
2070  FE 4F     cpi     'O'
2072  C2 0A 22  jnz     $220A
2075  23        inx     h
2076  7E        mov     a,m
2077  FE 47     cpi     'G'
2079  C2 0A 22  jnz     $220A
207C  3E 01     mvi     a,$01
207E  32 00 20  sta     $2000
2081  CD 25 20  call    $2025
2084  11 04 20  lxi     d,$2004
2087  CD 3E 20  call    $203E
208A  D2 C9 21  jnc     $21C9
208D  CD 57 20  call    $2057
2090  D2 AE 21  jnc     $21AE
2093  CD 4E 0B  call    $0B4E
2096  44        mov     b,h
2097  49        mov     c,c
2098  53        mov     d,e
2099  4B        mov     c,e
209A  20        nop                  ;Note: Alternative opcode used
209B  4F        mov     c,a
209C  52        mov     d,d
209D  20        nop                  ;Note: Alternative opcode used
209E  44        mov     b,h
209F  49        mov     c,c
20A0  52        mov     d,d
20A1  45        mov     b,l
20A2  43        mov     b,e
20A3  54        mov     d,h
20A4  4F        mov     c,a
20A5  52        mov     d,d
20A6  59        mov     e,c
20A7  20        nop                  ;Note: Alternative opcode used
20A8  46        mov     b,m
20A9  55        mov     d,l
20AA  4C        mov     c,h
20AB  4C        mov     c,h
20AC  00        nop
20AD  C7        rst     0
20AE  CD 3E 20  call    $203E
20B1  D2 0A 22  jnc     $220A
20B4  CD 4E 0B  call    $0B4E
20B7  43        mov     b,e
20B8  41        mov     b,c
20B9  4E        mov     c,m
20BA  4E        mov     c,m
20BB  4F        mov     c,a
20BC  54        mov     d,h
20BD  20        nop                  ;Note: Alternative opcode used
20BE  4F        mov     c,a
20BF  50        mov     d,b
20C0  45        mov     b,l
20C1  4E        mov     c,m
20C2  20        nop                  ;Note: Alternative opcode used
20C3  46        mov     b,m
20C4  49        mov     c,c
20C5  4C        mov     c,h
20C6  45        mov     b,l
20C7  00        nop
20C8  C7        rst     0
20C9  CD 7E 20  call    $207E
20CC  D2 E4 21  jnc     $21E4
20CF  CD 4E 0B  call    $0B4E
20D2  43        mov     b,e
20D3  41        mov     b,c
20D4  4E        mov     c,m
20D5  4E        mov     c,m
20D6  4F        mov     c,a
20D7  54        mov     d,h
20D8  20        nop                  ;Note: Alternative opcode used
20D9  52        mov     d,d
20DA  45        mov     b,l
20DB  41        mov     b,c
20DC  44        mov     b,h
20DD  20        nop                  ;Note: Alternative opcode used
20DE  46        mov     b,m
20DF  49        mov     c,c
20E0  4C        mov     c,h
20E1  45        mov     b,l
20E2  00        nop
20E3  C7        rst     0
20E4  22 01 20  shld    $2001
20E7  11 00 01  lxi     d,$0100
20EA  7B        mov     a,e
20EB  95        sub     l
20EC  32 03 20  sta     $2003
20EF  7A        mov     a,d
20F0  9C        sbb     h
20F1  D2 0A 22  jnc     $220A
20F4  CD 4E 0B  call    $0B4E
20F7  42        mov     b,d
20F8  55        mov     d,l
20F9  46        mov     b,m
20FA  46        mov     b,m
20FB  45        mov     b,l
20FC  52        mov     d,d
20FD  20        nop                  ;Note: Alternative opcode used
20FE  4D        mov     c,l
20FF  41        mov     b,c
2100  54        mov     d,h
2101  48        mov     c,b
2102  20        nop                  ;Note: Alternative opcode used
2103  45        mov     b,l
2104  52        mov     d,d
2105  52        mov     d,d
2106  4F        mov     c,a
2107  52        mov     d,d
2108  00        nop
2109  C7        rst     0
210A  1E 00     mvi     e,$00
210C  3E 0D     mvi     a,$0D
210E  CD BD 20  call    $20BD
2111  3E 0A     mvi     a,$0A
2113  CD BD 20  call    $20BD
2116  3E 0D     mvi     a,$0D
2118  CD BD 20  call    $20BD
211B  3E 0A     mvi     a,$0A
211D  CD BD 20  call    $20BD
2120  3E 2A     mvi     a,$2A
2122  CD BD 20  call    $20BD
2125  CD BD 20  call    $20BD
2128  C1        pop     b
2129  D1        pop     d
212A  E1        pop     h
212B  F1        pop     psw
212C  C9        ret
212D  4C        mov     c,h
212E  0C        inr     c
212F  FE 53     cpi     'S'
2131  CA 0D 09  jz      $090D
2134  FE 43     cpi     'C'
2136  CA 0D 09  jz      $090D
2139  CD 1B 0B  call    $0B1B
213C  32 4C 0C  sta     $0C4C
213F  F5        push    psw
2140  2F        cma
2141  3C        inr     a
2142  32 4D 0C  sta     $0C4D
2145  F1        pop     psw
2146  FE 03     cpi     $03
2148  C2 0D 09  jnz     $090D
214B  C7        rst     0
214C  00        nop
214D  00        nop
214E  F5        push    psw
214F  3A 4C 0C  lda     $0C4C
2152  FE 53     cpi     'S'
2154  CA 0D 09  jz      $090D
2157  CD 4E 0B  call    $0B4E
215A  07        rlc
215B  00        nop
215C  F1        pop     psw
215D  C9        ret
215E  CD B2 0B  call    $0BB2
2161  CD 2B 0C  call    $0C2B
2164  C9        ret
2165  CD 4E 0B  call    $0B4E
2168  0D        dcr     c
2169  0A        ldax    b
216A  00        nop
216B  C9        ret
216C  CD 4E 0B  call    $0B4E
216F  20        nop                  ;Note: Alternative opcode used
2170  00        nop
2171  C9        ret
2172  00        nop
2173  00        nop
2174  00        nop
2175  00        nop
2176  00        nop
2177  00        nop
2178  00        nop
2179  00        nop
217A  00        nop
217B  00        nop
217C  00        nop
217D  00        nop
217E  80        add     b
217F  0C        inr     c
2180  44        mov     b,h
2181  45        mov     b,l
2182  46        mov     b,m
2183  D5        push    d
2184  16 00     mvi     d,$00
2186  5F        mov     e,a
2187  19        dad
2188  7E        mov     a,m
2189  D1        pop     d
218A  C9        ret
218B  F5        push    psw
218C  7C        mov     a,h
218D  CD A1 0B  call    $0BA1
2190  7D        mov     a,l
2191  CD A1 0B  call    $0BA1
2194  F1        pop     psw
2195  C9        ret
2196  F5        push    psw
2197  CD A1 0B  call    $0BA1
219A  3E 48     mvi     a,'H'
219C  CD 0E 0B  call    $0B0E
219F  F1        pop     psw
21A0  C9        ret
21A1  F5        push    psw
21A2  0F        rrc
21A3  0F        rrc
21A4  0F        rrc
21A5  0F        rrc
21A6  CD 5F 0B  call    $0B5F
21A9  0F        rrc
21AA  0F        rrc
21AB  0F        rrc
21AC  0F        rrc
21AD  CD 5F 0B  call    $0B5F
21B0  F1        pop     psw
21B1  C9        ret
21B2  CD C3 0B  call    $0BC3
21B5  CD 3C 0A  call    $0A3C
21B8  08        nop                  ;Note: Alternative opcode used
21B9  D9        ret                  ;Note: Alternative opcode used
21BA  CD C3 0B  call    $0BC3
21BD  CD 3C 0A  call    $0A3C
21C0  08        nop                  ;Note: Alternative opcode used
21C1  D9        ret                  ;Note: Alternative opcode used
21C2  C9        ret
21C3  22 2A 0C  shld    $0C2A
21C6  CD 4E 0B  call    $0B4E
21C9  0D        dcr     c
21CA  0A        ldax    b
21CB  20        nop                  ;Note: Alternative opcode used
21CC  50        mov     d,b
21CD  20        nop                  ;Note: Alternative opcode used
21CE  43        mov     b,e
21CF  20        nop                  ;Note: Alternative opcode used
21D0  20        nop                  ;Note: Alternative opcode used
21D1  41        mov     b,c
21D2  20        nop                  ;Note: Alternative opcode used
21D3  46        mov     b,m
21D4  20        nop                  ;Note: Alternative opcode used
21D5  20        nop                  ;Note: Alternative opcode used
21D6  42        mov     b,d
21D7  20        nop                  ;Note: Alternative opcode used
21D8  43        mov     b,e
21D9  20        nop                  ;Note: Alternative opcode used
21DA  20        nop                  ;Note: Alternative opcode used
21DB  44        mov     b,h
21DC  20        nop                  ;Note: Alternative opcode used
21DD  45        mov     b,l
21DE  20        nop                  ;Note: Alternative opcode used
21DF  20        nop                  ;Note: Alternative opcode used
21E0  48        mov     c,b
21E1  20        nop                  ;Note: Alternative opcode used
21E2  4C        mov     c,h
21E3  20        nop                  ;Note: Alternative opcode used
21E4  20        nop                  ;Note: Alternative opcode used
21E5  53        mov     d,e
21E6  20        nop                  ;Note: Alternative opcode used
21E7  50        mov     d,b
21E8  0D        dcr     c
21E9  0A        ldax    b
21EA  00        nop
21EB  E1        pop     h
21EC  E5        push    h
21ED  F5        push    psw
21EE  CD 8B 0B  call    $0B8B
21F1  CD 6C 0C  call    $0C6C
21F4  F1        pop     psw
21F5  F5        push    psw
21F6  CD A1 0B  call    $0BA1
21F9  E1        pop     h
21FA  E5        push    h
21FB  7D        mov     a,l
21FC  CD A1 0B  call    $0BA1
21FF  CD 6C 0C  call    $0C6C
2202  60        mov     h,b
2203  69        mov     l,c
2204  CD 8B 0B  call    $0B8B
2207  CD 6C 0C  call    $0C6C
220A  62        mov     h,d
220B  6B        mov     l,e
220C  CD 8B 0B  call    $0B8B
220F  CD 6C 0C  call    $0C6C
2212  2A 2A 0C  lhld    $0C2A
2215  CD 8B 0B  call    $0B8B
2218  CD 6C 0C  call    $0C6C
221B  21 00 00  lxi     h,$0000
221E  39        dad     sp
221F  CD 8B 0B  call    $0B8B
2222  F1        pop     psw
2223  2A 2A 0C  lhld    $0C2A
2226  CD 65 0C  call    $0C65
2229  C9        ret
222A  02        stax    b
222B  F5        push    psw
222C  3A 4C 0C  lda     $0C4C
222F  FE 53     cpi     'S'
2231  CA 0D 09  jz      $090D
2234  FE 43     cpi     'C'
2236  CA 0D 09  jz      $090D
2239  CD 1B 0B  call    $0B1B
223C  32 4C 0C  sta     $0C4C
223F  F5        push    psw
2240  2F        cma
2241  3C        inr     a
2242  32 4D 0C  sta     $0C4D
2245  F1        pop     psw
2246  FE 03     cpi     $03
2248  C2 0D 09  jnz     $090D
224B  C7        rst     0
224C  00        nop
224D  00        nop
224E  F5        push    psw
224F  3A 4C 0C  lda     $0C4C
2252  FE 53     cpi     'S'
2254  CA 0D 09  jz      $090D
2257  CD 4E 0B  call    $0B4E
225A  07        rlc
225B  00        nop
225C  F1        pop     psw
225D  C9        ret
225E  CD B2 0B  call    $0BB2
2261  CD 2B 0C  call    $0C2B
2264  C9        ret
2265  CD 4E 0B  call    $0B4E
2268  0D        dcr     c
2269  0A        ldax    b
226A  00        nop
226B  C9        ret
226C  CD 4E 0B  call    $0B4E
226F  20        nop                  ;Note: Alternative opcode used
2270  00        nop
2271  C9        ret
2272  00        nop
2273  00        nop
2274  00        nop
2275  00        nop
2276  00        nop
2277  00        nop
2278  00        nop
2279  00        nop
227A  00        nop
227B  00        nop
227C  00        nop
227D  00        nop
227E  80        add     b
227F  0C        inr     c
2280  44        mov     b,h
2281  45        mov     b,l
2282  46        mov     b,m
2283  D5        push    d
2284  16 00     mvi     d,$00
2286  5F        mov     e,a
2287  19        dad
2288  7E        mov     a,m
2289  D1        pop     d
228A  C9        ret
228B  F5        push    psw
228C  7C        mov     a,h
228D  CD A1 0B  call    $0BA1
2290  7D        mov     a,l
2291  CD A1 0B  call    $0BA1
2294  F1        pop     psw
2295  C9        ret
2296  F5        push    psw
2297  CD A1 0B  call    $0BA1
229A  3E 48     mvi     a,'H'
229C  CD 0E 0B  call    $0B0E
229F  F1        pop     psw
22A0  C9        ret
22A1  F5        push    psw
22A2  0F        rrc
22A3  0F        rrc
22A4  0F        rrc
22A5  0F        rrc
22A6  CD 5F 0B  call    $0B5F
22A9  0F        rrc
22AA  0F        rrc
22AB  0F        rrc
22AC  0F        rrc
22AD  CD 5F 0B  call    $0B5F
22B0  F1        pop     psw
22B1  C9        ret
22B2  CD C3 0B  call    $0BC3
22B5  CD 3C 0A  call    $0A3C
22B8  08        nop                  ;Note: Alternative opcode used
22B9  D9        ret                  ;Note: Alternative opcode used
22BA  CD C3 0B  call    $0BC3
22BD  CD 3C 0A  call    $0A3C
22C0  08        nop                  ;Note: Alternative opcode used
22C1  D9        ret                  ;Note: Alternative opcode used
22C2  C9        ret
22C3  22 2A 0C  shld    $0C2A
22C6  CD 4E 0B  call    $0B4E
22C9  0D        dcr     c
22CA  0A        ldax    b
22CB  20        nop                  ;Note: Alternative opcode used
22CC  50        mov     d,b
22CD  20        nop                  ;Note: Alternative opcode used
22CE  43        mov     b,e
22CF  20        nop                  ;Note: Alternative opcode used
22D0  20        nop                  ;Note: Alternative opcode used
22D1  41        mov     b,c
22D2  20        nop                  ;Note: Alternative opcode used
22D3  46        mov     b,m
22D4  20        nop                  ;Note: Alternative opcode used
22D5  20        nop                  ;Note: Alternative opcode used
22D6  42        mov     b,d
22D7  20        nop                  ;Note: Alternative opcode used
22D8  43        mov     b,e
22D9  20        nop                  ;Note: Alternative opcode used
22DA  20        nop                  ;Note: Alternative opcode used
22DB  44        mov     b,h
22DC  20        nop                  ;Note: Alternative opcode used
22DD  45        mov     b,l
22DE  20        nop                  ;Note: Alternative opcode used
22DF  20        nop                  ;Note: Alternative opcode used
22E0  48        mov     c,b
22E1  20        nop                  ;Note: Alternative opcode used
22E2  4C        mov     c,h
22E3  20        nop                  ;Note: Alternative opcode used
22E4  20        nop                  ;Note: Alternative opcode used
22E5  53        mov     d,e
22E6  20        nop                  ;Note: Alternative opcode used
22E7  50        mov     d,b
22E8  0D        dcr     c
22E9  0A        ldax    b
22EA  00        nop
22EB  E1        pop     h
22EC  E5        push    h
22ED  F5        push    psw
22EE  CD 8B 0B  call    $0B8B
22F1  CD 6C 0C  call    $0C6C
22F4  F1        pop     psw
22F5  F5        push    psw
22F6  CD A1 0B  call    $0BA1
22F9  E1        pop     h
22FA  E5        push    h
22FB  7D        mov     a,l
22FC  CD A1 0B  call    $0BA1
22FF  CD 6C 0C  call    $0C6C
2302  60        mov     h,b
2303  69        mov     l,c
2304  CD 8B 0B  call    $0B8B
2307  CD 6C 0C  call    $0C6C
230A  62        mov     h,d
230B  6B        mov     l,e
230C  CD 8B 0B  call    $0B8B
230F  CD 6C 0C  call    $0C6C
2312  2A 2A 0C  lhld    $0C2A
2315  CD 8B 0B  call    $0B8B
2318  CD 6C 0C  call    $0C6C
231B  21 00 00  lxi     h,$0000
231E  39        dad     sp
231F  CD 8B 0B  call    $0B8B
2322  F1        pop     psw
2323  2A 2A 0C  lhld    $0C2A
2326  CD 65 0C  call    $0C65
2329  C9        ret
232A  02        stax    b
232B  F5        push    psw
232C  3A 4C 0C  lda     $0C4C
232F  FE 53     cpi     'S'
2331  CA 0D 09  jz      $090D
2334  FE 43     cpi     'C'
2336  CA 0D 09  jz      $090D
2339  CD 1B 0B  call    $0B1B
233C  32 4C 0C  sta     $0C4C
233F  F5        push    psw
2340  2F        cma
2341  3C        inr     a
2342  32 4D 0C  sta     $0C4D
2345  F1        pop     psw
2346  FE 03     cpi     $03
2348  C2 0D 09  jnz     $090D
234B  C7        rst     0
234C  00        nop
234D  00        nop
234E  F5        push    psw
234F  3A 4C 0C  lda     $0C4C
2352  FE 53     cpi     'S'
2354  CA 0D 09  jz      $090D
2357  CD 4E 0B  call    $0B4E
235A  07        rlc
235B  00        nop
235C  F1        pop     psw
235D  C9        ret
235E  CD B2 0B  call    $0BB2
2361  CD 2B 0C  call    $0C2B
2364  C9        ret
2365  CD 4E 0B  call    $0B4E
2368  0D        dcr     c
2369  0A        ldax    b
236A  00        nop
236B  C9        ret
236C  CD 4E 0B  call    $0B4E
236F  20        nop                  ;Note: Alternative opcode used
2370  00        nop
2371  C9        ret
2372  00        nop
2373  00        nop
2374  00        nop
2375  00        nop
2376  00        nop
2377  00        nop
2378  00        nop
2379  00        nop
237A  00        nop
237B  00        nop
237C  00        nop
237D  00        nop
237E  80        add     b
237F  0C        inr     c
2380  44        mov     b,h
2381  45        mov     b,l
2382  46        mov     b,m
2383  D5        push    d
2384  16 00     mvi     d,$00
2386  5F        mov     e,a
2387  19        dad
2388  7E        mov     a,m
2389  D1        pop     d
238A  C9        ret
238B  F5        push    psw
238C  7C        mov     a,h
238D  CD A1 0B  call    $0BA1
2390  7D        mov     a,l
2391  CD A1 0B  call    $0BA1
2394  F1        pop     psw
2395  C9        ret
2396  F5        push    psw
2397  CD A1 0B  call    $0BA1
239A  3E 48     mvi     a,'H'
239C  CD 0E 0B  call    $0B0E
239F  F1        pop     psw
23A0  C9        ret
23A1  F5        push    psw
23A2  0F        rrc
23A3  0F        rrc
23A4  0F        rrc
23A5  0F        rrc
23A6  CD 5F 0B  call    $0B5F
23A9  0F        rrc
23AA  0F        rrc
23AB  0F        rrc
23AC  0F        rrc
23AD  CD 5F 0B  call    $0B5F
23B0  F1        pop     psw
23B1  C9        ret
23B2  CD C3 0B  call    $0BC3
23B5  CD 3C 0A  call    $0A3C
23B8  08        nop                  ;Note: Alternative opcode used
23B9  D9        ret                  ;Note: Alternative opcode used
23BA  CD C3 0B  call    $0BC3
23BD  CD 3C 0A  call    $0A3C
23C0  08        nop                  ;Note: Alternative opcode used
23C1  D9        ret                  ;Note: Alternative opcode used
23C2  C9        ret
23C3  22 2A 0C  shld    $0C2A
23C6  CD 4E 0B  call    $0B4E
23C9  0D        dcr     c
23CA  0A        ldax    b
23CB  20        nop                  ;Note: Alternative opcode used
23CC  50        mov     d,b
23CD  20        nop                  ;Note: Alternative opcode used
23CE  43        mov     b,e
23CF  20        nop                  ;Note: Alternative opcode used
23D0  20        nop                  ;Note: Alternative opcode used
23D1  41        mov     b,c
23D2  20        nop                  ;Note: Alternative opcode used
23D3  46        mov     b,m
23D4  20        nop                  ;Note: Alternative opcode used
23D5  20        nop                  ;Note: Alternative opcode used
23D6  42        mov     b,d
23D7  20        nop                  ;Note: Alternative opcode used
23D8  43        mov     b,e
23D9  20        nop                  ;Note: Alternative opcode used
23DA  20        nop                  ;Note: Alternative opcode used
23DB  44        mov     b,h
23DC  20        nop                  ;Note: Alternative opcode used
23DD  45        mov     b,l
23DE  20        nop                  ;Note: Alternative opcode used
23DF  20        nop                  ;Note: Alternative opcode used
23E0  48        mov     c,b
23E1  20        nop                  ;Note: Alternative opcode used
23E2  4C        mov     c,h
23E3  20        nop                  ;Note: Alternative opcode used
23E4  20        nop                  ;Note: Alternative opcode used
23E5  53        mov     d,e
23E6  20        nop                  ;Note: Alternative opcode used
23E7  50        mov     d,b
23E8  0D        dcr     c
23E9  0A        ldax    b
23EA  00        nop
23EB  E1        pop     h
23EC  E5        push    h
23ED  F5        push    psw
23EE  CD 8B 0B  call    $0B8B
23F1  CD 6C 0C  call    $0C6C
23F4  F1        pop     psw
23F5  F5        push    psw
23F6  CD A1 0B  call    $0BA1
23F9  E1        pop     h
23FA  E5        push    h
23FB  7D        mov     a,l
23FC  CD A1 0B  call    $0BA1
23FF  CD 6C 0C  call    $0C6C
2402  60        mov     h,b
2403  69        mov     l,c
2404  CD 8B 0B  call    $0B8B
2407  CD 6C 0C  call    $0C6C
240A  62        mov     h,d
240B  6B        mov     l,e
240C  CD 8B 0B  call    $0B8B
240F  CD 6C 0C  call    $0C6C
2412  2A 2A 0C  lhld    $0C2A
2415  CD 8B 0B  call    $0B8B
2418  CD 6C 0C  call    $0C6C
241B  21 00 00  lxi     h,$0000
241E  39        dad     sp
241F  CD 8B 0B  call    $0B8B
2422  F1        pop     psw
2423  2A 2A 0C  lhld    $0C2A
2426  CD 65 0C  call    $0C65
2429  C9        ret
242A  02        stax    b
242B  F5        push    psw
242C  3A 4C 0C  lda     $0C4C
242F  FE 53     cpi     'S'
2431  CA 0D 09  jz      $090D
2434  FE 43     cpi     'C'
2436  CA 0D 09  jz      $090D
2439  CD 1B 0B  call    $0B1B
243C  32 4C 0C  sta     $0C4C
243F  F5        push    psw
2440  2F        cma
2441  3C        inr     a
2442  32 4D 0C  sta     $0C4D
2445  F1        pop     psw
2446  FE 03     cpi     $03
2448  C2 0D 09  jnz     $090D
244B  C7        rst     0
244C  00        nop
244D  00        nop
244E  F5        push    psw
244F  3A 4C 0C  lda     $0C4C
2452  FE 53     cpi     'S'
2454  CA 0D 09  jz      $090D
2457  CD 4E 0B  call    $0B4E
245A  07        rlc
245B  00        nop
245C  F1        pop     psw
245D  C9        ret
245E  CD B2 0B  call    $0BB2
2461  CD 2B 0C  call    $0C2B
2464  C9        ret
2465  CD 4E 0B  call    $0B4E
2468  0D        dcr     c
2469  0A        ldax    b
246A  00        nop
246B  C9        ret
246C  CD 4E 0B  call    $0B4E
246F  20        nop                  ;Note: Alternative opcode used
2470  00        nop
2471  C9        ret
2472  00        nop
2473  00        nop
2474  00        nop
2475  00        nop
2476  00        nop
2477  00        nop
2478  00        nop
2479  00        nop
247A  00        nop
247B  00        nop
247C  00        nop
247D  00        nop
247E  80        add     b
247F  0C        inr     c
2480  44        mov     b,h
2481  45        mov     b,l
2482  46        mov     b,m
2483  D5        push    d
2484  16 00     mvi     d,$00
2486  5F        mov     e,a
2487  19        dad
2488  7E        mov     a,m
2489  D1        pop     d
248A  C9        ret
248B  F5        push    psw
248C  7C        mov     a,h
248D  CD A1 0B  call    $0BA1
2490  7D        mov     a,l
2491  CD A1 0B  call    $0BA1
2494  F1        pop     psw
2495  C9        ret
2496  F5        push    psw
2497  CD A1 0B  call    $0BA1
249A  3E 48     mvi     a,'H'
249C  CD 0E 0B  call    $0B0E
249F  F1        pop     psw
24A0  C9        ret
24A1  F5        push    psw
24A2  0F        rrc
24A3  0F        rrc
24A4  0F        rrc
24A5  0F        rrc
24A6  CD 5F 0B  call    $0B5F
24A9  0F        rrc
24AA  0F        rrc
24AB  0F        rrc
24AC  0F        rrc
24AD  CD 5F 0B  call    $0B5F
24B0  F1        pop     psw
24B1  C9        ret
24B2  CD C3 0B  call    $0BC3
24B5  CD 3C 0A  call    $0A3C
24B8  08        nop                  ;Note: Alternative opcode used
24B9  D9        ret                  ;Note: Alternative opcode used
24BA  CD C3 0B  call    $0BC3
24BD  CD 3C 0A  call    $0A3C
24C0  08        nop                  ;Note: Alternative opcode used
24C1  D9        ret                  ;Note: Alternative opcode used
24C2  C9        ret
24C3  22 2A 0C  shld    $0C2A
24C6  CD 4E 0B  call    $0B4E
24C9  0D        dcr     c
24CA  0A        ldax    b
24CB  20        nop                  ;Note: Alternative opcode used
24CC  50        mov     d,b
24CD  20        nop                  ;Note: Alternative opcode used
24CE  43        mov     b,e
24CF  20        nop                  ;Note: Alternative opcode used
24D0  20        nop                  ;Note: Alternative opcode used
24D1  41        mov     b,c
24D2  20        nop                  ;Note: Alternative opcode used
24D3  46        mov     b,m
24D4  20        nop                  ;Note: Alternative opcode used
24D5  20        nop                  ;Note: Alternative opcode used
24D6  42        mov     b,d
24D7  20        nop                  ;Note: Alternative opcode used
24D8  43        mov     b,e
24D9  20        nop                  ;Note: Alternative opcode used
24DA  20        nop                  ;Note: Alternative opcode used
24DB  44        mov     b,h
24DC  20        nop                  ;Note: Alternative opcode used
24DD  45        mov     b,l
24DE  20        nop                  ;Note: Alternative opcode used
24DF  20        nop                  ;Note: Alternative opcode used
24E0  48        mov     c,b
24E1  20        nop                  ;Note: Alternative opcode used
24E2  4C        mov     c,h
24E3  20        nop                  ;Note: Alternative opcode used
24E4  20        nop                  ;Note: Alternative opcode used
24E5  53        mov     d,e
24E6  20        nop                  ;Note: Alternative opcode used
24E7  50        mov     d,b
24E8  0D        dcr     c
24E9  0A        ldax    b
24EA  00        nop
24EB  E1        pop     h
24EC  E5        push    h
24ED  F5        push    psw
24EE  CD 8B 0B  call    $0B8B
24F1  CD 6C 0C  call    $0C6C
24F4  F1        pop     psw
24F5  F5        push    psw
24F6  CD A1 0B  call    $0BA1
24F9  E1        pop     h
24FA  E5        push    h
24FB  7D        mov     a,l
24FC  CD A1 0B  call    $0BA1
24FF  CD 6C 0C  call    $0C6C
2502  60        mov     h,b
2503  69        mov     l,c
2504  CD 8B 0B  call    $0B8B
2507  CD 6C 0C  call    $0C6C
250A  62        mov     h,d
250B  6B        mov     l,e
250C  CD 8B 0B  call    $0B8B
250F  CD 6C 0C  call    $0C6C
2512  2A 2A 0C  lhld    $0C2A
2515  CD 8B 0B  call    $0B8B
2518  CD 6C 0C  call    $0C6C
251B  21 00 00  lxi     h,$0000
251E  39        dad     sp
251F  CD 8B 0B  call    $0B8B
2522  F1        pop     psw
2523  2A 2A 0C  lhld    $0C2A
2526  CD 65 0C  call    $0C65
2529  C9        ret
252A  02        stax    b
252B  F5        push    psw
252C  3A 4C 0C  lda     $0C4C
252F  FE 53     cpi     'S'
2531  CA 0D 09  jz      $090D
2534  FE 43     cpi     'C'
2536  CA 0D 09  jz      $090D
2539  CD 1B 0B  call    $0B1B
253C  32 4C 0C  sta     $0C4C
253F  F5        push    psw
2540  2F        cma
2541  3C        inr     a
2542  32 4D 0C  sta     $0C4D
2545  F1        pop     psw
2546  FE 03     cpi     $03
2548  C2 0D 09  jnz     $090D
254B  C7        rst     0
254C  00        nop
254D  00        nop
254E  F5        push    psw
254F  3A 4C 0C  lda     $0C4C
2552  FE 53     cpi     'S'
2554  CA 0D 09  jz      $090D
2557  CD 4E 0B  call    $0B4E
255A  07        rlc
255B  00        nop
255C  F1        pop     psw
255D  C9        ret
255E  CD B2 0B  call    $0BB2
2561  CD 2B 0C  call    $0C2B
2564  C9        ret
2565  CD 4E 0B  call    $0B4E
2568  0D        dcr     c
2569  0A        ldax    b
256A  00        nop
256B  C9        ret
256C  CD 4E 0B  call    $0B4E
256F  20        nop                  ;Note: Alternative opcode used
2570  00        nop
2571  C9        ret
2572  00        nop
2573  00        nop
2574  00        nop
2575  00        nop
2576  00        nop
2577  00        nop
2578  00        nop
2579  00        nop
257A  00        nop
257B  00        nop
257C  00        nop
257D  00        nop
257E  80        add     b
257F  0C        inr     c
2580  44        mov     b,h
2581  45        mov     b,l
2582  46        mov     b,m
2583  D5        push    d
2584  16 00     mvi     d,$00
2586  5F        mov     e,a
2587  19        dad
2588  7E        mov     a,m
2589  D1        pop     d
258A  C9        ret
258B  F5        push    psw
258C  7C        mov     a,h
258D  CD A1 0B  call    $0BA1
2590  7D        mov     a,l
2591  CD A1 0B  call    $0BA1
2594  F1        pop     psw
2595  C9        ret
2596  F5        push    psw
2597  CD A1 0B  call    $0BA1
259A  3E 48     mvi     a,'H'
259C  CD 0E 0B  call    $0B0E
259F  F1        pop     psw
25A0  C9        ret
25A1  F5        push    psw
25A2  0F        rrc
25A3  0F        rrc
25A4  0F        rrc
25A5  0F        rrc
25A6  CD 5F 0B  call    $0B5F
25A9  0F        rrc
25AA  0F        rrc
25AB  0F        rrc
25AC  0F        rrc
25AD  CD 5F 0B  call    $0B5F
25B0  F1        pop     psw
25B1  C9        ret
25B2  CD C3 0B  call    $0BC3
25B5  CD 3C 0A  call    $0A3C
25B8  08        nop                  ;Note: Alternative opcode used
25B9  D9        ret                  ;Note: Alternative opcode used
25BA  CD C3 0B  call    $0BC3
25BD  CD 3C 0A  call    $0A3C
25C0  08        nop                  ;Note: Alternative opcode used
25C1  D9        ret                  ;Note: Alternative opcode used
25C2  C9        ret
25C3  22 2A 0C  shld    $0C2A
25C6  CD 4E 0B  call    $0B4E
25C9  0D        dcr     c
25CA  0A        ldax    b
25CB  20        nop                  ;Note: Alternative opcode used
25CC  50        mov     d,b
25CD  20        nop                  ;Note: Alternative opcode used
25CE  43        mov     b,e
25CF  20        nop                  ;Note: Alternative opcode used
25D0  20        nop                  ;Note: Alternative opcode used
25D1  41        mov     b,c
25D2  20        nop                  ;Note: Alternative opcode used
25D3  46        mov     b,m
25D4  20        nop                  ;Note: Alternative opcode used
25D5  20        nop                  ;Note: Alternative opcode used
25D6  42        mov     b,d
25D7  20        nop                  ;Note: Alternative opcode used
25D8  43        mov     b,e
25D9  20        nop                  ;Note: Alternative opcode used
25DA  20        nop                  ;Note: Alternative opcode used
25DB  44        mov     b,h
25DC  20        nop                  ;Note: Alternative opcode used
25DD  45        mov     b,l
25DE  20        nop                  ;Note: Alternative opcode used
25DF  20        nop                  ;Note: Alternative opcode used
25E0  48        mov     c,b
25E1  20        nop                  ;Note: Alternative opcode used
25E2  4C        mov     c,h
25E3  20        nop                  ;Note: Alternative opcode used
25E4  20        nop                  ;Note: Alternative opcode used
25E5  53        mov     d,e
25E6  20        nop                  ;Note: Alternative opcode used
25E7  50        mov     d,b
25E8  0D        dcr     c
25E9  0A        ldax    b
25EA  00        nop
25EB  E1        pop     h
25EC  E5        push    h
25ED  F5        push    psw
25EE  CD 8B 0B  call    $0B8B
25F1  CD 6C 0C  call    $0C6C
25F4  F1        pop     psw
25F5  F5        push    psw
25F6  CD A1 0B  call    $0BA1
25F9  E1        pop     h
25FA  E5        push    h
25FB  7D        mov     a,l
25FC  CD A1 0B  call    $0BA1
25FF  CD 6C 0C  call    $0C6C
2602  60        mov     h,b
2603  69        mov     l,c
2604  CD 8B 0B  call    $0B8B
2607  CD 6C 0C  call    $0C6C
260A  62        mov     h,d
260B  6B        mov     l,e
260C  CD 8B 0B  call    $0B8B
260F  CD 6C 0C  call    $0C6C
2612  2A 2A 0C  lhld    $0C2A
2615  CD 8B 0B  call    $0B8B
2618  CD 6C 0C  call    $0C6C
261B  21 00 00  lxi     h,$0000
261E  39        dad     sp
261F  CD 8B 0B  call    $0B8B
2622  F1        pop     psw
2623  2A 2A 0C  lhld    $0C2A
2626  CD 65 0C  call    $0C65
2629  C9        ret
262A  02        stax    b
262B  F5        push    psw
262C  3A 4C 0C  lda     $0C4C
262F  FE 53     cpi     'S'
2631  CA 0D 09  jz      $090D
2634  FE 43     cpi     'C'
2636  CA 0D 09  jz      $090D
2639  CD 1B 0B  call    $0B1B
263C  32 4C 0C  sta     $0C4C
263F  F5        push    psw
2640  2F        cma
2641  3C        inr     a
2642  32 4D 0C  sta     $0C4D
2645  F1        pop     psw
2646  FE 03     cpi     $03
2648  C2 0D 09  jnz     $090D
264B  C7        rst     0
264C  00        nop
264D  00        nop
264E  F5        push    psw
264F  3A 4C 0C  lda     $0C4C
2652  FE 53     cpi     'S'
2654  CA 0D 09  jz      $090D
2657  CD 4E 0B  call    $0B4E
265A  07        rlc
265B  00        nop
265C  F1        pop     psw
265D  C9        ret
265E  CD B2 0B  call    $0BB2
2661  CD 2B 0C  call    $0C2B
2664  C9        ret
2665  CD 4E 0B  call    $0B4E
2668  0D        dcr     c
2669  0A        ldax    b
266A  00        nop
266B  C9        ret
266C  CD 4E 0B  call    $0B4E
266F  20        nop                  ;Note: Alternative opcode used
2670  00        nop
2671  C9        ret
2672  00        nop
2673  00        nop
2674  00        nop
2675  00        nop
2676  00        nop
2677  00        nop
2678  00        nop
2679  00        nop
267A  00        nop
267B  00        nop
267C  00        nop
267D  00        nop
267E  80        add     b
267F  0C        inr     c
2680  44        mov     b,h
2681  45        mov     b,l
2682  46        mov     b,m
2683  D5        push    d
2684  16 00     mvi     d,$00
2686  5F        mov     e,a
2687  19        dad
2688  7E        mov     a,m
2689  D1        pop     d
268A  C9        ret
268B  F5        push    psw
268C  7C        mov     a,h
268D  CD A1 0B  call    $0BA1
2690  7D        mov     a,l
2691  CD A1 0B  call    $0BA1
2694  F1        pop     psw
2695  C9        ret
2696  F5        push    psw
2697  CD A1 0B  call    $0BA1
269A  3E 48     mvi     a,'H'
269C  CD 0E 0B  call    $0B0E
269F  F1        pop     psw
26A0  C9        ret
26A1  F5        push    psw
26A2  0F        rrc
26A3  0F        rrc
26A4  0F        rrc
26A5  0F        rrc
26A6  CD 5F 0B  call    $0B5F
26A9  0F        rrc
26AA  0F        rrc
26AB  0F        rrc
26AC  0F        rrc
26AD  CD 5F 0B  call    $0B5F
26B0  F1        pop     psw
26B1  C9        ret
26B2  CD C3 0B  call    $0BC3
26B5  CD 3C 0A  call    $0A3C
26B8  08        nop                  ;Note: Alternative opcode used
26B9  D9        ret                  ;Note: Alternative opcode used
26BA  CD C3 0B  call    $0BC3
26BD  CD 3C 0A  call    $0A3C
26C0  08        nop                  ;Note: Alternative opcode used
26C1  D9        ret                  ;Note: Alternative opcode used
26C2  C9        ret
26C3  22 2A 0C  shld    $0C2A
26C6  CD 4E 0B  call    $0B4E
26C9  0D        dcr     c
26CA  0A        ldax    b
26CB  20        nop                  ;Note: Alternative opcode used
26CC  50        mov     d,b
26CD  20        nop                  ;Note: Alternative opcode used
26CE  43        mov     b,e
26CF  20        nop                  ;Note: Alternative opcode used
26D0  20        nop                  ;Note: Alternative opcode used
26D1  41        mov     b,c
26D2  20        nop                  ;Note: Alternative opcode used
26D3  46        mov     b,m
26D4  20        nop                  ;Note: Alternative opcode used
26D5  20        nop                  ;Note: Alternative opcode used
26D6  42        mov     b,d
26D7  20        nop                  ;Note: Alternative opcode used
26D8  43        mov     b,e
26D9  20        nop                  ;Note: Alternative opcode used
26DA  20        nop                  ;Note: Alternative opcode used
26DB  44        mov     b,h
26DC  20        nop                  ;Note: Alternative opcode used
26DD  45        mov     b,l
26DE  20        nop                  ;Note: Alternative opcode used
26DF  20        nop                  ;Note: Alternative opcode used
26E0  48        mov     c,b
26E1  20        nop                  ;Note: Alternative opcode used
26E2  4C        mov     c,h
26E3  20        nop                  ;Note: Alternative opcode used
26E4  20        nop                  ;Note: Alternative opcode used
26E5  53        mov     d,e
26E6  20        nop                  ;Note: Alternative opcode used
26E7  50        mov     d,b
26E8  0D        dcr     c
26E9  0A        ldax    b
26EA  00        nop
26EB  E1        pop     h
26EC  E5        push    h
26ED  F5        push    psw
26EE  CD 8B 0B  call    $0B8B
26F1  CD 6C 0C  call    $0C6C
26F4  F1        pop     psw
26F5  F5        push    psw
26F6  CD A1 0B  call    $0BA1
26F9  E1        pop     h
26FA  E5        push    h
26FB  7D        mov     a,l
26FC  CD A1 0B  call    $0BA1
26FF  CD 6C 0C  call    $0C6C
2702  60        mov     h,b
2703  69        mov     l,c
2704  CD 8B 0B  call    $0B8B
2707  CD 6C 0C  call    $0C6C
270A  62        mov     h,d
270B  6B        mov     l,e
270C  CD 8B 0B  call    $0B8B
270F  CD 6C 0C  call    $0C6C
2712  2A 2A 0C  lhld    $0C2A
2715  CD 8B 0B  call    $0B8B
2718  CD 6C 0C  call    $0C6C
271B  21 00 00  lxi     h,$0000
271E  39        dad     sp
271F  CD 8B 0B  call    $0B8B
2722  F1        pop     psw
2723  2A 2A 0C  lhld    $0C2A
2726  CD 65 0C  call    $0C65
2729  C9        ret
272A  02        stax    b
272B  F5        push    psw
272C  3A 4C 0C  lda     $0C4C
272F  FE 53     cpi     'S'
2731  CA 0D 09  jz      $090D
2734  FE 43     cpi     'C'
2736  CA 0D 09  jz      $090D
2739  CD 1B 0B  call    $0B1B
273C  32 4C 0C  sta     $0C4C
273F  F5        push    psw
2740  2F        cma
2741  3C        inr     a
2742  32 4D 0C  sta     $0C4D
2745  F1        pop     psw
2746  FE 03     cpi     $03
2748  C2 0D 09  jnz     $090D
274B  C7        rst     0
274C  00        nop
274D  00        nop
274E  F5        push    psw
274F  3A 4C 0C  lda     $0C4C
2752  FE 53     cpi     'S'
2754  CA 0D 09  jz      $090D
2757  CD 4E 0B  call    $0B4E
275A  07        rlc
275B  00        nop
275C  F1        pop     psw
275D  C9        ret
275E  CD B2 0B  call    $0BB2
2761  CD 2B 0C  call    $0C2B
2764  C9        ret
2765  CD 4E 0B  call    $0B4E
2768  0D        dcr     c
2769  0A        ldax    b
276A  00        nop
276B  C9        ret
276C  CD 4E 0B  call    $0B4E
276F  20        nop                  ;Note: Alternative opcode used
2770  00        nop
2771  C9        ret
2772  00        nop
2773  00        nop
2774  00        nop
2775  00        nop
2776  00        nop
2777  00        nop
2778  00        nop
2779  00        nop
277A  00        nop
277B  00        nop
277C  00        nop
277D  00        nop
277E  80        add     b
277F  0C        inr     c
2780  44        mov     b,h
2781  45        mov     b,l
2782  46        mov     b,m
2783  D5        push    d
2784  16 00     mvi     d,$00
2786  5F        mov     e,a
2787  19        dad
2788  7E        mov     a,m
2789  D1        pop     d
278A  C9        ret
278B  F5        push    psw
278C  7C        mov     a,h
278D  CD A1 0B  call    $0BA1
2790  7D        mov     a,l
2791  CD A1 0B  call    $0BA1
2794  F1        pop     psw
2795  C9        ret
2796  F5        push    psw
2797  CD A1 0B  call    $0BA1
279A  3E 48     mvi     a,'H'
279C  CD 0E 0B  call    $0B0E
279F  F1        pop     psw
27A0  C9        ret
27A1  F5        push    psw
27A2  0F        rrc
27A3  0F        rrc
27A4  0F        rrc
27A5  0F        rrc
27A6  CD 5F 0B  call    $0B5F
27A9  0F        rrc
27AA  0F        rrc
27AB  0F        rrc
27AC  0F        rrc
27AD  CD 5F 0B  call    $0B5F
27B0  F1        pop     psw
27B1  C9        ret
27B2  CD C3 0B  call    $0BC3
27B5  CD 3C 0A  call    $0A3C
27B8  08        nop                  ;Note: Alternative opcode used
27B9  D9        ret                  ;Note: Alternative opcode used
27BA  CD C3 0B  call    $0BC3
27BD  CD 3C 0A  call    $0A3C
27C0  08        nop                  ;Note: Alternative opcode used
27C1  D9        ret                  ;Note: Alternative opcode used
27C2  C9        ret
27C3  22 2A 0C  shld    $0C2A
27C6  CD 4E 0B  call    $0B4E
27C9  0D        dcr     c
27CA  0A        ldax    b
27CB  20        nop                  ;Note: Alternative opcode used
27CC  50        mov     d,b
27CD  20        nop                  ;Note: Alternative opcode used
27CE  43        mov     b,e
27CF  20        nop                  ;Note: Alternative opcode used
27D0  20        nop                  ;Note: Alternative opcode used
27D1  41        mov     b,c
27D2  20        nop                  ;Note: Alternative opcode used
27D3  46        mov     b,m
27D4  20        nop                  ;Note: Alternative opcode used
27D5  20        nop                  ;Note: Alternative opcode used
27D6  42        mov     b,d
27D7  20        nop                  ;Note: Alternative opcode used
27D8  43        mov     b,e
27D9  20        nop                  ;Note: Alternative opcode used
27DA  20        nop                  ;Note: Alternative opcode used
27DB  44        mov     b,h
27DC  20        nop                  ;Note: Alternative opcode used
27DD  45        mov     b,l
27DE  20        nop                  ;Note: Alternative opcode used
27DF  20        nop                  ;Note: Alternative opcode used
27E0  48        mov     c,b
27E1  20        nop                  ;Note: Alternative opcode used
27E2  4C        mov     c,h
27E3  20        nop                  ;Note: Alternative opcode used
27E4  20        nop                  ;Note: Alternative opcode used
27E5  53        mov     d,e
27E6  20        nop                  ;Note: Alternative opcode used
27E7  50        mov     d,b
27E8  0D        dcr     c
27E9  0A        ldax    b
27EA  00        nop
27EB  E1        pop     h
27EC  E5        push    h
27ED  F5        push    psw
27EE  CD 8B 0B  call    $0B8B
27F1  CD 6C 0C  call    $0C6C
27F4  F1        pop     psw
27F5  F5        push    psw
27F6  CD A1 0B  call    $0BA1
27F9  E1        pop     h
27FA  E5        push    h
27FB  7D        mov     a,l
27FC  CD A1 0B  call    $0BA1
27FF  CD 6C 0C  call    $0C6C
2802  60        mov     h,b
2803  69        mov     l,c
2804  CD 8B 0B  call    $0B8B
2807  CD 6C 0C  call    $0C6C
280A  62        mov     h,d
280B  6B        mov     l,e
280C  CD 8B 0B  call    $0B8B
280F  CD 6C 0C  call    $0C6C
2812  2A 2A 0C  lhld    $0C2A
2815  CD 8B 0B  call    $0B8B
2818  CD 6C 0C  call    $0C6C
281B  21 00 00  lxi     h,$0000
281E  39        dad     sp
281F  CD 8B 0B  call    $0B8B
2822  F1        pop     psw
2823  2A 2A 0C  lhld    $0C2A
2826  CD 65 0C  call    $0C65
2829  C9        ret
282A  02        stax    b
282B  F5        push    psw
282C  3A 4C 0C  lda     $0C4C
282F  FE 53     cpi     'S'
2831  CA 0D 09  jz      $090D
2834  FE 43     cpi     'C'
2836  CA 0D 09  jz      $090D
2839  CD 1B 0B  call    $0B1B
283C  32 4C 0C  sta     $0C4C
283F  F5        push    psw
2840  2F        cma
2841  3C        inr     a
2842  32 4D 0C  sta     $0C4D
2845  F1        pop     psw
2846  FE 03     cpi     $03
2848  C2 0D 09  jnz     $090D
284B  C7        rst     0
284C  00        nop
284D  00        nop
284E  F5        push    psw
284F  3A 4C 0C  lda     $0C4C
2852  FE 53     cpi     'S'
2854  CA 0D 09  jz      $090D
2857  CD 4E 0B  call    $0B4E
285A  07        rlc
285B  00        nop
285C  F1        pop     psw
285D  C9        ret
285E  CD B2 0B  call    $0BB2
2861  CD 2B 0C  call    $0C2B
2864  C9        ret
2865  CD 4E 0B  call    $0B4E
2868  0D        dcr     c
2869  0A        ldax    b
286A  00        nop
286B  C9        ret
286C  CD 4E 0B  call    $0B4E
286F  20        nop                  ;Note: Alternative opcode used
2870  00        nop
2871  C9        ret
2872  00        nop
2873  00        nop
2874  00        nop
2875  00        nop
2876  00        nop
2877  00        nop
2878  00        nop
2879  00        nop
287A  00        nop
287B  00        nop
287C  00        nop
287D  00        nop
287E  80        add     b
287F  0C        inr     c
2880  44        mov     b,h
2881  45        mov     b,l
2882  46        mov     b,m
2883  D5        push    d
2884  16 00     mvi     d,$00
2886  5F        mov     e,a
2887  19        dad
2888  7E        mov     a,m
2889  D1        pop     d
288A  C9        ret
288B  F5        push    psw
288C  7C        mov     a,h
288D  CD A1 0B  call    $0BA1
2890  7D        mov     a,l
2891  CD A1 0B  call    $0BA1
2894  F1        pop     psw
2895  C9        ret
2896  F5        push    psw
2897  CD A1 0B  call    $0BA1
289A  3E 48     mvi     a,'H'
289C  CD 0E 0B  call    $0B0E
289F  F1        pop     psw
28A0  C9        ret
28A1  F5        push    psw
28A2  0F        rrc
28A3  0F        rrc
28A4  0F        rrc
28A5  0F        rrc
28A6  CD 5F 0B  call    $0B5F
28A9  0F        rrc
28AA  0F        rrc
28AB  0F        rrc
28AC  0F        rrc
28AD  CD 5F 0B  call    $0B5F
28B0  F1        pop     psw
28B1  C9        ret
28B2  CD C3 0B  call    $0BC3
28B5  CD 3C 0A  call    $0A3C
28B8  08        nop                  ;Note: Alternative opcode used
28B9  D9        ret                  ;Note: Alternative opcode used
28BA  CD C3 0B  call    $0BC3
28BD  CD 3C 0A  call    $0A3C
28C0  08        nop                  ;Note: Alternative opcode used
28C1  D9        ret                  ;Note: Alternative opcode used
28C2  C9        ret
28C3  22 2A 0C  shld    $0C2A
28C6  CD 4E 0B  call    $0B4E
28C9  0D        dcr     c
28CA  0A        ldax    b
28CB  20        nop                  ;Note: Alternative opcode used
28CC  50        mov     d,b
28CD  20        nop                  ;Note: Alternative opcode used
28CE  43        mov     b,e
28CF  20        nop                  ;Note: Alternative opcode used
28D0  20        nop                  ;Note: Alternative opcode used
28D1  41        mov     b,c
28D2  20        nop                  ;Note: Alternative opcode used
28D3  46        mov     b,m
28D4  20        nop                  ;Note: Alternative opcode used
28D5  20        nop                  ;Note: Alternative opcode used
28D6  42        mov     b,d
28D7  20        nop                  ;Note: Alternative opcode used
28D8  43        mov     b,e
28D9  20        nop                  ;Note: Alternative opcode used
28DA  20        nop                  ;Note: Alternative opcode used
28DB  44        mov     b,h
28DC  20        nop                  ;Note: Alternative opcode used
28DD  45        mov     b,l
28DE  20        nop                  ;Note: Alternative opcode used
28DF  20        nop                  ;Note: Alternative opcode used
28E0  48        mov     c,b
28E1  20        nop                  ;Note: Alternative opcode used
28E2  4C        mov     c,h
28E3  20        nop                  ;Note: Alternative opcode used
28E4  20        nop                  ;Note: Alternative opcode used
28E5  53        mov     d,e
28E6  20        nop                  ;Note: Alternative opcode used
28E7  50        mov     d,b
28E8  0D        dcr     c
28E9  0A        ldax    b
28EA  00        nop
28EB  E1        pop     h
28EC  E5        push    h
28ED  F5        push    psw
28EE  CD 8B 0B  call    $0B8B
28F1  CD 6C 0C  call    $0C6C
28F4  F1        pop     psw
28F5  F5        push    psw
28F6  CD A1 0B  call    $0BA1
28F9  E1        pop     h
28FA  E5        push    h
28FB  7D        mov     a,l
28FC  CD A1 0B  call    $0BA1
28FF  CD 6C 0C  call    $0C6C
2902  60        mov     h,b
2903  69        mov     l,c
2904  CD 8B 0B  call    $0B8B
2907  CD 6C 0C  call    $0C6C
290A  62        mov     h,d
290B  6B        mov     l,e
290C  CD 8B 0B  call    $0B8B
290F  CD 6C 0C  call    $0C6C
2912  2A 2A 0C  lhld    $0C2A
2915  CD 8B 0B  call    $0B8B
2918  CD 6C 0C  call    $0C6C
291B  21 00 00  lxi     h,$0000
291E  39        dad     sp
291F  CD 8B 0B  call    $0B8B
2922  F1        pop     psw
2923  2A 2A 0C  lhld    $0C2A
2926  CD 65 0C  call    $0C65
2929  C9        ret
292A  02        stax    b
292B  F5        push    psw
292C  3A 4C 0C  lda     $0C4C
292F  FE 53     cpi     'S'
2931  CA 0D 09  jz      $090D
2934  FE 43     cpi     'C'
2936  CA 0D 09  jz      $090D
2939  CD 1B 0B  call    $0B1B
293C  32 4C 0C  sta     $0C4C
293F  F5        push    psw
2940  2F        cma
2941  3C        inr     a
2942  32 4D 0C  sta     $0C4D
2945  F1        pop     psw
2946  FE 03     cpi     $03
2948  C2 0D 09  jnz     $090D
294B  C7        rst     0
294C  00        nop
294D  00        nop
294E  F5        push    psw
294F  3A 4C 0C  lda     $0C4C
2952  FE 53     cpi     'S'
2954  CA 0D 09  jz      $090D
2957  CD 4E 0B  call    $0B4E
295A  07        rlc
295B  00        nop
295C  F1        pop     psw
295D  C9        ret
295E  CD B2 0B  call    $0BB2
2961  CD 2B 0C  call    $0C2B
2964  C9        ret
2965  CD 4E 0B  call    $0B4E
2968  0D        dcr     c
2969  0A        ldax    b
296A  00        nop
296B  C9        ret
296C  CD 4E 0B  call    $0B4E
296F  20        nop                  ;Note: Alternative opcode used
2970  00        nop
2971  C9        ret
2972  00        nop
2973  00        nop
2974  00        nop
2975  00        nop
2976  00        nop
2977  00        nop
2978  00        nop
2979  00        nop
297A  00        nop
297B  00        nop
297C  00        nop
297D  00        nop
297E  80        add     b
297F  0C        inr     c
2980  44        mov     b,h
2981  45        mov     b,l
2982  46        mov     b,m
2983  D5        push    d
2984  16 00     mvi     d,$00
2986  5F        mov     e,a
2987  19        dad
2988  7E        mov     a,m
2989  D1        pop     d
298A  C9        ret
298B  F5        push    psw
298C  7C        mov     a,h
298D  CD A1 0B  call    $0BA1
2990  7D        mov     a,l
2991  CD A1 0B  call    $0BA1
2994  F1        pop     psw
2995  C9        ret
2996  F5        push    psw
2997  CD A1 0B  call    $0BA1
299A  3E 48     mvi     a,'H'
299C  CD 0E 0B  call    $0B0E
299F  F1        pop     psw
29A0  C9        ret
29A1  F5        push    psw
29A2  0F        rrc
29A3  0F        rrc
29A4  0F        rrc
29A5  0F        rrc
29A6  CD 5F 0B  call    $0B5F
29A9  0F        rrc
29AA  0F        rrc
29AB  0F        rrc
29AC  0F        rrc
29AD  CD 5F 0B  call    $0B5F
29B0  F1        pop     psw
29B1  C9        ret
29B2  CD C3 0B  call    $0BC3
29B5  CD 3C 0A  call    $0A3C
29B8  08        nop                  ;Note: Alternative opcode used
29B9  D9        ret                  ;Note: Alternative opcode used
29BA  CD C3 0B  call    $0BC3
29BD  CD 3C 0A  call    $0A3C
29C0  08        nop                  ;Note: Alternative opcode used
29C1  D9        ret                  ;Note: Alternative opcode used
29C2  C9        ret
29C3  22 2A 0C  shld    $0C2A
29C6  CD 4E 0B  call    $0B4E
29C9  0D        dcr     c
29CA  0A        ldax    b
29CB  20        nop                  ;Note: Alternative opcode used
29CC  50        mov     d,b
29CD  20        nop                  ;Note: Alternative opcode used
29CE  43        mov     b,e
29CF  20        nop                  ;Note: Alternative opcode used
29D0  20        nop                  ;Note: Alternative opcode used
29D1  41        mov     b,c
29D2  20        nop                  ;Note: Alternative opcode used
29D3  46        mov     b,m
29D4  20        nop                  ;Note: Alternative opcode used
29D5  20        nop                  ;Note: Alternative opcode used
29D6  42        mov     b,d
29D7  20        nop                  ;Note: Alternative opcode used
29D8  43        mov     b,e
29D9  20        nop                  ;Note: Alternative opcode used
29DA  20        nop                  ;Note: Alternative opcode used
29DB  44        mov     b,h
29DC  20        nop                  ;Note: Alternative opcode used
29DD  45        mov     b,l
29DE  20        nop                  ;Note: Alternative opcode used
29DF  20        nop                  ;Note: Alternative opcode used
29E0  48        mov     c,b
29E1  20        nop                  ;Note: Alternative opcode used
29E2  4C        mov     c,h
29E3  20        nop                  ;Note: Alternative opcode used
29E4  20        nop                  ;Note: Alternative opcode used
29E5  53        mov     d,e
29E6  20        nop                  ;Note: Alternative opcode used
29E7  50        mov     d,b
29E8  0D        dcr     c
29E9  0A        ldax    b
29EA  00        nop
29EB  E1        pop     h
29EC  E5        push    h
29ED  F5        push    psw
29EE  CD 8B 0B  call    $0B8B
29F1  CD 6C 0C  call    $0C6C
29F4  F1        pop     psw
29F5  F5        push    psw
29F6  CD A1 0B  call    $0BA1
29F9  E1        pop     h
29FA  E5        push    h
29FB  7D        mov     a,l
29FC  CD A1 0B  call    $0BA1
29FF  CD 6C 0C  call    $0C6C
2A02  60        mov     h,b
2A03  69        mov     l,c
2A04  CD 8B 0B  call    $0B8B
2A07  CD 6C 0C  call    $0C6C
2A0A  62        mov     h,d
2A0B  6B        mov     l,e
2A0C  CD 8B 0B  call    $0B8B
2A0F  CD 6C 0C  call    $0C6C
2A12  2A 2A 0C  lhld    $0C2A
2A15  CD 8B 0B  call    $0B8B
2A18  CD 6C 0C  call    $0C6C
2A1B  21 00 00  lxi     h,$0000
2A1E  39        dad     sp
2A1F  CD 8B 0B  call    $0B8B
2A22  F1        pop     psw
2A23  2A 2A 0C  lhld    $0C2A
2A26  CD 65 0C  call    $0C65
2A29  C9        ret
2A2A  02        stax    b
2A2B  F5        push    psw
2A2C  3A 4C 0C  lda     $0C4C
2A2F  FE 53     cpi     'S'
2A31  CA 0D 09  jz      $090D
2A34  FE 43     cpi     'C'
2A36  CA 0D 09  jz      $090D
2A39  CD 1B 0B  call    $0B1B
2A3C  32 4C 0C  sta     $0C4C
2A3F  F5        push    psw
2A40  2F        cma
2A41  3C        inr     a
2A42  32 4D 0C  sta     $0C4D
2A45  F1        pop     psw
2A46  FE 03     cpi     $03
2A48  C2 0D 09  jnz     $090D
2A4B  C7        rst     0
2A4C  00        nop
2A4D  00        nop
2A4E  F5        push    psw
2A4F  3A 4C 0C  lda     $0C4C
2A52  FE 53     cpi     'S'
2A54  CA 0D 09  jz      $090D
2A57  CD 4E 0B  call    $0B4E
2A5A  07        rlc
2A5B  00        nop
2A5C  F1        pop     psw
2A5D  C9        ret
2A5E  CD B2 0B  call    $0BB2
2A61  CD 2B 0C  call    $0C2B
2A64  C9        ret
2A65  CD 4E 0B  call    $0B4E
2A68  0D        dcr     c
2A69  0A        ldax    b
2A6A  00        nop
2A6B  C9        ret
2A6C  CD 4E 0B  call    $0B4E
2A6F  20        nop                  ;Note: Alternative opcode used
2A70  00        nop
2A71  C9        ret
2A72  00        nop
2A73  00        nop
2A74  00        nop
2A75  00        nop
2A76  00        nop
2A77  00        nop
2A78  00        nop
2A79  00        nop
2A7A  00        nop
2A7B  00        nop
2A7C  00        nop
2A7D  00        nop
2A7E  80        add     b
2A7F  0C        inr     c
2A80  44        mov     b,h
2A81  45        mov     b,l
2A82  46        mov     b,m
2A83  D5        push    d
2A84  16 00     mvi     d,$00
2A86  5F        mov     e,a
2A87  19        dad
2A88  7E        mov     a,m
2A89  D1        pop     d
2A8A  C9        ret
2A8B  F5        push    psw
2A8C  7C        mov     a,h
2A8D  CD A1 0B  call    $0BA1
2A90  7D        mov     a,l
2A91  CD A1 0B  call    $0BA1
2A94  F1        pop     psw
2A95  C9        ret
2A96  F5        push    psw
2A97  CD A1 0B  call    $0BA1
2A9A  3E 48     mvi     a,'H'
2A9C  CD 0E 0B  call    $0B0E
2A9F  F1        pop     psw
2AA0  C9        ret
2AA1  F5        push    psw
2AA2  0F        rrc
2AA3  0F        rrc
2AA4  0F        rrc
2AA5  0F        rrc
2AA6  CD 5F 0B  call    $0B5F
2AA9  0F        rrc
2AAA  0F        rrc
2AAB  0F        rrc
2AAC  0F        rrc
2AAD  CD 5F 0B  call    $0B5F
2AB0  F1        pop     psw
2AB1  C9        ret
2AB2  CD C3 0B  call    $0BC3
2AB5  CD 3C 0A  call    $0A3C
2AB8  08        nop                  ;Note: Alternative opcode used
2AB9  D9        ret                  ;Note: Alternative opcode used
2ABA  CD C3 0B  call    $0BC3
2ABD  CD 3C 0A  call    $0A3C
2AC0  08        nop                  ;Note: Alternative opcode used
2AC1  D9        ret                  ;Note: Alternative opcode used
2AC2  C9        ret
2AC3  22 2A 0C  shld    $0C2A
2AC6  CD 4E 0B  call    $0B4E
2AC9  0D        dcr     c
2ACA  0A        ldax    b
2ACB  20        nop                  ;Note: Alternative opcode used
2ACC  50        mov     d,b
2ACD  20        nop                  ;Note: Alternative opcode used
2ACE  43        mov     b,e
2ACF  20        nop                  ;Note: Alternative opcode used
2AD0  20        nop                  ;Note: Alternative opcode used
2AD1  41        mov     b,c
2AD2  20        nop                  ;Note: Alternative opcode used
2AD3  46        mov     b,m
2AD4  20        nop                  ;Note: Alternative opcode used
2AD5  20        nop                  ;Note: Alternative opcode used
2AD6  42        mov     b,d
2AD7  20        nop                  ;Note: Alternative opcode used
2AD8  43        mov     b,e
2AD9  20        nop                  ;Note: Alternative opcode used
2ADA  20        nop                  ;Note: Alternative opcode used
2ADB  44        mov     b,h
2ADC  20        nop                  ;Note: Alternative opcode used
2ADD  45        mov     b,l
2ADE  20        nop                  ;Note: Alternative opcode used
2ADF  20        nop                  ;Note: Alternative opcode used
2AE0  48        mov     c,b
2AE1  20        nop                  ;Note: Alternative opcode used
2AE2  4C        mov     c,h
2AE3  20        nop                  ;Note: Alternative opcode used
2AE4  20        nop                  ;Note: Alternative opcode used
2AE5  53        mov     d,e
2AE6  20        nop                  ;Note: Alternative opcode used
2AE7  50        mov     d,b
2AE8  0D        dcr     c
2AE9  0A        ldax    b
2AEA  00        nop
2AEB  E1        pop     h
2AEC  E5        push    h
2AED  F5        push    psw
2AEE  CD 8B 0B  call    $0B8B
2AF1  CD 6C 0C  call    $0C6C
2AF4  F1        pop     psw
2AF5  F5        push    psw
2AF6  CD A1 0B  call    $0BA1
2AF9  E1        pop     h
2AFA  E5        push    h
2AFB  7D        mov     a,l
2AFC  CD A1 0B  call    $0BA1
2AFF  CD 6C 0C  call    $0C6C
2B02  60        mov     h,b
2B03  69        mov     l,c
2B04  CD 8B 0B  call    $0B8B
2B07  CD 6C 0C  call    $0C6C
2B0A  62        mov     h,d
2B0B  6B        mov     l,e
2B0C  CD 8B 0B  call    $0B8B
2B0F  CD 6C 0C  call    $0C6C
2B12  2A 2A 0C  lhld    $0C2A
2B15  CD 8B 0B  call    $0B8B
2B18  CD 6C 0C  call    $0C6C
2B1B  21 00 00  lxi     h,$0000
2B1E  39        dad     sp
2B1F  CD 8B 0B  call    $0B8B
2B22  F1        pop     psw
2B23  2A 2A 0C  lhld    $0C2A
2B26  CD 65 0C  call    $0C65
2B29  C9        ret
2B2A  02        stax    b
2B2B  F5        push    psw
2B2C  3A 4C 0C  lda     $0C4C
2B2F  FE 53     cpi     'S'
2B31  CA 0D 09  jz      $090D
2B34  FE 43     cpi     'C'
2B36  CA 0D 09  jz      $090D
2B39  CD 1B 0B  call    $0B1B
2B3C  32 4C 0C  sta     $0C4C
2B3F  F5        push    psw
2B40  2F        cma
2B41  3C        inr     a
2B42  32 4D 0C  sta     $0C4D
2B45  F1        pop     psw
2B46  FE 03     cpi     $03
2B48  C2 0D 09  jnz     $090D
2B4B  C7        rst     0
2B4C  00        nop
2B4D  00        nop
2B4E  F5        push    psw
2B4F  3A 4C 0C  lda     $0C4C
2B52  FE 53     cpi     'S'
2B54  CA 0D 09  jz      $090D
2B57  CD 4E 0B  call    $0B4E
2B5A  07        rlc
2B5B  00        nop
2B5C  F1        pop     psw
2B5D  C9        ret
2B5E  CD B2 0B  call    $0BB2
2B61  CD 2B 0C  call    $0C2B
2B64  C9        ret
2B65  CD 4E 0B  call    $0B4E
2B68  0D        dcr     c
2B69  0A        ldax    b
2B6A  00        nop
2B6B  C9        ret
2B6C  CD 4E 0B  call    $0B4E
2B6F  20        nop                  ;Note: Alternative opcode used
2B70  00        nop
2B71  C9        ret
2B72  00        nop
2B73  00        nop
2B74  00        nop
2B75  00        nop
2B76  00        nop
2B77  00        nop
2B78  00        nop
2B79  00        nop
2B7A  00        nop
2B7B  00        nop
2B7C  00        nop
2B7D  00        nop
2B7E  80        add     b
2B7F  0C        inr     c
2B80  44        mov     b,h
2B81  45        mov     b,l
2B82  46        mov     b,m
2B83  D5        push    d
2B84  16 00     mvi     d,$00
2B86  5F        mov     e,a
2B87  19        dad
2B88  7E        mov     a,m
2B89  D1        pop     d
2B8A  C9        ret
2B8B  F5        push    psw
2B8C  7C        mov     a,h
2B8D  CD A1 0B  call    $0BA1
2B90  7D        mov     a,l
2B91  CD A1 0B  call    $0BA1
2B94  F1        pop     psw
2B95  C9        ret
2B96  F5        push    psw
2B97  CD A1 0B  call    $0BA1
2B9A  3E 48     mvi     a,'H'
2B9C  CD 0E 0B  call    $0B0E
2B9F  F1        pop     psw
2BA0  C9        ret
2BA1  F5        push    psw
2BA2  0F        rrc
2BA3  0F        rrc
2BA4  0F        rrc
2BA5  0F        rrc
2BA6  CD 5F 0B  call    $0B5F
2BA9  0F        rrc
2BAA  0F        rrc
2BAB  0F        rrc
2BAC  0F        rrc
2BAD  CD 5F 0B  call    $0B5F
2BB0  F1        pop     psw
2BB1  C9        ret
2BB2  CD C3 0B  call    $0BC3
2BB5  CD 3C 0A  call    $0A3C
2BB8  08        nop                  ;Note: Alternative opcode used
2BB9  D9        ret                  ;Note: Alternative opcode used
2BBA  CD C3 0B  call    $0BC3
2BBD  CD 3C 0A  call    $0A3C
2BC0  08        nop                  ;Note: Alternative opcode used
2BC1  D9        ret                  ;Note: Alternative opcode used
2BC2  C9        ret
2BC3  22 2A 0C  shld    $0C2A
2BC6  CD 4E 0B  call    $0B4E
2BC9  0D        dcr     c
2BCA  0A        ldax    b
2BCB  20        nop                  ;Note: Alternative opcode used
2BCC  50        mov     d,b
2BCD  20        nop                  ;Note: Alternative opcode used
2BCE  43        mov     b,e
2BCF  20        nop                  ;Note: Alternative opcode used
2BD0  20        nop                  ;Note: Alternative opcode used
2BD1  41        mov     b,c
2BD2  20        nop                  ;Note: Alternative opcode used
2BD3  46        mov     b,m
2BD4  20        nop                  ;Note: Alternative opcode used
2BD5  20        nop                  ;Note: Alternative opcode used
2BD6  42        mov     b,d
2BD7  20        nop                  ;Note: Alternative opcode used
2BD8  43        mov     b,e
2BD9  20        nop                  ;Note: Alternative opcode used
2BDA  20        nop                  ;Note: Alternative opcode used
2BDB  44        mov     b,h
2BDC  20        nop                  ;Note: Alternative opcode used
2BDD  45        mov     b,l
2BDE  20        nop                  ;Note: Alternative opcode used
2BDF  20        nop                  ;Note: Alternative opcode used
2BE0  48        mov     c,b
2BE1  20        nop                  ;Note: Alternative opcode used
2BE2  4C        mov     c,h
2BE3  20        nop                  ;Note: Alternative opcode used
2BE4  20        nop                  ;Note: Alternative opcode used
2BE5  53        mov     d,e
2BE6  20        nop                  ;Note: Alternative opcode used
2BE7  50        mov     d,b
2BE8  0D        dcr     c
2BE9  0A        ldax    b
2BEA  00        nop
2BEB  E1        pop     h
2BEC  E5        push    h
2BED  F5        push    psw
2BEE  CD 8B 0B  call    $0B8B
2BF1  CD 6C 0C  call    $0C6C
2BF4  F1        pop     psw
2BF5  F5        push    psw
2BF6  CD A1 0B  call    $0BA1
2BF9  E1        pop     h
2BFA  E5        push    h
2BFB  7D        mov     a,l
2BFC  CD A1 0B  call    $0BA1
2BFF  CD 6C 0C  call    $0C6C
2C02  60        mov     h,b
2C03  69        mov     l,c
2C04  CD 8B 0B  call    $0B8B
2C07  CD 6C 0C  call    $0C6C
2C0A  62        mov     h,d
2C0B  6B        mov     l,e
2C0C  CD 8B 0B  call    $0B8B
2C0F  CD 6C 0C  call    $0C6C
2C12  2A 2A 0C  lhld    $0C2A
2C15  CD 8B 0B  call    $0B8B
2C18  CD 6C 0C  call    $0C6C
2C1B  21 00 00  lxi     h,$0000
2C1E  39        dad     sp
2C1F  CD 8B 0B  call    $0B8B
2C22  F1        pop     psw
2C23  2A 2A 0C  lhld    $0C2A
2C26  CD 65 0C  call    $0C65
2C29  C9        ret
2C2A  02        stax    b
2C2B  F5        push    psw
2C2C  3A 4C 0C  lda     $0C4C
2C2F  FE 53     cpi     'S'
2C31  CA 0D 09  jz      $090D
2C34  FE 43     cpi     'C'
2C36  CA 0D 09  jz      $090D
2C39  CD 1B 0B  call    $0B1B
2C3C  32 4C 0C  sta     $0C4C
2C3F  F5        push    psw
2C40  2F        cma
2C41  3C        inr     a
2C42  32 4D 0C  sta     $0C4D
2C45  F1        pop     psw
2C46  FE 03     cpi     $03
2C48  C2 0D 09  jnz     $090D
2C4B  C7        rst     0
2C4C  00        nop
2C4D  00        nop
2C4E  F5        push    psw
2C4F  3A 4C 0C  lda     $0C4C
2C52  FE 53     cpi     'S'
2C54  CA 0D 09  jz      $090D
2C57  CD 4E 0B  call    $0B4E
2C5A  07        rlc
2C5B  00        nop
2C5C  F1        pop     psw
2C5D  C9        ret
2C5E  CD B2 0B  call    $0BB2
2C61  CD 2B 0C  call    $0C2B
2C64  C9        ret
2C65  CD 4E 0B  call    $0B4E
2C68  0D        dcr     c
2C69  0A        ldax    b
2C6A  00        nop
2C6B  C9        ret
2C6C  CD 4E 0B  call    $0B4E
2C6F  20        nop                  ;Note: Alternative opcode used
2C70  00        nop
2C71  C9        ret
2C72  00        nop
2C73  00        nop
2C74  00        nop
2C75  00        nop
2C76  00        nop
2C77  00        nop
2C78  00        nop
2C79  00        nop
2C7A  00        nop
2C7B  00        nop
2C7C  00        nop
2C7D  00        nop
2C7E  80        add     b
2C7F  0C        inr     c
2C80  44        mov     b,h
2C81  45        mov     b,l
2C82  46        mov     b,m
2C83  D5        push    d
2C84  16 00     mvi     d,$00
2C86  5F        mov     e,a
2C87  19        dad
2C88  7E        mov     a,m
2C89  D1        pop     d
2C8A  C9        ret
2C8B  F5        push    psw
2C8C  7C        mov     a,h
2C8D  CD A1 0B  call    $0BA1
2C90  7D        mov     a,l
2C91  CD A1 0B  call    $0BA1
2C94  F1        pop     psw
2C95  C9        ret
2C96  F5        push    psw
2C97  CD A1 0B  call    $0BA1
2C9A  3E 48     mvi     a,'H'
2C9C  CD 0E 0B  call    $0B0E
2C9F  F1        pop     psw
2CA0  C9        ret
2CA1  F5        push    psw
2CA2  0F        rrc
2CA3  0F        rrc
2CA4  0F        rrc
2CA5  0F        rrc
2CA6  CD 5F 0B  call    $0B5F
2CA9  0F        rrc
2CAA  0F        rrc
2CAB  0F        rrc
2CAC  0F        rrc
2CAD  CD 5F 0B  call    $0B5F
2CB0  F1        pop     psw
2CB1  C9        ret
2CB2  CD C3 0B  call    $0BC3
2CB5  CD 3C 0A  call    $0A3C
2CB8  08        nop                  ;Note: Alternative opcode used
2CB9  D9        ret                  ;Note: Alternative opcode used
2CBA  CD C3 0B  call    $0BC3
2CBD  CD 3C 0A  call    $0A3C
2CC0  08        nop                  ;Note: Alternative opcode used
2CC1  D9        ret                  ;Note: Alternative opcode used
2CC2  C9        ret
2CC3  22 2A 0C  shld    $0C2A
2CC6  CD 4E 0B  call    $0B4E
2CC9  0D        dcr     c
2CCA  0A        ldax    b
2CCB  20        nop                  ;Note: Alternative opcode used
2CCC  50        mov     d,b
2CCD  20        nop                  ;Note: Alternative opcode used
2CCE  43        mov     b,e
2CCF  20        nop                  ;Note: Alternative opcode used
2CD0  20        nop                  ;Note: Alternative opcode used
2CD1  41        mov     b,c
2CD2  20        nop                  ;Note: Alternative opcode used
2CD3  46        mov     b,m
2CD4  20        nop                  ;Note: Alternative opcode used
2CD5  20        nop                  ;Note: Alternative opcode used
2CD6  42        mov     b,d
2CD7  20        nop                  ;Note: Alternative opcode used
2CD8  43        mov     b,e
2CD9  20        nop                  ;Note: Alternative opcode used
2CDA  20        nop                  ;Note: Alternative opcode used
2CDB  44        mov     b,h
2CDC  20        nop                  ;Note: Alternative opcode used
2CDD  45        mov     b,l
2CDE  20        nop                  ;Note: Alternative opcode used
2CDF  20        nop                  ;Note: Alternative opcode used
2CE0  48        mov     c,b
2CE1  20        nop                  ;Note: Alternative opcode used
2CE2  4C        mov     c,h
2CE3  20        nop                  ;Note: Alternative opcode used
2CE4  20        nop                  ;Note: Alternative opcode used
2CE5  53        mov     d,e
2CE6  20        nop                  ;Note: Alternative opcode used
2CE7  50        mov     d,b
2CE8  0D        dcr     c
2CE9  0A        ldax    b
2CEA  00        nop
2CEB  E1        pop     h
2CEC  E5        push    h
2CED  F5        push    psw
2CEE  CD 8B 0B  call    $0B8B
2CF1  CD 6C 0C  call    $0C6C
2CF4  F1        pop     psw
2CF5  F5        push    psw
2CF6  CD A1 0B  call    $0BA1
2CF9  E1        pop     h
2CFA  E5        push    h
2CFB  7D        mov     a,l
2CFC  CD A1 0B  call    $0BA1
2CFF  CD 6C 0C  call    $0C6C
2D02  60        mov     h,b
2D03  69        mov     l,c
2D04  CD 8B 0B  call    $0B8B
2D07  CD 6C 0C  call    $0C6C
2D0A  62        mov     h,d
2D0B  6B        mov     l,e
2D0C  CD 8B 0B  call    $0B8B
2D0F  CD 6C 0C  call    $0C6C
2D12  2A 2A 0C  lhld    $0C2A
2D15  CD 8B 0B  call    $0B8B
2D18  CD 6C 0C  call    $0C6C
2D1B  21 00 00  lxi     h,$0000
2D1E  39        dad     sp
2D1F  CD 8B 0B  call    $0B8B
2D22  F1        pop     psw
2D23  2A 2A 0C  lhld    $0C2A
2D26  CD 65 0C  call    $0C65
2D29  C9        ret
2D2A  02        stax    b
2D2B  F5        push    psw
2D2C  3A 4C 0C  lda     $0C4C
2D2F  FE 53     cpi     'S'
2D31  CA 0D 09  jz      $090D
2D34  FE 43     cpi     'C'
2D36  CA 0D 09  jz      $090D
2D39  CD 1B 0B  call    $0B1B
2D3C  32 4C 0C  sta     $0C4C
2D3F  F5        push    psw
2D40  2F        cma
2D41  3C        inr     a
2D42  32 4D 0C  sta     $0C4D
2D45  F1        pop     psw
2D46  FE 03     cpi     $03
2D48  C2 0D 09  jnz     $090D
2D4B  C7        rst     0
2D4C  00        nop
2D4D  00        nop
2D4E  F5        push    psw
2D4F  3A 4C 0C  lda     $0C4C
2D52  FE 53     cpi     'S'
2D54  CA 0D 09  jz      $090D
2D57  CD 4E 0B  call    $0B4E
2D5A  07        rlc
2D5B  00        nop
2D5C  F1        pop     psw
2D5D  C9        ret
2D5E  CD B2 0B  call    $0BB2
2D61  CD 2B 0C  call    $0C2B
2D64  C9        ret
2D65  CD 4E 0B  call    $0B4E
2D68  0D        dcr     c
2D69  0A        ldax    b
2D6A  00        nop
2D6B  C9        ret
2D6C  CD 4E 0B  call    $0B4E
2D6F  20        nop                  ;Note: Alternative opcode used
2D70  00        nop
2D71  C9        ret
2D72  00        nop
2D73  00        nop
2D74  00        nop
2D75  00        nop
2D76  00        nop
2D77  00        nop
2D78  00        nop
2D79  00        nop
2D7A  00        nop
2D7B  00        nop
2D7C  00        nop
2D7D  00        nop
2D7E  80        add     b
2D7F  0C        inr     c
2D80  44        mov     b,h
2D81  45        mov     b,l
2D82  46        mov     b,m
2D83  D5        push    d
2D84  16 00     mvi     d,$00
2D86  5F        mov     e,a
2D87  19        dad
2D88  7E        mov     a,m
2D89  D1        pop     d
2D8A  C9        ret
2D8B  F5        push    psw
2D8C  7C        mov     a,h
2D8D  CD A1 0B  call    $0BA1
2D90  7D        mov     a,l
2D91  CD A1 0B  call    $0BA1
2D94  F1        pop     psw
2D95  C9        ret
2D96  F5        push    psw
2D97  CD A1 0B  call    $0BA1
2D9A  3E 48     mvi     a,'H'
2D9C  CD 0E 0B  call    $0B0E
2D9F  F1        pop     psw
2DA0  C9        ret
2DA1  F5        push    psw
2DA2  0F        rrc
2DA3  0F        rrc
2DA4  0F        rrc
2DA5  0F        rrc
2DA6  CD 5F 0B  call    $0B5F
2DA9  0F        rrc
2DAA  0F        rrc
2DAB  0F        rrc
2DAC  0F        rrc
2DAD  CD 5F 0B  call    $0B5F
2DB0  F1        pop     psw
2DB1  C9        ret
2DB2  CD C3 0B  call    $0BC3
2DB5  CD 3C 0A  call    $0A3C
2DB8  08        nop                  ;Note: Alternative opcode used
2DB9  D9        ret                  ;Note: Alternative opcode used
2DBA  CD C3 0B  call    $0BC3
2DBD  CD 3C 0A  call    $0A3C
2DC0  08        nop                  ;Note: Alternative opcode used
2DC1  D9        ret                  ;Note: Alternative opcode used
2DC2  C9        ret
2DC3  22 2A 0C  shld    $0C2A
2DC6  CD 4E 0B  call    $0B4E
2DC9  0D        dcr     c
2DCA  0A        ldax    b
2DCB  20        nop                  ;Note: Alternative opcode used
2DCC  50        mov     d,b
2DCD  20        nop                  ;Note: Alternative opcode used
2DCE  43        mov     b,e
2DCF  20        nop                  ;Note: Alternative opcode used
2DD0  20        nop                  ;Note: Alternative opcode used
2DD1  41        mov     b,c
2DD2  20        nop                  ;Note: Alternative opcode used
2DD3  46        mov     b,m
2DD4  20        nop                  ;Note: Alternative opcode used
2DD5  20        nop                  ;Note: Alternative opcode used
2DD6  42        mov     b,d
2DD7  20        nop                  ;Note: Alternative opcode used
2DD8  43        mov     b,e
2DD9  20        nop                  ;Note: Alternative opcode used
2DDA  20        nop                  ;Note: Alternative opcode used
2DDB  44        mov     b,h
2DDC  20        nop                  ;Note: Alternative opcode used
2DDD  45        mov     b,l
2DDE  20        nop                  ;Note: Alternative opcode used
2DDF  20        nop                  ;Note: Alternative opcode used
2DE0  48        mov     c,b
2DE1  20        nop                  ;Note: Alternative opcode used
2DE2  4C        mov     c,h
2DE3  20        nop                  ;Note: Alternative opcode used
2DE4  20        nop                  ;Note: Alternative opcode used
2DE5  53        mov     d,e
2DE6  20        nop                  ;Note: Alternative opcode used
2DE7  50        mov     d,b
2DE8  0D        dcr     c
2DE9  0A        ldax    b
2DEA  00        nop
2DEB  E1        pop     h
2DEC  E5        push    h
2DED  F5        push    psw
2DEE  CD 8B 0B  call    $0B8B
2DF1  CD 6C 0C  call    $0C6C
2DF4  F1        pop     psw
2DF5  F5        push    psw
2DF6  CD A1 0B  call    $0BA1
2DF9  E1        pop     h
2DFA  E5        push    h
2DFB  7D        mov     a,l
2DFC  CD A1 0B  call    $0BA1
2DFF  CD 6C 0C  call    $0C6C
2E02  60        mov     h,b
2E03  69        mov     l,c
2E04  CD 8B 0B  call    $0B8B
2E07  CD 6C 0C  call    $0C6C
2E0A  62        mov     h,d
2E0B  6B        mov     l,e
2E0C  CD 8B 0B  call    $0B8B
2E0F  CD 6C 0C  call    $0C6C
2E12  2A 2A 0C  lhld    $0C2A
2E15  CD 8B 0B  call    $0B8B
2E18  CD 6C 0C  call    $0C6C
2E1B  21 00 00  lxi     h,$0000
2E1E  39        dad     sp
2E1F  CD 8B 0B  call    $0B8B
2E22  F1        pop     psw
2E23  2A 2A 0C  lhld    $0C2A
2E26  CD 65 0C  call    $0C65
2E29  C9        ret
2E2A  02        stax    b
2E2B  F5        push    psw
2E2C  3A 4C 0C  lda     $0C4C
2E2F  FE 53     cpi     'S'
2E31  CA 0D 09  jz      $090D
2E34  FE 43     cpi     'C'
2E36  CA 0D 09  jz      $090D
2E39  CD 1B 0B  call    $0B1B
2E3C  32 4C 0C  sta     $0C4C
2E3F  F5        push    psw
2E40  2F        cma
2E41  3C        inr     a
2E42  32 4D 0C  sta     $0C4D
2E45  F1        pop     psw
2E46  FE 03     cpi     $03
2E48  C2 0D 09  jnz     $090D
2E4B  C7        rst     0
2E4C  00        nop
2E4D  00        nop
2E4E  F5        push    psw
2E4F  3A 4C 0C  lda     $0C4C
2E52  FE 53     cpi     'S'
2E54  CA 0D 09  jz      $090D
2E57  CD 4E 0B  call    $0B4E
2E5A  07        rlc
2E5B  00        nop
2E5C  F1        pop     psw
2E5D  C9        ret
2E5E  CD B2 0B  call    $0BB2
2E61  CD 2B 0C  call    $0C2B
2E64  C9        ret
2E65  CD 4E 0B  call    $0B4E
2E68  0D        dcr     c
2E69  0A        ldax    b
2E6A  00        nop
2E6B  C9        ret
2E6C  CD 4E 0B  call    $0B4E
2E6F  20        nop                  ;Note: Alternative opcode used
2E70  00        nop
2E71  C9        ret
2E72  00        nop
2E73  00        nop
2E74  00        nop
2E75  00        nop
2E76  00        nop
2E77  00        nop
2E78  00        nop
2E79  00        nop
2E7A  00        nop
2E7B  00        nop
2E7C  00        nop
2E7D  00        nop
2E7E  80        add     b
2E7F  0C        inr     c
2E80  44        mov     b,h
2E81  45        mov     b,l
2E82  46        mov     b,m
2E83  D5        push    d
2E84  16 00     mvi     d,$00
2E86  5F        mov     e,a
2E87  19        dad
2E88  7E        mov     a,m
2E89  D1        pop     d
2E8A  C9        ret
2E8B  F5        push    psw
2E8C  7C        mov     a,h
2E8D  CD A1 0B  call    $0BA1
2E90  7D        mov     a,l
2E91  CD A1 0B  call    $0BA1
2E94  F1        pop     psw
2E95  C9        ret
2E96  F5        push    psw
2E97  CD A1 0B  call    $0BA1
2E9A  3E 48     mvi     a,'H'
2E9C  CD 0E 0B  call    $0B0E
2E9F  F1        pop     psw
2EA0  C9        ret
2EA1  F5        push    psw
2EA2  0F        rrc
2EA3  0F        rrc
2EA4  0F        rrc
2EA5  0F        rrc
2EA6  CD 5F 0B  call    $0B5F
2EA9  0F        rrc
2EAA  0F        rrc
2EAB  0F        rrc
2EAC  0F        rrc
2EAD  CD 5F 0B  call    $0B5F
2EB0  F1        pop     psw
2EB1  C9        ret
2EB2  CD C3 0B  call    $0BC3
2EB5  CD 3C 0A  call    $0A3C
2EB8  08        nop                  ;Note: Alternative opcode used
2EB9  D9        ret                  ;Note: Alternative opcode used
2EBA  CD C3 0B  call    $0BC3
2EBD  CD 3C 0A  call    $0A3C
2EC0  08        nop                  ;Note: Alternative opcode used
2EC1  D9        ret                  ;Note: Alternative opcode used
2EC2  C9        ret
2EC3  22 2A 0C  shld    $0C2A
2EC6  CD 4E 0B  call    $0B4E
2EC9  0D        dcr     c
2ECA  0A        ldax    b
2ECB  E6 32     ani     $32
2ECD  0D        dcr     c
2ECE  3A 12 34  lda     $3412
2ED1  6E        mov     l,m
2ED2  3A E6 32  lda     $32E6
2ED5  0D        dcr     c
2ED6  3A 02 20  lda     $2002
2ED9  E6 32     ani     $32
2EDB  0D        dcr     c
2EDC  3A 06 0A  lda     $0A06
2EDF  E6 32     ani     $32
2EE1  56        mov     d,m
2EE2  59        mov     e,c
2EE3  B4        ora     h
2EE4  36 57     mvi     m,'W'
2EE6  3F        cmc
2EE7  56        mov     d,m
2EE8  59        mov     e,c
2EE9  56        mov     d,m
2EEA  59        mov     e,c
2EEB  02        stax    b
2EEC  00        nop
2EED  E6 32     ani     $32
2EEF  0D        dcr     c
2EF0  3A 1A 3A  lda     $3A1A
2EF3  00        nop
2EF4  00        nop
2EF5  17        ral
2EF6  04        inr     b
2EF7  F7        rst     6
2EF8  00        nop
2EF9  43        mov     b,e
2EFA  3B        dcx     sp
2EFB  46        mov     b,m
2EFC  00        nop
2EFD  7E        mov     a,m
2EFE  32 CD F3  sta     $F3CD
2F01  31 FF 2F  lxi     sp,$2FFF
2F04  CD 4F 21  call    $214F
2F07  CD 4E 0B  call    $0B4E
2F0A  0D        dcr     c
2F0B  0A        ldax    b
2F0C  44        mov     b,h
2F0D  49        mov     c,c
2F0E  41        mov     b,c
2F0F  47        mov     b,a
2F10  4E        mov     c,m
2F11  4F        mov     c,a
2F12  53        mov     d,e
2F13  54        mov     d,h
2F14  49        mov     c,c
2F15  43        mov     b,e
2F16  53        mov     d,e
2F17  20        nop                  ;Note: Alternative opcode used
2F18  49        mov     c,c
2F19  49        mov     c,c
2F1A  20        nop                  ;Note: Alternative opcode used
2F1B  56        mov     d,m
2F1C  31 2E 32  lxi     sp,$322E
2F1F  20        nop                  ;Note: Alternative opcode used
2F20  2D        dcr     l
2F21  20        nop                  ;Note: Alternative opcode used
2F22  43        mov     b,e
2F23  50        mov     d,b
2F24  55        mov     d,l
2F25  20        nop                  ;Note: Alternative opcode used
2F26  54        mov     d,h
2F27  45        mov     b,l
2F28  53        mov     d,e
2F29  54        mov     d,h
2F2A  0D        dcr     c
2F2B  0A        ldax    b
2F2C  43        mov     b,e
2F2D  4F        mov     c,a
2F2E  50        mov     d,b
2F2F  59        mov     e,c
2F30  52        mov     d,d
2F31  49        mov     c,c
2F32  47        mov     b,a
2F33  48        mov     c,b
2F34  54        mov     d,h
2F35  20        nop                  ;Note: Alternative opcode used
2F36  28        nop                  ;Note: Alternative opcode used
2F37  43        mov     b,e
2F38  29        dad     h
2F39  20        nop                  ;Note: Alternative opcode used
2F3A  31 39 38  lxi     sp,$3839
2F3D  31 20 2D  lxi     sp,$2D20
2F40  20        nop                  ;Note: Alternative opcode used
2F41  53        mov     d,e
2F42  55        mov     d,l
2F43  50        mov     d,b
2F44  45        mov     b,l
2F45  52        mov     d,d
2F46  53        mov     d,e
2F47  4F        mov     c,a
2F48  46        mov     b,m
2F49  54        mov     d,h
2F4A  20        nop                  ;Note: Alternative opcode used
2F4B  41        mov     b,c
2F4C  53        mov     d,e
2F4D  53        mov     d,e
2F4E  4F        mov     c,a
2F4F  43        mov     b,e
2F50  49        mov     c,c
2F51  41        mov     b,c
2F52  54        mov     d,h
2F53  45        mov     b,l
2F54  53        mov     d,e
2F55  0D        dcr     c
2F56  0A        ldax    b
2F57  0A        ldax    b
2F58  00        nop
2F59  C3 64 30  jmp     $3064
2F5C  41        mov     b,c
2F5D  54        mov     d,h
2F5E  45        mov     b,l
2F5F  53        mov     d,e
2F60  0D        dcr     c
2F61  0A        ldax    b
2F62  0A        ldax    b
2F63  00        nop
2F64  CD 06 38  call    $3806
2F67  C3 84 30  jmp     $3084
2F6A  21 6F 3B  lxi     h,$3B6F
2F6D  CD 45 3A  call    $3A45
2F70  44        mov     b,h
2F71  42        mov     b,d
2F72  46        mov     b,m
2F73  4C        mov     c,h
2F74  41        mov     b,c
2F75  47        mov     b,a
2F76  20        nop                  ;Note: Alternative opcode used
2F77  49        mov     c,c
2F78  53        mov     d,e
2F79  20        nop                  ;Note: Alternative opcode used
2F7A  41        mov     b,c
2F7B  54        mov     d,h
2F7C  20        nop                  ;Note: Alternative opcode used
2F7D  00        nop
2F7E  CD 82 3A  call    $3A82
2F81  CD 5C 3B  call    $3B5C
2F84  1E 41     mvi     e,'A'
2F86  0E 02     mvi     c,$02
2F88  CD 05 00  call    $0005
2F8B  1E 42     mvi     e,'B'
2F8D  CD DD 32  call    $32DD
2F90  1E 43     mvi     e,'C'
2F92  CD E1 32  call    $32E1
2F95  3A 6C 3B  lda     $3B6C
2F98  B7        ora     a
2F99  C2 A2 30  jnz     $30A2
2F9C  CD 5E 39  call    $395E
2F9F  C3 A7 30  jmp     $30A7
2FA2  CD 45 3A  call    $3A45
2FA5  44        mov     b,h
2FA6  00        nop
2FA7  3E 45     mvi     a,'E'
2FA9  0E 16     mvi     c,$16
2FAB  CD 05 3A  call    $3A05
2FAE  3C        inr     a
2FAF  0D        dcr     c
2FB0  C2 AB 30  jnz     $30AB
2FB3  C3 C1 30  jmp     $30C1
2FB6  51        mov     d,c
2FB7  52        mov     d,d
2FB8  53        mov     d,e
2FB9  54        mov     d,h
2FBA  55        mov     d,l
2FBB  56        mov     d,m
2FBC  57        mov     d,a
2FBD  58        mov     e,b
2FBE  59        mov     e,c
2FBF  5A        mov     e,d
2FC0  00        nop
2FC1  3E 02     mvi     a,$02
2FC3  3C        inr     a
2FC4  EA CC 30  jpe     $30CC
2FC7  3E 01     mvi     a,$01
2FC9  C3 CD 30  jmp     $30CD
2FCC  AF        xra     a
2FCD  32 69 3B  sta     $3B69
2FD0  CD 06 38  call    $3806
2FD3  C3 22 31  jmp     $3122
2FD6  32 6A 3B  sta     $3B6A
2FD9  B7        ora     a
2FDA  C2 22 31  jnz     $3122
2FDD  CD 45 3A  call    $3A45
2FE0  0D        dcr     c
2FE1  0A        ldax    b
2FE2  54        mov     d,h
2FE3  55        mov     d,l
2FE4  52        mov     d,d
2FE5  4B        mov     c,e
2FE6  45        mov     b,l
2FE7  59        mov     e,c
2FE8  2D        dcr     l
2FE9  2D        dcr     l
2FEA  47        mov     b,a
2FEB  4F        mov     c,a
2FEC  20        nop                  ;Note: Alternative opcode used
2FED  46        mov     b,m
2FEE  49        mov     c,c
2FEF  4E        mov     c,m
2FF0  44        mov     b,h
2FF1  20        nop                  ;Note: Alternative opcode used
2FF2  41        mov     b,c
2FF3  20        nop                  ;Note: Alternative opcode used
2FF4  5A        mov     e,d
2FF5  38        nop                  ;Note: Alternative opcode used
2FF6  30        nop                  ;Note: Alternative opcode used
2FF7  21 20 20  lxi     h,$2020
2FFA  20        nop                  ;Note: Alternative opcode used
2FFB  4F        mov     c,a
2FFC  52        mov     d,d
2FFD  20        nop                  ;Note: Alternative opcode used
2FFE  49        mov     c,c
2FFF  20        nop                  ;Note: Alternative opcode used
3000  57        mov     d,a
3001  4F        mov     c,a
3002  4E        mov     c,m
3003  27        daa
3004  54        mov     d,h
3005  20        nop                  ;Note: Alternative opcode used
3006  54        mov     d,h
3007  45        mov     b,l
3008  53        mov     d,e
3009  54        mov     d,h
300A  20        nop                  ;Note: Alternative opcode used
300B  54        mov     d,h
300C  48        mov     c,b
300D  45        mov     b,l
300E  20        nop                  ;Note: Alternative opcode used
300F  52        mov     d,d
3010  45        mov     b,l
3011  46        mov     b,m
3012  52        mov     d,d
3013  45        mov     b,l
3014  53        mov     d,e
3015  48        mov     c,b
3016  20        nop                  ;Note: Alternative opcode used
3017  52        mov     d,d
3018  45        mov     b,l
3019  47        mov     b,a
301A  49        mov     c,c
301B  53        mov     d,e
301C  54        mov     d,h
301D  45        mov     b,l
301E  52        mov     d,d
301F  0D        dcr     c
3020  0A        ldax    b
3021  00        nop
3022  CD F5 37  call    $37F5
3025  C3 2F 31  jmp     $312F
3028  AF        xra     a
3029  CD 14 38  call    $3814
302C  32 69 3B  sta     $3B69
302F  CD 45 3A  call    $3A45
3032  0D        dcr     c
3033  0A        ldax    b
3034  43        mov     b,e
3035  50        mov     d,b
3036  55        mov     d,l
3037  20        nop                  ;Note: Alternative opcode used
3038  49        mov     c,c
3039  53        mov     d,e
303A  20        nop                  ;Note: Alternative opcode used
303B  00        nop
303C  3A 69 3B  lda     $3B69
303F  B7        ora     a
3040  CA 77 31  jz      $3177
3043  CD 45 3A  call    $3A45
3046  5A        mov     e,d
3047  38        nop                  ;Note: Alternative opcode used
3048  30        nop                  ;Note: Alternative opcode used
3049  00        nop
304A  3A 6A 3B  lda     $3B6A
304D  B7        ora     a
304E  C2 84 31  jnz     $3184
3051  CD 45 3A  call    $3A45
3054  20        nop                  ;Note: Alternative opcode used
3055  28        nop                  ;Note: Alternative opcode used
3056  52        mov     d,d
3057  45        mov     b,l
3058  46        mov     b,m
3059  52        mov     d,d
305A  45        mov     b,l
305B  53        mov     d,e
305C  48        mov     c,b
305D  20        nop                  ;Note: Alternative opcode used
305E  52        mov     d,d
305F  45        mov     b,l
3060  47        mov     b,a
3061  49        mov     c,c
3062  53        mov     d,e
3063  54        mov     d,h
3064  45        mov     b,l
3065  52        mov     d,d
3066  20        nop                  ;Note: Alternative opcode used
3067  4E        mov     c,m
3068  4F        mov     c,a
3069  54        mov     d,h
306A  20        nop                  ;Note: Alternative opcode used
306B  43        mov     b,e
306C  48        mov     c,b
306D  45        mov     b,l
306E  43        mov     b,e
306F  4B        mov     c,e
3070  45        mov     b,l
3071  44        mov     b,h
3072  29        dad     h
3073  00        nop
3074  C3 84 31  jmp     $3184
3077  CD 45 3A  call    $3A45
307A  38        nop                  ;Note: Alternative opcode used
307B  30        nop                  ;Note: Alternative opcode used
307C  38        nop                  ;Note: Alternative opcode used
307D  30        nop                  ;Note: Alternative opcode used
307E  2F        cma
307F  38        nop                  ;Note: Alternative opcode used
3080  30        nop                  ;Note: Alternative opcode used
3081  38        nop                  ;Note: Alternative opcode used
3082  35        dcr     m
3083  00        nop
3084  AF        xra     a
3085  01 01 00  lxi     b,$0001
3088  CD 45 3A  call    $3A45
308B  0D        dcr     c
308C  0A        ldax    b
308D  42        mov     b,d
308E  45        mov     b,l
308F  47        mov     b,a
3090  49        mov     c,c
3091  4E        mov     c,m
3092  20        nop                  ;Note: Alternative opcode used
3093  54        mov     d,h
3094  49        mov     c,c
3095  4D        mov     c,l
3096  49        mov     c,c
3097  4E        mov     c,m
3098  47        mov     b,a
3099  20        nop                  ;Note: Alternative opcode used
309A  54        mov     d,h
309B  45        mov     b,l
309C  53        mov     d,e
309D  54        mov     d,h
309E  0D        dcr     c
309F  0A        ldax    b
30A0  00        nop
30A1  CD 45 3B  call    $3B45
30A4  CD F5 37  call    $37F5
30A7  C3 BC 31  jmp     $31BC
30AA  CD 14 38  call    $3814
30AD  C3 BC 31  jmp     $31BC
30B0  21 00 00  lxi     h,$0000
30B3  3C        inr     a
30B4  C2 B3 31  jnz     $31B3
30B7  09        dad     b
30B8  D2 B3 31  jnc     $31B3
30BB  EB        xchg
30BC  CD 45 3B  call    $3B45
30BF  CD 45 3A  call    $3A45
30C2  45        mov     b,l
30C3  4E        mov     c,m
30C4  44        mov     b,h
30C5  20        nop                  ;Note: Alternative opcode used
30C6  54        mov     d,h
30C7  49        mov     c,c
30C8  4D        mov     c,l
30C9  49        mov     c,c
30CA  4E        mov     c,m
30CB  47        mov     b,a
30CC  20        nop                  ;Note: Alternative opcode used
30CD  54        mov     d,h
30CE  45        mov     b,l
30CF  53        mov     d,e
30D0  54        mov     d,h
30D1  0D        dcr     c
30D2  0A        ldax    b
30D3  00        nop
30D4  CD E7 32  call    $32E7
30D7  CD 14 38  call    $3814
30DA  C3 E3 31  jmp     $31E3
30DD  CD 06 38  call    $3806
30E0  C3 4E 32  jmp     $324E
30E3  CD 45 3A  call    $3A45
30E6  54        mov     d,h
30E7  41        mov     b,c
30E8  42        mov     b,d
30E9  4C        mov     c,h
30EA  45        mov     b,l
30EB  20        nop                  ;Note: Alternative opcode used
30EC  45        mov     b,l
30ED  4E        mov     c,m
30EE  44        mov     b,h
30EF  20        nop                  ;Note: Alternative opcode used
30F0  00        nop
30F1  2A 75 3B  lhld    $3B75
30F4  CD 82 3A  call    $3A82
30F7  CD 45 3A  call    $3A45
30FA  0D        dcr     c
30FB  0A        ldax    b
30FC  54        mov     d,h
30FD  41        mov     b,c
30FE  42        mov     b,d
30FF  4C        mov     c,h
3100  45        mov     b,l
3101  20        nop                  ;Note: Alternative opcode used
3102  53        mov     d,e
3103  49        mov     c,c
3104  5A        mov     e,d
3105  45        mov     b,l
3106  20        nop                  ;Note: Alternative opcode used
3107  00        nop
3108  11 8D C4  lxi     d,$C48D
310B  19        dad
310C  CD 82 3A  call    $3A82
310F  CD 5C 3B  call    $3B5C
3112  C3 21 32  jmp     $3221
3115  2A 75 3B  lhld    $3B75
3118  2B        dcx     h
3119  36 01     mvi     m,$01
311B  2B        dcx     h
311C  36 01     mvi     m,$01
311E  2B        dcx     h
311F  36 01     mvi     m,$01
3121  CD 5E 39  call    $395E
3124  3A 6B 3B  lda     $3B6B
3127  21 6C 3B  lxi     h,$3B6C
312A  86        add     m
312B  57        mov     d,a
312C  3E 01     mvi     a,$01
312E  CD F5 37  call    $37F5
3131  32 6C 3B  sta     $3B6C
3134  32 6B 3B  sta     $3B6B
3137  3A 6B 3B  lda     $3B6B
313A  21 6C 3B  lxi     h,$3B6C
313D  86        add     m
313E  92        sub     d
313F  57        mov     d,a
3140  3A 70 3B  lda     $3B70
3143  92        sub     d
3144  32 70 3B  sta     $3B70
3147  CD 5C 3B  call    $3B5C
314A  C3 00 30  jmp     $3000
314D  C7        rst     0
314E  2A 71 3B  lhld    $3B71
3151  7C        mov     a,h
3152  B5        ora     l
3153  CA 69 32  jz      $3269
3156  CD 82 3A  call    $3A82
3159  CD 45 3A  call    $3A45
315C  20        nop                  ;Note: Alternative opcode used
315D  45        mov     b,l
315E  52        mov     d,d
315F  52        mov     d,d
3160  4F        mov     c,a
3161  52        mov     d,d
3162  53        mov     d,e
3163  0D        dcr     c
3164  0A        ldax    b
3165  00        nop
3166  C3 7B 32  jmp     $327B
3169  CD 45 3A  call    $3A45
316C  43        mov     b,e
316D  50        mov     d,b
316E  55        mov     d,l
316F  20        nop                  ;Note: Alternative opcode used
3170  54        mov     d,h
3171  45        mov     b,l
3172  53        mov     d,e
3173  54        mov     d,h
3174  53        mov     d,e
3175  20        nop                  ;Note: Alternative opcode used
3176  4F        mov     c,a
3177  4B        mov     c,e
3178  0D        dcr     c
3179  0A        ldax    b
317A  00        nop
317B  CD 22 3B  call    $3B22
317E  C3 84 30  jmp     $3084
3181  F5        push    psw
3182  CD 14 38  call    $3814
3185  C3 8E 32  jmp     $328E
3188  CD 06 38  call    $3806
318B  C3 AE 32  jmp     $32AE
318E  F1        pop     psw
318F  F5        push    psw
3190  D5        push    d
3191  57        mov     d,a
3192  3A 70 3B  lda     $3B70
3195  92        sub     d
3196  32 70 3B  sta     $3B70
3199  D1        pop     d
319A  F1        pop     psw
319B  F5        push    psw
319C  CD 45 3A  call    $3A45
319F  3C        inr     a
31A0  00        nop
31A1  CD 98 3A  call    $3A98
31A4  CD 45 3A  call    $3A45
31A7  3E 00     mvi     a,$00
31A9  CD 22 3B  call    $3B22
31AC  F1        pop     psw
31AD  C9        ret
31AE  CD 5C 3B  call    $3B5C
31B1  CD 45 3A  call    $3A45
31B4  43        mov     b,e
31B5  48        mov     c,b
31B6  45        mov     b,l
31B7  43        mov     b,e
31B8  4B        mov     c,e
31B9  53        mov     d,e
31BA  55        mov     d,l
31BB  4D        mov     c,l
31BC  20        nop                  ;Note: Alternative opcode used
31BD  45        mov     b,l
31BE  52        mov     d,d
31BF  52        mov     d,d
31C0  4F        mov     c,a
31C1  52        mov     d,d
31C2  2D        dcr     l
31C3  2D        dcr     l
31C4  4D        mov     c,l
31C5  45        mov     b,l
31C6  4D        mov     c,l
31C7  4F        mov     c,a
31C8  52        mov     d,d
31C9  59        mov     e,c
31CA  20        nop                  ;Note: Alternative opcode used
31CB  4D        mov     c,l
31CC  41        mov     b,c
31CD  59        mov     e,c
31CE  20        nop                  ;Note: Alternative opcode used
31CF  42        mov     b,d
31D0  45        mov     b,l
31D1  20        nop                  ;Note: Alternative opcode used
31D2  42        mov     b,d
31D3  41        mov     b,c
31D4  44        mov     b,h
31D5  3A 20 00  lda     $0020
31D8  F1        pop     psw
31D9  CD 98 3A  call    $3A98
31DC  C7        rst     0
31DD  CD E1 32  call    $32E1
31E0  C9        ret
31E1  0E 02     mvi     c,$02
31E3  CD BD 20  call    $20BD
31E6  C9        ret
31E7  21 05 3A  lxi     h,$3A05
31EA  CD B7 38  call    $38B7
31ED  CD 1A 35  call    $351A
31F0  21 77 3B  lxi     h,$3B77
31F3  22 75 3B  shld    $3B75
31F6  3E 00     mvi     a,$00
31F8  32 3E 33  sta     $333E
31FB  32 3F 33  sta     $333F
31FE  21 58 33  lxi     h,$3358
3201  16 01     mvi     d,$01
3203  7E        mov     a,m
3204  23        inx     h
3205  FE 00     cpi     $00
3207  C2 1B 33  jnz     $331B
320A  CD 0D 38  call    $380D
320D  CD F5 37  call    $37F5
3210  CD 5C 3B  call    $3B5C
3213  14        inr     d
3214  7A        mov     a,d
3215  FE 04     cpi     $04
3217  FA 03 33  jm      $3303
321A  C9        ret
321B  32 3D 33  sta     $333D
321E  7A        mov     a,d
321F  FE 02     cpi     $02
3221  FA 34 33  jm      $3334
3224  7E        mov     a,m
3225  23        inx     h
3226  32 3E 33  sta     $333E
3229  7A        mov     a,d
322A  FE 03     cpi     $03
322C  FA 34 33  jm      $3334
322F  7E        mov     a,m
3230  23        inx     h
3231  32 3F 33  sta     $333F
3234  D5        push    d
3235  E5        push    h
3236  F5        push    psw
3237  21 A1 39  lxi     h,$39A1
323A  CD B7 38  call    $38B7
323D  E4 56 33  cpo     $3356
3240  CD 22 35  call    $3522
3243  21 D3 39  lxi     h,$39D3
3246  CD B7 38  call    $38B7
3249  CD 1A 35  call    $351A
324C  F1        pop     psw
324D  E1        pop     h
324E  D1        pop     d
324F  C3 03 33  jmp     $3303
3252  0B        dcx     b
3253  C3 40 33  jmp     $3340
3256  03        inx     b
3257  C9        ret
3258  03        inx     b
3259  04        inr     b
325A  05        dcr     b
325B  07        rlc
325C  09        dad     b
325D  0B        dcx     b
325E  0C        inr     c
325F  0D        dcr     c
3260  0F        rrc
3261  13        inx     d
3262  14        inr     d
3263  15        dcr     d
3264  17        ral
3265  19        dad
3266  1B        dcx     d
3267  1C        inr     e
3268  1D        dcr     e
3269  1F        rar
326A  23        inx     h
326B  24        inr     h
326C  25        dcr     h
326D  27        daa
326E  29        dad     h
326F  2B        dcx     h
3270  2C        inr     l
3271  2D        dcr     l
3272  2F        cma
3273  37        stc
3274  39        dad     sp
3275  3C        inr     a
3276  3D        dcr     a
3277  3F        cmc
3278  40        mov     b,b
3279  41        mov     b,c
327A  42        mov     b,d
327B  43        mov     b,e
327C  44        mov     b,h
327D  45        mov     b,l
327E  47        mov     b,a
327F  48        mov     c,b
3280  49        mov     c,c
3281  4A        mov     c,d
3282  4B        mov     c,e
3283  4C        mov     c,h
3284  4D        mov     c,l
3285  4F        mov     c,a
3286  50        mov     d,b
3287  51        mov     d,c
3288  52        mov     d,d
3289  53        mov     d,e
328A  54        mov     d,h
328B  55        mov     d,l
328C  57        mov     d,a
328D  58        mov     e,b
328E  59        mov     e,c
328F  5A        mov     e,d
3290  5B        mov     e,e
3291  5C        mov     e,h
3292  5D        mov     e,l
3293  5F        mov     e,a
3294  60        mov     h,b
3295  61        mov     h,c
3296  62        mov     h,d
3297  63        mov     h,e
3298  64        mov     h,h
3299  65        mov     h,l
329A  67        mov     h,a
329B  68        mov     l,b
329C  69        mov     l,c
329D  6A        mov     l,d
329E  6B        mov     l,e
329F  6C        mov     l,h
32A0  6D        mov     l,l
32A1  6F        mov     l,a
32A2  78        mov     a,b
32A3  78        mov     a,b
32A4  79        mov     a,c
32A5  7A        mov     a,d
32A6  7B        mov     a,e
32A7  7C        mov     a,h
32A8  7D        mov     a,l
32A9  7F        mov     a,a
32AA  80        add     b
32AB  81        add     c
32AC  82        add     d
32AD  83        add     e
32AE  84        add     h
32AF  85        add     l
32B0  87        add     a
32B1  88        adc     b
32B2  89        adc     c
32B3  8A        adc     d
32B4  8B        adc     e
32B5  8C        adc     h
32B6  8D        adc     l
32B7  90        sub     b
32B8  91        sub     c
32B9  92        sub     d
32BA  93        sub     e
32BB  94        sub     h
32BC  95        sub     l
32BD  97        sub     a
32BE  A0        ana     b
32BF  A1        ana     c
32C0  A2        ana     d
32C1  A3        ana     e
32C2  A4        ana     h
32C3  A5        ana     l
32C4  A7        ana     a
32C5  A8        xra     b
32C6  A9        xra     c
32C7  AA        xra     d
32C8  AB        xra     e
32C9  AC        xra     h
32CA  AD        xra     l
32CB  AF        xra     a
32CC  B0        ora     b
32CD  B1        ora     c
32CE  B2        ora     d
32CF  B3        ora     e
32D0  B4        ora     h
32D1  B5        ora     l
32D2  B7        ora     a
32D3  B8        cmp     b
32D4  B9        cmp     c
32D5  BA        cmp     d
32D6  BB        cmp     e
32D7  BC        cmp     h
32D8  BD        cmp     l
32D9  BF        cmp     a
32DA  EB        xchg
32DB  F3        di
32DC  00        nop
32DD  06 02     mvi     b,$02
32DF  0E 03     mvi     c,$03
32E1  16 04     mvi     d,$04
32E3  1E 05     mvi     e,$05
32E5  26 06     mvi     h,$06
32E7  2E 07     mvi     l,$07
32E9  3E 09     mvi     a,$09
32EB  C6 0A     adi     $0A
32ED  CE 0B     aci     $0B
32EF  D6 0C     sui     $0C
32F1  DE 0D     sbi     $0D
32F3  E6 0E     ani     $0E
32F5  EE 0F     xri     $0F
32F7  F6 10     ori     $10
32F9  FE 11     cpi     $11
32FB  26 63     mvi     h,'c'
32FD  E5        push    h
32FE  C1        pop     b
32FF  06 58     mvi     b,'X'
3301  C5        push    b
3302  D1        pop     d
3303  F5        push    psw
3304  E1        pop     h
3305  33        inx     sp
3306  3B        dcx     sp
3307  00        nop
3308  01 6D 3B  lxi     b,$3B6D
330B  11 13 00  lxi     d,$0013
330E  21 14 00  lxi     h,$0014
3311  22 6D 3B  shld    $3B6D
3314  2A 14 34  lhld    $3414
3317  2A 6D 3B  lhld    $3B6D
331A  32 6D 3B  sta     $3B6D
331D  3A 1D 34  lda     $341D
3320  3A 6D 3B  lda     $3B6D
3323  11 6D 3B  lxi     d,$3B6D
3326  3E 4D     mvi     a,'M'
3328  12        stax    d
3329  3E 42     mvi     a,'B'
332B  02        stax    b
332C  3C        inr     a
332D  0A        ldax    b
332E  40        mov     b,b
332F  03        inx     b
3330  0A        ldax    b
3331  40        mov     b,b
3332  D5        push    d
3333  E3        xthl
3334  C1        pop     b
3335  21 6D 3B  lxi     h,$3B6D
3338  77        mov     m,a
3339  46        mov     b,m
333A  04        inr     b
333B  70        mov     m,b
333C  4E        mov     c,m
333D  0C        inr     c
333E  71        mov     m,c
333F  56        mov     d,m
3340  14        inr     d
3341  73        mov     m,e
3342  7E        mov     a,m
3343  3C        inr     a
3344  77        mov     m,a
3345  54        mov     d,h
3346  66        mov     h,m
3347  62        mov     h,d
3348  55        mov     d,l
3349  6E        mov     l,m
334A  6A        mov     l,d
334B  86        add     m
334C  70        mov     m,b
334D  86        add     m
334E  70        mov     m,b
334F  40        mov     b,b
3350  8E        adc     m
3351  70        mov     m,b
3352  40        mov     b,b
3353  96        sub     m
3354  70        mov     m,b
3355  40        mov     b,b
3356  A6        ana     m
3357  70        mov     m,b
3358  40        mov     b,b
3359  AE        xra     m
335A  70        mov     m,b
335B  40        mov     b,b
335C  B6        ora     m
335D  70        mov     m,b
335E  40        mov     b,b
335F  BE        cmp     m
3360  70        mov     m,b
3361  40        mov     b,b
3362  36 58     mvi     m,'X'
3364  40        mov     b,b
3365  21 52 33  lxi     h,$3352
3368  E9        pchl
3369  3C        inr     a
336A  04        inr     b
336B  11 FF FF  lxi     d,$FFFF
336E  D5        push    d
336F  F1        pop     psw
3370  7F        mov     a,a
3371  E5        push    h
3372  C9        ret
3373  1B        dcx     d
3374  E5        push    h
3375  C8        rz
3376  1B        dcx     d
3377  E5        push    h
3378  D8        rc
3379  1B        dcx     d
337A  E5        push    h
337B  F8        rm
337C  1B        dcx     d
337D  E5        push    h
337E  E8        rpe
337F  1B        dcx     d
3380  C0        rnz
3381  1B        dcx     d
3382  1B        dcx     d
3383  D0        rnc
3384  1B        dcx     d
3385  1B        dcx     d
3386  F0        rp
3387  1B        dcx     d
3388  1B        dcx     d
3389  E0        rpo
338A  1B        dcx     d
338B  1B        dcx     d
338C  C3 52 33  jmp     $3352
338F  CA 52 33  jz      $3352
3392  DA 52 33  jc      $3352
3395  FA 52 33  jm      $3352
3398  EA 52 33  jpe     $3352
339B  C2 52 33  jnz     $3352
339E  D2 52 33  jnc     $3352
33A1  F2 52 33  jp      $3352
33A4  E2 52 33  jpo     $3352
33A7  CD 56 33  call    $3356
33AA  CC 56 33  cz      $3356
33AD  DC 56 33  cc      $3356
33B0  FC 56 33  cm      $3356
33B3  EC 56 33  cpe     $3356
33B6  C4 56 33  cnz     $3356
33B9  D4 56 33  cnc     $3356
33BC  F4 56 33  cp      $3356
33BF  E4 56 33  cpo     $3356
33C2  11 00 00  lxi     d,$0000
33C5  D5        push    d
33C6  F1        pop     psw
33C7  7F        mov     a,a
33C8  E5        push    h
33C9  C9        ret
33CA  1B        dcx     d
33CB  C8        rz
33CC  1B        dcx     d
33CD  1B        dcx     d
33CE  D8        rc
33CF  1B        dcx     d
33D0  1B        dcx     d
33D1  F8        rm
33D2  1B        dcx     d
33D3  1B        dcx     d
33D4  E8        rpe
33D5  1B        dcx     d
33D6  1B        dcx     d
33D7  E5        push    h
33D8  C0        rnz
33D9  1B        dcx     d
33DA  E5        push    h
33DB  D0        rnc
33DC  1B        dcx     d
33DD  E5        push    h
33DE  F0        rp
33DF  1B        dcx     d
33E0  E5        push    h
33E1  E0        rpo
33E2  1B        dcx     d
33E3  C3 52 33  jmp     $3352
33E6  CA 52 33  jz      $3352
33E9  DA 52 33  jc      $3352
33EC  FA 52 33  jm      $3352
33EF  EA 52 33  jpe     $3352
33F2  C2 52 33  jnz     $3352
33F5  D2 52 33  jnc     $3352
33F8  F2 52 33  jp      $3352
33FB  E2 52 33  jpo     $3352
33FE  CD 56 33  call    $3356
3401  CC 56 33  cz      $3356
3404  DC 56 33  cc      $3356
3407  FC 56 33  cm      $3356
340A  EC 56 33  cpe     $3356
340D  C4 56 33  cnz     $3356
3410  D4 56 33  cnc     $3356
3413  F4 56 33  cp      $3356
3416  E4 56 33  cpo     $3356
3419  00        nop
341A  E5        push    h
341B  21 A1 39  lxi     h,$39A1
341E  CD 31 38  call    $3831
3421  C9        ret
3422  E5        push    h
3423  21 D3 39  lxi     h,$39D3
3426  CD 31 38  call    $3831
3429  E5        push    h
342A  D5        push    d
342B  F5        push    psw
342C  21 A1 39  lxi     h,$39A1
342F  11 D3 39  lxi     d,$39D3
3432  CD 0D 38  call    $380D
3435  CD F5 37  call    $37F5
3438  CD 1A 36  call    $361A
343B  CD 0D 38  call    $380D
343E  CD F5 37  call    $37F5
3441  CD 63 3B  call    $3B63
3444  CD 6C 35  call    $356C
3447  F1        pop     psw
3448  D1        pop     d
3449  E1        pop     h
344A  C9        ret
344B  F6 F7     ori     $F7
344D  01 59 57  lxi     b,$5759
3450  3F        cmc
3451  62        mov     h,d
3452  63        mov     h,e
3453  64        mov     h,h
3454  65        mov     h,l
3455  61        mov     h,c
3456  66        mov     h,m
3457  68        mov     l,b
3458  6C        mov     l,h
3459  42        mov     b,d
345A  43        mov     b,e
345B  44        mov     b,h
345C  45        mov     b,l
345D  41        mov     b,c
345E  46        mov     b,m
345F  48        mov     c,b
3460  4C        mov     c,h
3461  49        mov     c,c
3462  58        mov     e,b
3463  4A        mov     c,d
3464  59        mov     e,c
3465  73        mov     m,e
3466  70        mov     m,b
3467  56        mov     d,m
3468  52        mov     d,d
3469  24        inr     h
346A  24        inr     h
346B  24        inr     h
346C  C5        push    b
346D  0E FF     mvi     c,$FF
346F  E5        push    h
3470  2A 75 3B  lhld    $3B75
3473  22 4F 35  shld    $354F
3476  E1        pop     h
3477  AF        xra     a
3478  32 73 3B  sta     $3B73
347B  0C        inr     c
347C  79        mov     a,c
347D  FE 19     cpi     $19
347F  F2 CB 35  jp      $35CB
3482  2B        dcx     h
3483  7E        mov     a,m
3484  32 4B 35  sta     $354B
3487  EB        xchg
3488  2B        dcx     h
3489  46        mov     b,m
348A  F5        push    psw
348B  78        mov     a,b
348C  32 4C 35  sta     $354C
348F  F1        pop     psw
3490  EB        xchg
3491  B8        cmp     b
3492  CA 6F 35  jz      $356F
3495  3A 69 3B  lda     $3B69
3498  B7        ora     a
3499  C2 A2 35  jnz     $35A2
349C  79        mov     a,c
349D  FE 08     cpi     $08
349F  F2 E0 35  jp      $35E0
34A2  79        mov     a,c
34A3  FE 17     cpi     $17
34A5  F2 E0 35  jp      $35E0
34A8  79        mov     a,c
34A9  32 4D 35  sta     $354D
34AC  CD 94 36  call    $3694
34AF  CD 0D 38  call    $380D
34B2  CD F5 37  call    $37F5
34B5  CD 4A 36  call    $364A
34B8  3A 4C 35  lda     $354C
34BB  CD 94 36  call    $3694
34BE  3A 73 3B  lda     $3B73
34C1  B7        ora     a
34C2  CD 06 38  call    $3806
34C5  C4 BD 36  cnz     $36BD
34C8  C3 6F 35  jmp     $356F
34CB  3E 58     mvi     a,'X'
34CD  CD 94 36  call    $3694
34D0  3E 59     mvi     a,'Y'
34D2  CD 94 36  call    $3694
34D5  C1        pop     b
34D6  CD 0D 38  call    $380D
34D9  CD F5 37  call    $37F5
34DC  CD 5C 3B  call    $3B5C
34DF  C9        ret
34E0  CD F5 37  call    $37F5
34E3  C3 CB 35  jmp     $35CB
34E6  E5        push    h
34E7  2A 4F 35  lhld    $354F
34EA  22 75 3B  shld    $3B75
34ED  E1        pop     h
34EE  CD 0F 36  call    $360F
34F1  FE 58     cpi     'X'
34F3  CA FC 35  jz      $35FC
34F6  CD 0F 36  call    $360F
34F9  C3 E0 35  jmp     $35E0
34FC  CD 0F 36  call    $360F
34FF  FE 59     cpi     'Y'
3501  C2 E0 35  jnz     $35E0
3504  2A 75 3B  lhld    $3B75
3507  2B        dcx     h
3508  2B        dcx     h
3509  22 75 3B  shld    $3B75
350C  C3 CB 35  jmp     $35CB
350F  E5        push    h
3510  2A 75 3B  lhld    $3B75
3513  7E        mov     a,m
3514  23        inx     h
3515  22 75 3B  shld    $3B75
3518  E1        pop     h
3519  C9        ret
351A  3A 3D 33  lda     $333D
351D  CD 98 3A  call    $3A98
3520  3A 3E 33  lda     $333E
3523  CD 98 3A  call    $3A98
3526  3A 3F 33  lda     $333F
3529  CD 98 3A  call    $3A98
352C  C9        ret
352D  E5        push    h
352E  21 51 35  lxi     h,$3551
3531  CD 7A 3A  call    $3A7A
3534  FE 41     cpi     'A'
3536  FA 45 36  jm      $3645
3539  FE 5B     cpi     '['
353B  F2 45 36  jp      $3645
353E  F5        push    psw
353F  3E 5A     mvi     a,'Z'
3541  CD 05 3A  call    $3A05
3544  F1        pop     psw
3545  CD 05 3A  call    $3A05
3548  E1        pop     h
3549  C9        ret
354A  E5        push    h
354B  D5        push    d
354C  3A 4D 35  lda     $354D
354F  CD 98 3A  call    $3A98
3552  CD 45 3A  call    $3A45
3555  28        nop                  ;Note: Alternative opcode used
3556  00        nop
3557  CD 2D 36  call    $362D
355A  CD 45 3A  call    $3A45
355D  29        dad     h
355E  3A 00 3A  lda     $3A00
3561  4B        mov     c,e
3562  35        dcr     m
3563  CD 98 3A  call    $3A98
3566  CD 45 3A  call    $3A45
3569  2D        dcr     l
356A  3E 00     mvi     a,$00
356C  3A 4C 35  lda     $354C
356F  CD 98 3A  call    $3A98
3572  CD 45 3A  call    $3A45
3575  28        nop                  ;Note: Alternative opcode used
3576  00        nop
3577  2A 75 3B  lhld    $3B75
357A  23        inx     h
357B  7E        mov     a,m
357C  CD 98 3A  call    $3A98
357F  CD 45 3A  call    $3A45
3582  2E 00     mvi     l,$00
3584  3A 4E 35  lda     $354E
3587  CD 98 3A  call    $3A98
358A  CD 45 3A  call    $3A45
358D  29        dad     h
358E  2C        inr     l
358F  20        nop                  ;Note: Alternative opcode used
3590  00        nop
3591  D1        pop     d
3592  E1        pop     h
3593  C9        ret
3594  F5        push    psw
3595  E5        push    h
3596  2A 75 3B  lhld    $3B75
3599  F5        push    psw
359A  7E        mov     a,m
359B  32 4E 35  sta     $354E
359E  F1        pop     psw
359F  BE        cmp     m
35A0  CA AE 36  jz      $36AE
35A3  F5        push    psw
35A4  3A 6B 3B  lda     $3B6B
35A7  32 73 3B  sta     $3B73
35AA  F1        pop     psw
35AB  C3 AE 36  jmp     $36AE
35AE  CD F5 37  call    $37F5
35B1  CD BB 36  call    $36BB
35B4  23        inx     h
35B5  22 75 3B  shld    $3B75
35B8  E1        pop     h
35B9  F1        pop     psw
35BA  C9        ret
35BB  77        mov     m,a
35BC  C9        ret
35BD  CD 45 3A  call    $3A45
35C0  0D        dcr     c
35C1  0A        ldax    b
35C2  43        mov     b,e
35C3  50        mov     d,b
35C4  55        mov     d,l
35C5  20        nop                  ;Note: Alternative opcode used
35C6  46        mov     b,m
35C7  41        mov     b,c
35C8  49        mov     c,c
35C9  4C        mov     c,h
35CA  45        mov     b,l
35CB  44        mov     b,h
35CC  3A 20 00  lda     $0020
35CF  F5        push    psw
35D0  3E 01     mvi     a,$01
35D2  32 73 3B  sta     $3B73
35D5  F1        pop     psw
35D6  2A 71 3B  lhld    $3B71
35D9  23        inx     h
35DA  22 71 3B  shld    $3B71
35DD  CD 45 3A  call    $3A45
35E0  0D        dcr     c
35E1  0A        ldax    b
35E2  45        mov     b,l
35E3  52        mov     d,d
35E4  52        mov     d,d
35E5  4F        mov     c,a
35E6  52        mov     d,d
35E7  20        nop                  ;Note: Alternative opcode used
35E8  43        mov     b,e
35E9  4F        mov     c,a
35EA  55        mov     d,l
35EB  4E        mov     c,m
35EC  54        mov     d,h
35ED  20        nop                  ;Note: Alternative opcode used
35EE  00        nop
35EF  CD 82 3A  call    $3A82
35F2  CD 45 3A  call    $3A45
35F5  48        mov     c,b
35F6  0D        dcr     c
35F7  0A        ldax    b
35F8  00        nop
35F9  2A 75 3B  lhld    $3B75
35FC  F5        push    psw
35FD  CD 14 38  call    $3814
3600  CD 4A 36  call    $364A
3603  CD 45 3A  call    $3A45
3606  0D        dcr     c
3607  0A        ldax    b
3608  49        mov     c,c
3609  4E        mov     c,m
360A  53        mov     d,e
360B  54        mov     d,h
360C  52        mov     d,d
360D  55        mov     d,l
360E  43        mov     b,e
360F  54        mov     d,h
3610  49        mov     c,c
3611  4F        mov     c,a
3612  4E        mov     c,m
3613  20        nop                  ;Note: Alternative opcode used
3614  53        mov     d,e
3615  45        mov     b,l
3616  51        mov     d,c
3617  55        mov     d,l
3618  45        mov     b,l
3619  4E        mov     c,m
361A  43        mov     b,e
361B  45        mov     b,l
361C  20        nop                  ;Note: Alternative opcode used
361D  57        mov     d,a
361E  41        mov     b,c
361F  53        mov     d,e
3620  20        nop                  ;Note: Alternative opcode used
3621  00        nop
3622  CD 1A 36  call    $361A
3625  CD 45 3A  call    $3A45
3628  48        mov     c,b
3629  0D        dcr     c
362A  0A        ldax    b
362B  52        mov     d,d
362C  45        mov     b,l
362D  47        mov     b,a
362E  49        mov     c,c
362F  53        mov     d,e
3630  54        mov     d,h
3631  45        mov     b,l
3632  52        mov     d,d
3633  20        nop                  ;Note: Alternative opcode used
3634  00        nop
3635  3A 4D 35  lda     $354D
3638  CD 2D 36  call    $362D
363B  F1        pop     psw
363C  F5        push    psw
363D  CD 45 3A  call    $3A45
3640  20        nop                  ;Note: Alternative opcode used
3641  43        mov     b,e
3642  4F        mov     c,a
3643  4E        mov     c,m
3644  54        mov     d,h
3645  41        mov     b,c
3646  49        mov     c,c
3647  4E        mov     c,m
3648  53        mov     d,e
3649  20        nop                  ;Note: Alternative opcode used
364A  00        nop
364B  D5        push    d
364C  3A 4C 35  lda     $354C
364F  CD 8D 3A  call    $3A8D
3652  CD 45 3A  call    $3A45
3655  0D        dcr     c
3656  0A        ldax    b
3657  42        mov     b,d
3658  55        mov     d,l
3659  54        mov     d,h
365A  20        nop                  ;Note: Alternative opcode used
365B  53        mov     d,e
365C  48        mov     c,b
365D  4F        mov     c,a
365E  55        mov     d,l
365F  4C        mov     c,h
3660  44        mov     b,h
3661  20        nop                  ;Note: Alternative opcode used
3662  43        mov     b,e
3663  4F        mov     c,a
3664  4E        mov     c,m
3665  54        mov     d,h
3666  41        mov     b,c
3667  49        mov     c,c
3668  4E        mov     c,m
3669  20        nop                  ;Note: Alternative opcode used
366A  00        nop
366B  2B        dcx     h
366C  7E        mov     a,m
366D  23        inx     h
366E  CD 8D 3A  call    $3A8D
3671  CD 45 3A  call    $3A45
3674  0D        dcr     c
3675  0A        ldax    b
3676  52        mov     d,d
3677  45        mov     b,l
3678  47        mov     b,a
3679  49        mov     c,c
367A  53        mov     d,e
367B  54        mov     d,h
367C  45        mov     b,l
367D  52        mov     d,d
367E  20        nop                  ;Note: Alternative opcode used
367F  56        mov     d,m
3680  41        mov     b,c
3681  4C        mov     c,h
3682  55        mov     d,l
3683  45        mov     b,l
3684  20        nop                  ;Note: Alternative opcode used
3685  42        mov     b,d
3686  45        mov     b,l
3687  46        mov     b,m
3688  4F        mov     c,a
3689  52        mov     d,d
368A  45        mov     b,l
368B  20        nop                  ;Note: Alternative opcode used
368C  49        mov     c,c
368D  4E        mov     c,m
368E  53        mov     d,e
368F  54        mov     d,h
3690  52        mov     d,d
3691  55        mov     d,l
3692  43        mov     b,e
3693  54        mov     d,h
3694  49        mov     c,c
3695  4F        mov     c,a
3696  4E        mov     c,m
3697  20        nop                  ;Note: Alternative opcode used
3698  53        mov     d,e
3699  45        mov     b,l
369A  51        mov     d,c
369B  55        mov     d,l
369C  45        mov     b,l
369D  4E        mov     c,m
369E  43        mov     b,e
369F  45        mov     b,l
36A0  20        nop                  ;Note: Alternative opcode used
36A1  57        mov     d,a
36A2  41        mov     b,c
36A3  53        mov     d,e
36A4  20        nop                  ;Note: Alternative opcode used
36A5  00        nop
36A6  3A 4B 35  lda     $354B
36A9  CD 8D 3A  call    $3A8D
36AC  D1        pop     d
36AD  CD 45 3A  call    $3A45
36B0  0D        dcr     c
36B1  0A        ldax    b
36B2  54        mov     d,h
36B3  45        mov     b,l
36B4  53        mov     d,e
36B5  54        mov     d,h
36B6  20        nop                  ;Note: Alternative opcode used
36B7  4E        mov     c,m
36B8  55        mov     d,l
36B9  4D        mov     c,l
36BA  42        mov     b,d
36BB  45        mov     b,l
36BC  52        mov     d,d
36BD  20        nop                  ;Note: Alternative opcode used
36BE  00        nop
36BF  D5        push    d
36C0  11 8C C4  lxi     d,$C48C
36C3  19        dad
36C4  D1        pop     d
36C5  CD 63 3B  call    $3B63
36C8  CD 82 3A  call    $3A82
36CB  CD 45 3A  call    $3A45
36CE  48        mov     c,b
36CF  0D        dcr     c
36D0  0A        ldax    b
36D1  0A        ldax    b
36D2  00        nop
36D3  CD 22 3B  call    $3B22
36D6  F1        pop     psw
36D7  C9        ret
36D8  F5        push    psw
36D9  CD F5 37  call    $37F5
36DC  C3 04 38  jmp     $3804
36DF  F1        pop     psw
36E0  E3        xthl
36E1  F5        push    psw
36E2  23        inx     h
36E3  23        inx     h
36E4  23        inx     h
36E5  AF        xra     a
36E6  BE        cmp     m
36E7  23        inx     h
36E8  C2 E6 37  jnz     $37E6
36EB  F1        pop     psw
36EC  E3        xthl
36ED  C9        ret
36EE  CD F5 37  call    $37F5
36F1  CD 98 3A  call    $3A98
36F4  C9        ret
36F5  F5        push    psw
36F6  3A 6B 3B  lda     $3B6B
36F9  B7        ora     a
36FA  CA 04 38  jz      $3804
36FD  F1        pop     psw
36FE  E3        xthl
36FF  23        inx     h
3700  23        inx     h
3701  23        inx     h
3702  E3        xthl
3703  C9        ret
3704  F1        pop     psw
3705  C9        ret
3706  CD F5 37  call    $37F5
3709  C3 FE 37  jmp     $37FE
370C  C9        ret
370D  CD 14 38  call    $3814
3710  C3 FE 37  jmp     $37FE
3713  C9        ret
3714  F5        push    psw
3715  3A 6F 3B  lda     $3B6F
3718  FE 01     cpi     $01
371A  CA 04 38  jz      $3804
371D  F1        pop     psw
371E  C3 FE 37  jmp     $37FE
3721  CD A9 3A  call    $3AA9
3724  CD 22 3B  call    $3B22
3727  C9        ret
3728  F5        push    psw
3729  AF        xra     a
372A  3C        inr     a
372B  B7        ora     a
372C  C2 2A 38  jnz     $382A
372F  F1        pop     psw
3730  C9        ret
3731  22 B3 38  shld    $38B3
3734  E1        pop     h
3735  E3        xthl
3736  E5        push    h
3737  F5        push    psw
3738  2A B3 38  lhld    $38B3
373B  2B        dcx     h
373C  70        mov     m,b
373D  2B        dcx     h
373E  71        mov     m,c
373F  2B        dcx     h
3740  72        mov     m,d
3741  2B        dcx     h
3742  73        mov     m,e
3743  D1        pop     d
3744  2B        dcx     h
3745  72        mov     m,d
3746  2B        dcx     h
3747  73        mov     m,e
3748  EB        xchg
3749  E3        xthl
374A  EB        xchg
374B  2B        dcx     h
374C  72        mov     m,d
374D  2B        dcx     h
374E  73        mov     m,e
374F  EB        xchg
3750  E3        xthl
3751  EB        xchg
3752  E3        xthl
3753  CD 33 39  call    $3933
3756  08        nop                  ;Note: Alternative opcode used
3757  D9        ret                  ;Note: Alternative opcode used
3758  E3        xthl
3759  F5        push    psw
375A  2B        dcx     h
375B  70        mov     m,b
375C  2B        dcx     h
375D  71        mov     m,c
375E  2B        dcx     h
375F  72        mov     m,d
3760  2B        dcx     h
3761  73        mov     m,e
3762  D1        pop     d
3763  2B        dcx     h
3764  72        mov     m,d
3765  2B        dcx     h
3766  73        mov     m,e
3767  EB        xchg
3768  E3        xthl
3769  EB        xchg
376A  2B        dcx     h
376B  72        mov     m,d
376C  2B        dcx     h
376D  73        mov     m,e
376E  E5        push    h
376F  CD 33 39  call    $3933
3772  08        nop                  ;Note: Alternative opcode used
3773  D9        ret                  ;Note: Alternative opcode used
3774  E1        pop     h
3775  CD 33 39  call    $3933
3778  DD E5 CD  call    $CDE5        ;Note: Alternative opcode used
377B  28        nop                  ;Note: Alternative opcode used
377C  39        dad     sp
377D  E5        push    h
377E  00        nop
377F  D1        pop     d
3780  2B        dcx     h
3781  72        mov     m,d
3782  2B        dcx     h
3783  73        mov     m,e
3784  CD 33 39  call    $3933
3787  FD E5 CD  call    $CDE5        ;Note: Alternative opcode used
378A  28        nop                  ;Note: Alternative opcode used
378B  39        dad     sp
378C  E5        push    h
378D  00        nop
378E  D1        pop     d
378F  2B        dcx     h
3790  72        mov     m,d
3791  2B        dcx     h
3792  73        mov     m,e
3793  EB        xchg
3794  21 FE FF  lxi     h,$FFFE
3797  39        dad     sp
3798  EB        xchg
3799  2B        dcx     h
379A  72        mov     m,d
379B  2B        dcx     h
379C  73        mov     m,e
379D  CD 33 39  call    $3933
37A0  ED 57 2B  call    $2B57        ;Note: Alternative opcode used
37A3  77        mov     m,a
37A4  CD 33 39  call    $3933
37A7  ED 5F 2B  call    $2B5F        ;Note: Alternative opcode used
37AA  77        mov     m,a
37AB  E1        pop     h
37AC  2A B3 38  lhld    $38B3
37AF  CD B7 38  call    $38B7
37B2  C9        ret
37B3  A1        ana     c
37B4  39        dad     sp
37B5  00        nop
37B6  00        nop
37B7  2B        dcx     h
37B8  46        mov     b,m
37B9  2B        dcx     h
37BA  4E        mov     c,m
37BB  2B        dcx     h
37BC  56        mov     d,m
37BD  2B        dcx     h
37BE  5E        mov     e,m
37BF  D5        push    d
37C0  2B        dcx     h
37C1  56        mov     d,m
37C2  2B        dcx     h
37C3  5E        mov     e,m
37C4  D5        push    d
37C5  F1        pop     psw
37C6  2B        dcx     h
37C7  56        mov     d,m
37C8  2B        dcx     h
37C9  5E        mov     e,m
37CA  E3        xthl
37CB  EB        xchg
37CC  CD 28 39  call    $3928
37CF  33        inx     sp
37D0  33        inx     sp
37D1  CD 28 39  call    $3928
37D4  C9        ret
37D5  00        nop
37D6  CD 33 39  call    $3933
37D9  08        nop                  ;Note: Alternative opcode used
37DA  D9        ret                  ;Note: Alternative opcode used
37DB  E1        pop     h
37DC  2B        dcx     h
37DD  46        mov     b,m
37DE  2B        dcx     h
37DF  4E        mov     c,m
37E0  2B        dcx     h
37E1  56        mov     d,m
37E2  2B        dcx     h
37E3  5E        mov     e,m
37E4  D5        push    d
37E5  2B        dcx     h
37E6  56        mov     d,m
37E7  2B        dcx     h
37E8  5E        mov     e,m
37E9  D5        push    d
37EA  F1        pop     psw
37EB  2B        dcx     h
37EC  56        mov     d,m
37ED  2B        dcx     h
37EE  5E        mov     e,m
37EF  D5        push    d
37F0  2B        dcx     h
37F1  56        mov     d,m
37F2  2B        dcx     h
37F3  5E        mov     e,m
37F4  D5        push    d
37F5  CD 33 39  call    $3933
37F8  DD E1 CD  call    $CDE1        ;Note: Alternative opcode used
37FB  28        nop                  ;Note: Alternative opcode used
37FC  39        dad     sp
37FD  D1        pop     d
37FE  00        nop
37FF  2B        dcx     h
3800  56        mov     d,m
3801  2B        dcx     h
3802  5E        mov     e,m
3803  D5        push    d
3804  CD 33 39  call    $3933
3807  FD E1 CD  call    $CDE1        ;Note: Alternative opcode used
380A  28        nop                  ;Note: Alternative opcode used
380B  39        dad     sp
380C  D1        pop     d
380D  00        nop
380E  2B        dcx     h
380F  2B        dcx     h
3810  F5        push    psw
3811  2B        dcx     h
3812  7E        mov     a,m
3813  CD 33 39  call    $3933
3816  ED 47 2B  call    $2B47        ;Note: Alternative opcode used
3819  7E        mov     a,m
381A  CD 33 39  call    $3933
381D  ED 4F F1  call    $F14F        ;Note: Alternative opcode used
3820  E1        pop     h
3821  D1        pop     d
3822  CD 33 39  call    $3933
3825  08        nop                  ;Note: Alternative opcode used
3826  D9        ret                  ;Note: Alternative opcode used
3827  C9        ret
3828  F5        push    psw
3829  3A 69 3B  lda     $3B69
382C  B7        ora     a
382D  CA 04 38  jz      $3804
3830  C3 3B 39  jmp     $393B
3833  F5        push    psw
3834  3A 69 3B  lda     $3B69
3837  B7        ora     a
3838  C2 04 38  jnz     $3804
383B  F1        pop     psw
383C  E3        xthl
383D  23        inx     h
383E  23        inx     h
383F  E3        xthl
3840  C9        ret
3841  11 00 30  lxi     d,$3000
3844  2A 75 3B  lhld    $3B75
3847  CD 4B 39  call    $394B
384A  C9        ret
384B  C5        push    b
384C  7C        mov     a,h
384D  2F        cma
384E  47        mov     b,a
384F  7D        mov     a,l
3850  2F        cma
3851  4F        mov     c,a
3852  03        inx     b
3853  AF        xra     a
3854  62        mov     h,d
3855  6B        mov     l,e
3856  86        add     m
3857  09        dad     b
3858  13        inx     d
3859  D2 54 39  jnc     $3954
385C  C1        pop     b
385D  C9        ret
385E  CD 41 39  call    $3941
3861  B7        ora     a
3862  C4 81 32  cnz     $3281
3865  1E 44     mvi     e,'D'
3867  CD E1 32  call    $32E1
386A  C9        ret
386B  00        nop
386C  00        nop
386D  00        nop
386E  00        nop
386F  6F        mov     l,a
3870  39        dad     sp
3871  00        nop
3872  00        nop
3873  00        nop
3874  00        nop
3875  00        nop
3876  00        nop
3877  00        nop
3878  00        nop
3879  00        nop
387A  00        nop
387B  00        nop
387C  00        nop
387D  00        nop
387E  00        nop
387F  00        nop
3880  00        nop
3881  00        nop
3882  00        nop
3883  00        nop
3884  00        nop
3885  00        nop
3886  00        nop
3887  00        nop
3888  00        nop
3889  00        nop
388A  00        nop
388B  EF        rst     5
388C  2F        cma
388D  8F        adc     a
388E  39        dad     sp
388F  91        sub     c
3890  39        dad     sp
3891  52        mov     d,d
3892  33        inx     sp
3893  02        stax    b
3894  00        nop
3895  02        stax    b
3896  00        nop
3897  F7        rst     6
3898  00        nop
3899  52        mov     d,d
389A  33        inx     sp
389B  02        stax    b
389C  00        nop
389D  F8        rm
389E  FF        rst     7
389F  F7        rst     6
38A0  00        nop
38A1  A1        ana     c
38A2  39        dad     sp
38A3  00        nop
38A4  00        nop
38A5  00        nop
38A6  00        nop
38A7  00        nop
38A8  00        nop
38A9  00        nop
38AA  00        nop
38AB  00        nop
38AC  00        nop
38AD  00        nop
38AE  00        nop
38AF  00        nop
38B0  00        nop
38B1  00        nop
38B2  00        nop
38B3  00        nop
38B4  00        nop
38B5  00        nop
38B6  00        nop
38B7  00        nop
38B8  00        nop
38B9  00        nop
38BA  00        nop
38BB  00        nop
38BC  00        nop
38BD  EF        rst     5
38BE  2F        cma
38BF  C1        pop     b
38C0  39        dad     sp
38C1  C3 39 52  jmp     $5239
38C4  33        inx     sp
38C5  02        stax    b
38C6  00        nop
38C7  02        stax    b
38C8  00        nop
38C9  F7        rst     6
38CA  00        nop
38CB  52        mov     d,d
38CC  33        inx     sp
38CD  02        stax    b
38CE  00        nop
38CF  F8        rm
38D0  FF        rst     7
38D1  F7        rst     6
38D2  00        nop
38D3  D3 39     out     $39
38D5  01 00 02  lxi     b,$0200
38D8  00        nop
38D9  03        inx     b
38DA  00        nop
38DB  04        inr     b
38DC  00        nop
38DD  05        dcr     b
38DE  00        nop
38DF  06 00     mvi     b,$00
38E1  07        rlc
38E2  00        nop
38E3  08        nop                  ;Note: Alternative opcode used
38E4  00        nop
38E5  09        dad     b
38E6  00        nop
38E7  0A        ldax    b
38E8  00        nop
38E9  0B        dcx     b
38EA  00        nop
38EB  0C        inr     c
38EC  00        nop
38ED  0D        dcr     c
38EE  00        nop
38EF  0E 00     mvi     c,$00
38F1  0F        rrc
38F2  00        nop
38F3  10        nop                  ;Note: Alternative opcode used
38F4  00        nop
38F5  11 00 12  lxi     d,$1200
38F8  00        nop
38F9  13        inx     d
38FA  00        nop
38FB  14        inr     d
38FC  00        nop
38FD  15        dcr     d
38FE  00        nop
38FF  16 00     mvi     d,$00
3901  17        ral
3902  00        nop
3903  18        nop                  ;Note: Alternative opcode used
3904  00        nop
3905  C5        push    b
3906  D5        push    d
3907  E5        push    h
3908  F5        push    psw
3909  5F        mov     e,a
390A  CD E1 32  call    $32E1
390D  F1        pop     psw
390E  E1        pop     h
390F  D1        pop     d
3910  C1        pop     b
3911  C9        ret
3912  C5        push    b
3913  D5        push    d
3914  E5        push    h
3915  0E 01     mvi     c,$01
3917  CD 05 00  call    $0005
391A  E1        pop     h
391B  D1        pop     d
391C  C1        pop     b
391D  C9        ret
391E  E5        push    h
391F  C5        push    b
3920  D5        push    d
3921  F5        push    psw
3922  79        mov     a,c
3923  FE 02     cpi     $02
3925  C2 34 3A  jnz     $3A34
3928  7B        mov     a,e
3929  FE 0D     cpi     $0D
392B  CA 40 3A  jz      $3A40
392E  CD 33 00  call    $0033
3931  C3 40 3A  jmp     $3A40
3934  FE 01     cpi     $01
3936  C2 40 3A  jnz     $3A40
3939  CD 2B 00  call    $002B
393C  B7        ora     a
393D  CA 39 3A  jz      $3A39
3940  F1        pop     psw
3941  D1        pop     d
3942  C1        pop     b
3943  E1        pop     h
3944  C9        ret
3945  E3        xthl
3946  F5        push    psw
3947  7E        mov     a,m
3948  23        inx     h
3949  B7        ora     a
394A  C2 50 3A  jnz     $3A50
394D  F1        pop     psw
394E  E3        xthl
394F  C9        ret
3950  CD 05 3A  call    $3A05
3953  C3 47 3A  jmp     $3A47
3956  F5        push    psw
3957  E5        push    h
3958  D5        push    d
3959  E6 0F     ani     $0F
395B  21 6A 3A  lxi     h,$3A6A
395E  16 00     mvi     d,$00
3960  5F        mov     e,a
3961  19        dad
3962  7E        mov     a,m
3963  CD 05 3A  call    $3A05
3966  D1        pop     d
3967  E1        pop     h
3968  F1        pop     psw
3969  C9        ret
396A  30        nop                  ;Note: Alternative opcode used
396B  31 32 33  lxi     sp,$3332
396E  34        inr     m
396F  35        dcr     m
3970  36 37     mvi     m,$37
3972  38        nop                  ;Note: Alternative opcode used
3973  39        dad     sp
3974  41        mov     b,c
3975  42        mov     b,d
3976  43        mov     b,e
3977  44        mov     b,h
3978  45        mov     b,l
3979  46        mov     b,m
397A  D5        push    d
397B  16 00     mvi     d,$00
397D  5F        mov     e,a
397E  19        dad
397F  7E        mov     a,m
3980  D1        pop     d
3981  C9        ret
3982  F5        push    psw
3983  7C        mov     a,h
3984  CD 98 3A  call    $3A98
3987  7D        mov     a,l
3988  CD 98 3A  call    $3A98
398B  F1        pop     psw
398C  C9        ret
398D  F5        push    psw
398E  CD 98 3A  call    $3A98
3991  3E 48     mvi     a,'H'
3993  CD 05 3A  call    $3A05
3996  F1        pop     psw
3997  C9        ret
3998  F5        push    psw
3999  0F        rrc
399A  0F        rrc
399B  0F        rrc
399C  0F        rrc
399D  CD 56 3A  call    $3A56
39A0  0F        rrc
39A1  0F        rrc
39A2  0F        rrc
39A3  0F        rrc
39A4  CD 56 3A  call    $3A56
39A7  F1        pop     psw
39A8  C9        ret
39A9  CD BA 3A  call    $3ABA
39AC  CD 33 39  call    $3933
39AF  08        nop                  ;Note: Alternative opcode used
39B0  D9        ret                  ;Note: Alternative opcode used
39B1  CD BA 3A  call    $3ABA
39B4  CD 33 39  call    $3933
39B7  08        nop                  ;Note: Alternative opcode used
39B8  D9        ret                  ;Note: Alternative opcode used
39B9  C9        ret
39BA  22 21 3B  shld    $3B21
39BD  CD 45 3A  call    $3A45
39C0  0D        dcr     c
39C1  0A        ldax    b
39C2  20        nop                  ;Note: Alternative opcode used
39C3  50        mov     d,b
39C4  20        nop                  ;Note: Alternative opcode used
39C5  43        mov     b,e
39C6  20        nop                  ;Note: Alternative opcode used
39C7  20        nop                  ;Note: Alternative opcode used
39C8  41        mov     b,c
39C9  20        nop                  ;Note: Alternative opcode used
39CA  46        mov     b,m
39CB  20        nop                  ;Note: Alternative opcode used
39CC  20        nop                  ;Note: Alternative opcode used
39CD  42        mov     b,d
39CE  20        nop                  ;Note: Alternative opcode used
39CF  43        mov     b,e
39D0  20        nop                  ;Note: Alternative opcode used
39D1  20        nop                  ;Note: Alternative opcode used
39D2  44        mov     b,h
39D3  20        nop                  ;Note: Alternative opcode used
39D4  45        mov     b,l
39D5  20        nop                  ;Note: Alternative opcode used
39D6  20        nop                  ;Note: Alternative opcode used
39D7  48        mov     c,b
39D8  20        nop                  ;Note: Alternative opcode used
39D9  4C        mov     c,h
39DA  20        nop                  ;Note: Alternative opcode used
39DB  20        nop                  ;Note: Alternative opcode used
39DC  53        mov     d,e
39DD  20        nop                  ;Note: Alternative opcode used
39DE  50        mov     d,b
39DF  0D        dcr     c
39E0  0A        ldax    b
39E1  00        nop
39E2  E1        pop     h
39E3  E5        push    h
39E4  F5        push    psw
39E5  CD 82 3A  call    $3A82
39E8  CD 63 3B  call    $3B63
39EB  F1        pop     psw
39EC  F5        push    psw
39ED  CD 98 3A  call    $3A98
39F0  E1        pop     h
39F1  E5        push    h
39F2  7D        mov     a,l
39F3  CD 98 3A  call    $3A98
39F6  CD 63 3B  call    $3B63
39F9  60        mov     h,b
39FA  69        mov     l,c
39FB  CD 82 3A  call    $3A82
39FE  CD 63 3B  call    $3B63
3A01  62        mov     h,d
3A02  6B        mov     l,e
3A03  CD 82 3A  call    $3A82
3A06  CD 63 3B  call    $3B63
3A09  2A 21 3B  lhld    $3B21
3A0C  CD 82 3A  call    $3A82
3A0F  CD 63 3B  call    $3B63
3A12  21 00 00  lxi     h,$0000
3A15  39        dad     sp
3A16  CD 82 3A  call    $3A82
3A19  F1        pop     psw
3A1A  2A 21 3B  lhld    $3B21
3A1D  CD 5C 3B  call    $3B5C
3A20  C9        ret
3A21  02        stax    b
3A22  CD F6 20  call    $20F6
3A25  C7        rst     0
3A26  20        nop                  ;Note: Alternative opcode used
3A27  C7        rst     0
3A28  CA 04 38  jz      $3804
3A2B  FE 43     cpi     'C'
3A2D  CA 04 38  jz      $3804
3A30  CD 12 3A  call    $3A12
3A33  32 43 3B  sta     $3B43
3A36  F5        push    psw
3A37  2F        cma
3A38  3C        inr     a
3A39  32 44 3B  sta     $3B44
3A3C  F1        pop     psw
3A3D  FE 03     cpi     $03
3A3F  C2 04 38  jnz     $3804
3A42  C7        rst     0
3A43  03        inx     b
3A44  FD F5 3A  call    $3AF5        ;Note: Alternative opcode used
3A47  43        mov     b,e
3A48  3B        dcx     sp
3A49  FE 53     cpi     'S'
3A4B  CA 04 38  jz      $3804
3A4E  CD 45 3A  call    $3A45
3A51  07        rlc
3A52  00        nop
3A53  F1        pop     psw
3A54  C9        ret
3A55  CD A9 3A  call    $3AA9
3A58  CD 22 3B  call    $3B22
3A5B  C9        ret
3A5C  CD 45 3A  call    $3A45
3A5F  0D        dcr     c
3A60  0A        ldax    b
3A61  00        nop
3A62  C9        ret
3A63  CD 45 3A  call    $3A45
3A66  20        nop                  ;Note: Alternative opcode used
3A67  00        nop
3A68  C9        ret
3A69  00        nop
3A6A  00        nop
3A6B  01 01 58  lxi     b,$5801
3A6E  00        nop
3A6F  00        nop
3A70  98        sbb     b
3A71  00        nop
3A72  00        nop
3A73  00        nop
3A74  00        nop
3A75  59        mov     e,c
3A76  3F        cmc
3A77  01 19 58  lxi     b,$5819
3A7A  59        mov     e,c
3A7B  00        nop
3A7C  01 05 02  lxi     b,$0205
3A7F  58        mov     e,b
3A80  59        mov     e,c
3A81  00        nop
3A82  00        nop
3A83  05        dcr     b
3A84  56        mov     d,m
3A85  58        mov     e,b
3A86  59        mov     e,c
3A87  58        mov     e,b
3A88  59        mov     e,c
3A89  07        rlc
3A8A  2E 58     mvi     l,'X'
3A8C  59        mov     e,c
3A8D  01 18 58  lxi     b,$5818
3A90  59        mov     e,c
3A91  01 19 05  lxi     b,$0519
3A94  02        stax    b
3A95  58        mov     e,b
3A96  59        mov     e,c
3A97  01 18 05  lxi     b,$0518
3A9A  16 58     mvi     d,'X'
3A9C  59        mov     e,c
3A9D  58        mov     e,b
3A9E  59        mov     e,c
3A9F  03        inx     b
3AA0  18        nop                  ;Note: Alternative opcode used
3AA1  58        mov     e,b
3AA2  59        mov     e,c
3AA3  02        stax    b
3AA4  01 05 02  lxi     b,$0205
3AA7  58        mov     e,b
3AA8  59        mov     e,c
3AA9  02        stax    b
3AAA  00        nop
3AAB  05        dcr     b
3AAC  56        mov     d,m
3AAD  58        mov     e,b
3AAE  59        mov     e,c
3AAF  58        mov     e,b
3AB0  59        mov     e,c
3AB1  07        rlc
3AB2  46        mov     b,m
3AB3  58        mov     e,b
3AB4  59        mov     e,c
3AB5  03        inx     b
3AB6  17        ral
3AB7  58        mov     e,b
3AB8  59        mov     e,c
3AB9  03        inx     b
3ABA  18        nop                  ;Note: Alternative opcode used
3ABB  05        dcr     b
3ABC  06 58     mvi     b,'X'
3ABE  59        mov     e,c
3ABF  03        inx     b
3AC0  17        ral
3AC1  05        dcr     b
3AC2  16 58     mvi     d,'X'
3AC4  59        mov     e,c
3AC5  58        mov     e,b
3AC6  59        mov     e,c
3AC7  07        rlc
3AC8  47        mov     b,a
3AC9  58        mov     e,b
3ACA  59        mov     e,c
3ACB  05        dcr     b
3ACC  02        stax    b
3ACD  06 01     mvi     b,$01
3ACF  58        mov     e,b
3AD0  59        mov     e,c
3AD1  05        dcr     b
3AD2  56        mov     d,m
3AD3  06 00     mvi     b,$00
3AD5  58        mov     e,b
3AD6  59        mov     e,c
3AD7  04        inr     b
3AD8  06 05     mvi     b,$05
3ADA  06 58     mvi     b,'X'
3ADC  59        mov     e,c
3ADD  07        rlc
3ADE  8E        adc     m
3ADF  58        mov     e,b
3AE0  59        mov     e,c
3AE1  07        rlc
3AE2  8D        adc     l
3AE3  58        mov     e,b
3AE4  59        mov     e,c
3AE5  05        dcr     b
3AE6  86        add     m
3AE7  07        rlc
3AE8  8E        adc     m
3AE9  58        mov     e,b
3AEA  59        mov     e,c
3AEB  05        dcr     b
3AEC  96        sub     m
3AED  07        rlc
3AEE  8D        adc     l
3AEF  58        mov     e,b
3AF0  59        mov     e,c
3AF1  04        inr     b
3AF2  F9        sphl
3AF3  58        mov     e,b
3AF4  59        mov     e,c
3AF5  05        dcr     b
3AF6  97        sub     a
3AF7  58        mov     e,b
3AF8  59        mov     e,c
3AF9  05        dcr     b
3AFA  96        sub     m
3AFB  06 30     mvi     b,$30
3AFD  07        rlc
3AFE  84        add     h
3AFF  58        mov     e,b
3B00  59        mov     e,c
3B01  04        inr     b
3B02  FA 05 86  jm      $8605
3B05  58        mov     e,b
3B06  59        mov     e,c
3B07  04        inr     b
3B08  F9        sphl
3B09  05        dcr     b
3B0A  96        sub     m
3B0B  58        mov     e,b
3B0C  59        mov     e,c
3B0D  05        dcr     b
3B0E  97        sub     a
3B0F  58        mov     e,b
3B10  59        mov     e,c
3B11  58        mov     e,b
3B12  59        mov     e,c
3B13  00        nop
3B14  18        nop                  ;Note: Alternative opcode used
3B15  58        mov     e,b
3B16  59        mov     e,c
3B17  00        nop
3B18  00        nop
3B19  58        mov     e,b
3B1A  59        mov     e,c
3B1B  00        nop
3B1C  17        ral
3B1D  58        mov     e,b
3B1E  59        mov     e,c
3B1F  00        nop
3B20  30        nop                  ;Note: Alternative opcode used
3B21  58        mov     e,b
3B22  59        mov     e,c
3B23  00        nop
3B24  84        add     h
3B25  58        mov     e,b
3B26  59        mov     e,c
3B27  00        nop
3B28  F9        sphl
3B29  58        mov     e,b
3B2A  59        mov     e,c
3B2B  01 F9 58  lxi     b,$58F9
3B2E  59        mov     e,c
3B2F  58        mov     e,b
3B30  59        mov     e,c
3B31  01 00 58  lxi     b,$5800
3B34  59        mov     e,c
3B35  01 17 58  lxi     b,$5817
3B38  59        mov     e,c
3B39  01 30 58  lxi     b,$5830
3B3C  59        mov     e,c
3B3D  01 84 58  lxi     b,$5884
3B40  59        mov     e,c
3B41  01 F9 58  lxi     b,$58F9
3B44  59        mov     e,c
3B45  02        stax    b
3B46  F9        sphl
3B47  58        mov     e,b
3B48  59        mov     e,c
3B49  58        mov     e,b
3B4A  59        mov     e,c
3B4B  58        mov     e,b
3B4C  59        mov     e,c
3B4D  02        stax    b
3B4E  17        ral
3B4F  58        mov     e,b
3B50  59        mov     e,c
3B51  02        stax    b
3B52  30        nop                  ;Note: Alternative opcode used
3B53  58        mov     e,b
3B54  59        mov     e,c
3B55  02        stax    b
3B56  84        add     h
3B57  58        mov     e,b
3B58  59        mov     e,c
3B59  02        stax    b
3B5A  F9        sphl
3B5B  58        mov     e,b
3B5C  59        mov     e,c
3B5D  03        inx     b
3B5E  F9        sphl
3B5F  58        mov     e,b
3B60  59        mov     e,c
3B61  58        mov     e,b
3B62  59        mov     e,c
3B63  58        mov     e,b
3B64  59        mov     e,c
3B65  58        mov     e,b
3B66  59        mov     e,c
3B67  03        inx     b
3B68  30        nop                  ;Note: Alternative opcode used
3B69  58        mov     e,b
3B6A  59        mov     e,c
3B6B  03        inx     b
3B6C  84        add     h
3B6D  58        mov     e,b
3B6E  59        mov     e,c
3B6F  03        inx     b
3B70  F9        sphl
3B71  58        mov     e,b
3B72  59        mov     e,c
3B73  06 F9     mvi     b,$F9
3B75  58        mov     e,b
3B76  59        mov     e,c
3B77  58        mov     e,b
3B78  59        mov     e,c
3B79  58        mov     e,b
3B7A  59        mov     e,c
3B7B  58        mov     e,b
3B7C  59        mov     e,c
3B7D  58        mov     e,b
3B7E  59        mov     e,c
3B7F  06 84     mvi     b,$84
3B81  58        mov     e,b
3B82  59        mov     e,c
3B83  06 F9     mvi     b,$F9
3B85  58        mov     e,b
3B86  59        mov     e,c
3B87  07        rlc
3B88  F9        sphl
3B89  58        mov     e,b
3B8A  59        mov     e,c
3B8B  58        mov     e,b
3B8C  59        mov     e,c
3B8D  58        mov     e,b
3B8E  59        mov     e,c
3B8F  58        mov     e,b
3B90  59        mov     e,c
3B91  58        mov     e,b
3B92  59        mov     e,c
3B93  58        mov     e,b
3B94  59        mov     e,c
3B95  58        mov     e,b
3B96  59        mov     e,c
3B97  58        mov     e,b
3B98  59        mov     e,c
3B99  58        mov     e,b
3B9A  59        mov     e,c
3B9B  58        mov     e,b
3B9C  59        mov     e,c
3B9D  58        mov     e,b
3B9E  59        mov     e,c
3B9F  58        mov     e,b
3BA0  59        mov     e,c
3BA1  58        mov     e,b
3BA2  59        mov     e,c
3BA3  58        mov     e,b
3BA4  59        mov     e,c
3BA5  58        mov     e,b
3BA6  59        mov     e,c
3BA7  04        inr     b
3BA8  F2 05 93  jp      $9305
3BAB  58        mov     e,b
3BAC  59        mov     e,c
3BAD  04        inr     b
3BAE  EB        xchg
3BAF  05        dcr     b
3BB0  87        add     a
3BB1  58        mov     e,b
3BB2  59        mov     e,c
3BB3  04        inr     b
3BB4  E4 05 97  cpo     $9705
3BB7  58        mov     e,b
3BB8  59        mov     e,c
3BB9  04        inr     b
3BBA  DD 05 87  call    $8705        ;Note: Alternative opcode used
3BBD  58        mov     e,b
3BBE  59        mov     e,c
3BBF  04        inr     b
3BC0  D6 05     sui     $05
3BC2  93        sub     e
3BC3  58        mov     e,b
3BC4  59        mov     e,c
3BC5  04        inr     b
3BC6  CF        rst     1
3BC7  05        dcr     b
3BC8  87        add     a
3BC9  58        mov     e,b
3BCA  59        mov     e,c
3BCB  04        inr     b
3BCC  9E        sbb     m
3BCD  05        dcr     b
3BCE  93        sub     e
3BCF  58        mov     e,b
3BD0  59        mov     e,c
3BD1  04        inr     b
3BD2  98        sbb     b
3BD3  58        mov     e,b
3BD4  59        mov     e,c
3BD5  04        inr     b
3BD6  92        sub     d
3BD7  58        mov     e,b
3BD8  59        mov     e,c
3BD9  04        inr     b
3BDA  8C        adc     h
3BDB  05        dcr     b
3BDC  83        add     e
3BDD  58        mov     e,b
3BDE  59        mov     e,c
3BDF  04        inr     b
3BE0  86        add     m
3BE1  05        dcr     b
3BE2  93        sub     e
3BE3  58        mov     e,b
3BE4  59        mov     e,c
3BE5  04        inr     b
3BE6  80        add     b
3BE7  58        mov     e,b
3BE8  59        mov     e,c
3BE9  04        inr     b
3BEA  7A        mov     a,d
3BEB  05        dcr     b
3BEC  03        inx     b
3BED  58        mov     e,b
3BEE  59        mov     e,c
3BEF  04        inr     b
3BF0  81        add     c
3BF1  05        dcr     b
3BF2  97        sub     a
3BF3  58        mov     e,b
3BF4  59        mov     e,c
3BF5  04        inr     b
3BF6  88        adc     b
3BF7  05        dcr     b
3BF8  87        add     a
3BF9  58        mov     e,b
3BFA  59        mov     e,c
3BFB  04        inr     b
3BFC  8F        adc     a
3BFD  05        dcr     b
3BFE  83        add     e
3BFF  58        mov     e,b
3C00  59        mov     e,c
3C01  04        inr     b
3C02  96        sub     m
3C03  05        dcr     b
3C04  97        sub     a
3C05  58        mov     e,b
3C06  59        mov     e,c
3C07  04        inr     b
3C08  9D        sbb     l
3C09  05        dcr     b
3C0A  83        add     e
3C0B  58        mov     e,b
3C0C  59        mov     e,c
3C0D  04        inr     b
3C0E  A4        ana     h
3C0F  05        dcr     b
3C10  93        sub     e
3C11  58        mov     e,b
3C12  59        mov     e,c
3C13  04        inr     b
3C14  00        nop
3C15  05        dcr     b
3C16  56        mov     d,m
3C17  58        mov     e,b
3C18  59        mov     e,c
3C19  58        mov     e,b
3C1A  59        mov     e,c
3C1B  58        mov     e,b
3C1C  59        mov     e,c
3C1D  58        mov     e,b
3C1E  59        mov     e,c
3C1F  58        mov     e,b
3C20  59        mov     e,c
3C21  58        mov     e,b
3C22  59        mov     e,c
3C23  58        mov     e,b
3C24  59        mov     e,c
3C25  05        dcr     b
3C26  46        mov     b,m
3C27  58        mov     e,b
3C28  59        mov     e,c
3C29  04        inr     b
3C2A  F9        sphl
3C2B  05        dcr     b
3C2C  86        add     m
3C2D  58        mov     e,b
3C2E  59        mov     e,c
3C2F  04        inr     b
3C30  00        nop
3C31  05        dcr     b
3C32  46        mov     b,m
3C33  58        mov     e,b
3C34  59        mov     e,c
3C35  04        inr     b
3C36  F9        sphl
3C37  05        dcr     b
3C38  86        add     m
3C39  58        mov     e,b
3C3A  59        mov     e,c
3C3B  04        inr     b
3C3C  00        nop
3C3D  05        dcr     b
3C3E  46        mov     b,m
3C3F  58        mov     e,b
3C40  59        mov     e,c
3C41  04        inr     b
3C42  F9        sphl
3C43  05        dcr     b
3C44  86        add     m
3C45  58        mov     e,b
3C46  59        mov     e,c
3C47  04        inr     b
3C48  00        nop
3C49  05        dcr     b
3C4A  46        mov     b,m
3C4B  58        mov     e,b
3C4C  59        mov     e,c
3C4D  58        mov     e,b
3C4E  59        mov     e,c
3C4F  04        inr     b
3C50  F9        sphl
3C51  05        dcr     b
3C52  86        add     m
3C53  58        mov     e,b
3C54  59        mov     e,c
3C55  58        mov     e,b
3C56  59        mov     e,c
3C57  58        mov     e,b
3C58  59        mov     e,c
3C59  58        mov     e,b
3C5A  59        mov     e,c
3C5B  58        mov     e,b
3C5C  59        mov     e,c
3C5D  58        mov     e,b
3C5E  59        mov     e,c
3C5F  58        mov     e,b
3C60  59        mov     e,c
3C61  05        dcr     b
3C62  56        mov     d,m
3C63  58        mov     e,b
3C64  59        mov     e,c
3C65  58        mov     e,b
3C66  59        mov     e,c
3C67  58        mov     e,b
3C68  59        mov     e,c
3C69  58        mov     e,b
3C6A  59        mov     e,c
3C6B  58        mov     e,b
3C6C  59        mov     e,c
3C6D  58        mov     e,b
3C6E  59        mov     e,c
3C6F  58        mov     e,b
3C70  59        mov     e,c
3C71  58        mov     e,b
3C72  59        mov     e,c
3C73  58        mov     e,b
3C74  59        mov     e,c
3C75  00        nop
3C76  02        stax    b
3C77  58        mov     e,b
3C78  59        mov     e,c
3C79  01 03 58  lxi     b,$5803
3C7C  59        mov     e,c
3C7D  02        stax    b
3C7E  04        inr     b
3C7F  58        mov     e,b
3C80  59        mov     e,c
3C81  03        inx     b
3C82  05        dcr     b
3C83  58        mov     e,b
3C84  59        mov     e,c
3C85  06 06     mvi     b,$06
3C87  58        mov     e,b
3C88  59        mov     e,c
3C89  07        rlc
3C8A  07        rlc
3C8B  58        mov     e,b
3C8C  59        mov     e,c
3C8D  04        inr     b
3C8E  09        dad     b
3C8F  58        mov     e,b
3C90  59        mov     e,c
3C91  04        inr     b
3C92  13        inx     d
3C93  05        dcr     b
3C94  12        stax    d
3C95  58        mov     e,b
3C96  59        mov     e,c
3C97  04        inr     b
3C98  1E 05     mvi     e,$05
3C9A  06 58     mvi     b,'X'
3C9C  59        mov     e,c
3C9D  04        inr     b
3C9E  12        stax    d
3C9F  05        dcr     b
3CA0  16 58     mvi     d,'X'
3CA2  59        mov     e,c
3CA3  04        inr     b
3CA4  05        dcr     b
3CA5  05        dcr     b
3CA6  06 58     mvi     b,'X'
3CA8  59        mov     e,c
3CA9  04        inr     b
3CAA  04        inr     b
3CAB  05        dcr     b
3CAC  12        stax    d
3CAD  58        mov     e,b
3CAE  59        mov     e,c
3CAF  04        inr     b
3CB0  0B        dcx     b
3CB1  05        dcr     b
3CB2  02        stax    b
3CB3  58        mov     e,b
3CB4  59        mov     e,c
3CB5  04        inr     b
3CB6  1B        dcx     d
3CB7  05        dcr     b
3CB8  06 58     mvi     b,'X'
3CBA  59        mov     e,c
3CBB  05        dcr     b
3CBC  16 58     mvi     d,'X'
3CBE  59        mov     e,c
3CBF  06 63     mvi     b,'c'
3CC1  58        mov     e,b
3CC2  59        mov     e,c
3CC3  00        nop
3CC4  63        mov     h,e
3CC5  01 07 58  lxi     b,$5807
3CC8  59        mov     e,c
3CC9  00        nop
3CCA  58        mov     e,b
3CCB  58        mov     e,b
3CCC  59        mov     e,c
3CCD  02        stax    b
3CCE  58        mov     e,b
3CCF  03        inx     b
3CD0  07        rlc
3CD1  58        mov     e,b
3CD2  59        mov     e,c
3CD3  06 1B     mvi     b,$1B
3CD5  07        rlc
3CD6  16 58     mvi     d,'X'
3CD8  59        mov     e,c
3CD9  58        mov     e,b
3CDA  59        mov     e,c
3CDB  00        nop
3CDC  3B        dcx     sp
3CDD  01 6D 58  lxi     b,$586D
3CE0  59        mov     e,c
3CE1  02        stax    b
3CE2  00        nop
3CE3  03        inx     b
3CE4  13        inx     d
3CE5  58        mov     e,b
3CE6  59        mov     e,c
3CE7  06 00     mvi     b,$00
3CE9  07        rlc
3CEA  14        inr     d
3CEB  58        mov     e,b
3CEC  59        mov     e,c
3CED  58        mov     e,b
3CEE  59        mov     e,c
3CEF  06 14     mvi     b,$14
3CF1  07        rlc
3CF2  2A 58 59  lhld    $5958
3CF5  06 00     mvi     b,$00
3CF7  07        rlc
3CF8  14        inr     d
3CF9  58        mov     e,b
3CFA  59        mov     e,c
3CFB  58        mov     e,b
3CFC  59        mov     e,c
3CFD  04        inr     b
3CFE  3A 58 59  lda     $5958
3D01  04        inr     b
3D02  1B        dcx     d
3D03  58        mov     e,b
3D04  59        mov     e,c
3D05  02        stax    b
3D06  3B        dcx     sp
3D07  03        inx     b
3D08  6D        mov     l,l
3D09  58        mov     e,b
3D0A  59        mov     e,c
3D0B  04        inr     b
3D0C  4D        mov     c,l
3D0D  58        mov     e,b
3D0E  59        mov     e,c
3D0F  04        inr     b
3D10  42        mov     b,d
3D11  58        mov     e,b
3D12  59        mov     e,c
3D13  05        dcr     b
3D14  02        stax    b
3D15  58        mov     e,b
3D16  59        mov     e,c
3D17  01 6E 04  lxi     b,$046E
3D1A  00        nop
3D1B  58        mov     e,b
3D1C  59        mov     e,c
3D1D  00        nop
3D1E  00        nop
3D1F  01 14 06  lxi     b,$0614
3D22  3B        dcx     sp
3D23  07        rlc
3D24  6D        mov     l,l
3D25  58        mov     e,b
3D26  59        mov     e,c
3D27  58        mov     e,b
3D28  59        mov     e,c
3D29  00        nop
3D2A  01 58 59  lxi     b,$5958
3D2D  01 02 58  lxi     b,$5802
3D30  59        mov     e,c
3D31  02        stax    b
3D32  03        inx     b
3D33  05        dcr     b
3D34  06 58     mvi     b,'X'
3D36  59        mov     e,c
3D37  04        inr     b
3D38  6E        mov     l,m
3D39  05        dcr     b
3D3A  02        stax    b
3D3B  58        mov     e,b
3D3C  59        mov     e,c
3D3D  02        stax    b
3D3E  3B        dcx     sp
3D3F  06 6E     mvi     b,'n'
3D41  58        mov     e,b
3D42  59        mov     e,c
3D43  02        stax    b
3D44  6D        mov     l,l
3D45  06 3B     mvi     b,$3B
3D47  07        rlc
3D48  6E        mov     l,m
3D49  58        mov     e,b
3D4A  59        mov     e,c
3D4B  04        inr     b
3D4C  DC 05 92  cc      $9205
3D4F  07        rlc
3D50  6D        mov     l,l
3D51  58        mov     e,b
3D52  59        mov     e,c
3D53  04        inr     b
3D54  DD 05 86  call    $8605        ;Note: Alternative opcode used
3D57  58        mov     e,b
3D58  59        mov     e,c
3D59  04        inr     b
3D5A  DE 58     sbi     'X'
3D5C  59        mov     e,c
3D5D  04        inr     b
3D5E  DD 05 96  call    $9605        ;Note: Alternative opcode used
3D61  58        mov     e,b
3D62  59        mov     e,c
3D63  04        inr     b
3D64  01 05 12  lxi     b,$1205
3D67  58        mov     e,b
3D68  59        mov     e,c
3D69  04        inr     b
3D6A  00        nop
3D6B  05        dcr     b
3D6C  46        mov     b,m
3D6D  58        mov     e,b
3D6E  59        mov     e,c
3D6F  04        inr     b
3D70  01 05 02  lxi     b,$0205
3D73  58        mov     e,b
3D74  59        mov     e,c
3D75  05        dcr     b
3D76  56        mov     d,m
3D77  58        mov     e,b
3D78  59        mov     e,c
3D79  58        mov     e,b
3D7A  59        mov     e,c
3D7B  06 33     mvi     b,$33
3D7D  07        rlc
3D7E  52        mov     d,d
3D7F  58        mov     e,b
3D80  59        mov     e,c
3D81  01 01 58  lxi     b,$5801
3D84  59        mov     e,c
3D85  02        stax    b
3D86  FF        rst     7
3D87  03        inx     b
3D88  FF        rst     7
3D89  58        mov     e,b
3D8A  59        mov     e,c
3D8B  04        inr     b
3D8C  FF        rst     7
3D8D  05        dcr     b
3D8E  D7        rst     2
3D8F  58        mov     e,b
3D90  59        mov     e,c
3D91  01 00 58  lxi     b,$5800
3D94  59        mov     e,c
3D95  00        nop
3D96  00        nop
3D97  01 FF 58  lxi     b,$58FF
3D9A  59        mov     e,c
3D9B  01 FE 58  lxi     b,$58FE
3D9E  59        mov     e,c
3D9F  01 FD 58  lxi     b,$58FD
3DA2  59        mov     e,c
3DA3  01 FC 58  lxi     b,$58FC
3DA6  59        mov     e,c
3DA7  03        inx     b
3DA8  FD 58 59  call    $5958        ;Note: Alternative opcode used
3DAB  03        inx     b
3DAC  FB        ei
3DAD  58        mov     e,b
3DAE  59        mov     e,c
3DAF  03        inx     b
3DB0  F9        sphl
3DB1  58        mov     e,b
3DB2  59        mov     e,c
3DB3  03        inx     b
3DB4  F7        rst     6
3DB5  58        mov     e,b
3DB6  59        mov     e,c
3DB7  01 FB 58  lxi     b,$58FB
3DBA  59        mov     e,c
3DBB  01 FA 58  lxi     b,$58FA
3DBE  59        mov     e,c
3DBF  01 F9 58  lxi     b,$58F9
3DC2  59        mov     e,c
3DC3  01 F8 58  lxi     b,$58F8
3DC6  59        mov     e,c
3DC7  01 F7 58  lxi     b,$58F7
3DCA  59        mov     e,c
3DCB  58        mov     e,b
3DCC  59        mov     e,c
3DCD  58        mov     e,b
3DCE  59        mov     e,c
3DCF  58        mov     e,b
3DD0  59        mov     e,c
3DD1  58        mov     e,b
3DD2  59        mov     e,c
3DD3  01 F8 58  lxi     b,$58F8
3DD6  59        mov     e,c
3DD7  01 F9 58  lxi     b,$58F9
3DDA  59        mov     e,c
3DDB  01 FA 58  lxi     b,$58FA
3DDE  59        mov     e,c
3DDF  01 FB 58  lxi     b,$58FB
3DE2  59        mov     e,c
3DE3  01 FC 58  lxi     b,$58FC
3DE6  59        mov     e,c
3DE7  58        mov     e,b
3DE8  59        mov     e,c
3DE9  58        mov     e,b
3DEA  59        mov     e,c
3DEB  58        mov     e,b
3DEC  59        mov     e,c
3DED  58        mov     e,b
3DEE  59        mov     e,c
3DEF  02        stax    b
3DF0  00        nop
3DF1  03        inx     b
3DF2  00        nop
3DF3  58        mov     e,b
3DF4  59        mov     e,c
3DF5  04        inr     b
3DF6  00        nop
3DF7  05        dcr     b
3DF8  02        stax    b
3DF9  58        mov     e,b
3DFA  59        mov     e,c
3DFB  01 FB 58  lxi     b,$58FB
3DFE  59        mov     e,c
3DFF  02        stax    b
3E00  FF        rst     7
3E01  03        inx     b
3E02  FE 58     cpi     'X'
3E04  59        mov     e,c
3E05  03        inx     b
3E06  FC 58 59  cm      $5958
3E09  03        inx     b
3E0A  FA 58 59  jm      $5958
3E0D  03        inx     b
3E0E  F8        rm
3E0F  58        mov     e,b
3E10  59        mov     e,c
3E11  01 FA 58  lxi     b,$58FA
3E14  59        mov     e,c
3E15  01 F9 58  lxi     b,$58F9
3E18  59        mov     e,c
3E19  01 F8 58  lxi     b,$58F8
3E1C  59        mov     e,c
3E1D  01 F7 58  lxi     b,$58F7
3E20  59        mov     e,c
3E21  01 F6 58  lxi     b,$58F6
3E24  59        mov     e,c
3E25  58        mov     e,b
3E26  59        mov     e,c
3E27  58        mov     e,b
3E28  59        mov     e,c
3E29  58        mov     e,b
3E2A  59        mov     e,c
3E2B  58        mov     e,b
3E2C  59        mov     e,c
3E2D  01 F5 58  lxi     b,$58F5
3E30  59        mov     e,c
3E31  01 F4 58  lxi     b,$58F4
3E34  59        mov     e,c
3E35  01 F3 58  lxi     b,$58F3
3E38  59        mov     e,c
3E39  01 F2 58  lxi     b,$58F2
3E3C  59        mov     e,c
3E3D  01 F3 58  lxi     b,$58F3
3E40  59        mov     e,c
3E41  58        mov     e,b
3E42  59        mov     e,c
3E43  58        mov     e,b
3E44  59        mov     e,c
3E45  58        mov     e,b
3E46  59        mov     e,c
3E47  58        mov     e,b
3E48  59        mov     e,c
3E49  01 F4 58  lxi     b,$58F4
3E4C  59        mov     e,c
3E4D  01 F5 58  lxi     b,$58F5
3E50  59        mov     e,c
3E51  01 F6 58  lxi     b,$58F6
3E54  59        mov     e,c
3E55  01 F7 58  lxi     b,$58F7
3E58  59        mov     e,c
3E59  44        mov     b,h
3E5A  33        inx     sp
3E5B  0D        dcr     c
3E5C  0A        ldax    b
3E5D  3A 31 30  lda     $3031
3E60  33        inx     sp
3E61  30        nop                  ;Note: Alternative opcode used
3E62  36 30     mvi     m,$30
3E64  30        nop                  ;Note: Alternative opcode used
3E65  30        nop                  ;Note: Alternative opcode used
3E66  30        nop                  ;Note: Alternative opcode used
3E67  44        mov     b,h
3E68  30        nop                  ;Note: Alternative opcode used
3E69  41        mov     b,c
3E6A  30        nop                  ;Note: Alternative opcode used
3E6B  41        mov     b,c
3E6C  30        nop                  ;Note: Alternative opcode used
3E6D  30        nop                  ;Note: Alternative opcode used
3E6E  43        mov     b,e
3E6F  44        mov     b,h
3E70  30        nop                  ;Note: Alternative opcode used
3E71  36 33     mvi     m,$33
3E73  38        nop                  ;Note: Alternative opcode used
3E74  43        mov     b,e
3E75  33        inx     sp
3E76  38        nop                  ;Note: Alternative opcode used
3E77  34        inr     m
3E78  33        inx     sp
3E79  30        nop                  ;Note: Alternative opcode used
3E7A  32 31 36  sta     $3631
3E7D  46        mov     b,m
3E7E  33        inx     sp
3E7F  42        mov     b,d
3E80  43        mov     b,e
3E81  44        mov     b,h
3E82  34        inr     m
3E83  35        dcr     m
3E84  33        inx     sp
3E85  41        mov     b,c
3E86  41        mov     b,c
3E87  36 0D     mvi     m,$0D
3E89  0A        ldax    b
3E8A  3A 31 30  lda     $3031
3E8D  33        inx     sp
3E8E  30        nop                  ;Note: Alternative opcode used
3E8F  37        stc
3E90  30        nop                  ;Note: Alternative opcode used
3E91  30        nop                  ;Note: Alternative opcode used
3E92  30        nop                  ;Note: Alternative opcode used
3E93  34        inr     m
3E94  34        inr     m
3E95  34        inr     m
3E96  32 34 36  sta     $3634
3E99  34        inr     m
3E9A  43        mov     b,e
3E9B  34        inr     m
3E9C  31 34 37  lxi     sp,$3734
3E9F  32 30 34  sta     $3430
3EA2  39        dad     sp
3EA3  35        dcr     m
3EA4  33        inx     sp
3EA5  32 30 34  sta     $3430
3EA8  31 35 34  lxi     sp,$3435
3EAB  32 30 30  sta     $3030
3EAE  30        nop                  ;Note: Alternative opcode used
3EAF  43        mov     b,e
3EB0  44        mov     b,h
3EB1  38        nop                  ;Note: Alternative opcode used
3EB2  32 44 30  sta     $3044
3EB5  0D        dcr     c
3EB6  0A        ldax    b
3EB7  3A 31 30  lda     $3031
3EBA  33        inx     sp
3EBB  30        nop                  ;Note: Alternative opcode used
3EBC  38        nop                  ;Note: Alternative opcode used
3EBD  30        nop                  ;Note: Alternative opcode used
3EBE  30        nop                  ;Note: Alternative opcode used
3EBF  30        nop                  ;Note: Alternative opcode used
3EC0  33        inx     sp
3EC1  41        mov     b,c
3EC2  43        mov     b,e
3EC3  44        mov     b,h
3EC4  35        dcr     m
3EC5  43        mov     b,e
3EC6  33        inx     sp
3EC7  42        mov     b,d
3EC8  31 45 34  lxi     sp,$3445
3ECB  31 30 45  lxi     sp,$4530
3ECE  30        nop                  ;Note: Alternative opcode used
3ECF  32 43 44  sta     $4443
3ED2  30        nop                  ;Note: Alternative opcode used
3ED3  35        dcr     m
3ED4  30        nop                  ;Note: Alternative opcode used
3ED5  30        nop                  ;Note: Alternative opcode used
3ED6  31 45 34  lxi     sp,$3445
3ED9  32 43 44  sta     $4443
3EDC  44        mov     b,h
3EDD  44        mov     b,h
3EDE  33        inx     sp
3EDF  32 32 35  sta     $3532
3EE2  0D        dcr     c
3EE3  0A        ldax    b
3EE4  3A 31 30  lda     $3031
3EE7  33        inx     sp
3EE8  30        nop                  ;Note: Alternative opcode used
3EE9  39        dad     sp
3EEA  30        nop                  ;Note: Alternative opcode used
3EEB  30        nop                  ;Note: Alternative opcode used
3EEC  30        nop                  ;Note: Alternative opcode used
3EED  31 45 34  lxi     sp,$3445
3EF0  33        inx     sp
3EF1  43        mov     b,e
3EF2  44        mov     b,h
3EF3  45        mov     b,l
3EF4  31 33 32  lxi     sp,$3233
3EF7  33        inx     sp
3EF8  41        mov     b,c
3EF9  36 43     mvi     m,'C'
3EFB  33        inx     sp
3EFC  42        mov     b,d
3EFD  42        mov     b,d
3EFE  37        stc
3EFF  43        mov     b,e
3F00  32 41 32  sta     $3241
3F03  33        inx     sp
3F04  30        nop                  ;Note: Alternative opcode used
3F05  43        mov     b,e
3F06  44        mov     b,h
3F07  35        dcr     m
3F08  45        mov     b,l
3F09  33        inx     sp
3F0A  39        dad     sp
3F0B  43        mov     b,e
3F0C  33        inx     sp
3F0D  39        dad     sp
3F0E  43        mov     b,e
3F0F  0D        dcr     c
3F10  0A        ldax    b
3F11  3A 31 30  lda     $3031
3F14  33        inx     sp
3F15  30        nop                  ;Note: Alternative opcode used
3F16  41        mov     b,c
3F17  30        nop                  ;Note: Alternative opcode used
3F18  30        nop                  ;Note: Alternative opcode used
3F19  30        nop                  ;Note: Alternative opcode used
3F1A  41        mov     b,c
3F1B  37        stc
3F1C  33        inx     sp
3F1D  30        nop                  ;Note: Alternative opcode used
3F1E  43        mov     b,e
3F1F  44        mov     b,h
3F20  34        inr     m
3F21  35        dcr     m
3F22  33        inx     sp
3F23  41        mov     b,c
3F24  34        inr     m
3F25  34        inr     m
3F26  30        nop                  ;Note: Alternative opcode used
3F27  30        nop                  ;Note: Alternative opcode used
3F28  43        mov     b,e
3F29  44        mov     b,h
3F2A  34        inr     m
3F2B  35        dcr     m
3F2C  33        inx     sp
3F2D  41        mov     b,c
3F2E  34        inr     m
3F2F  35        dcr     m
3F30  34        inr     m
3F31  36 34     mvi     m,$34
3F33  37        stc
3F34  34        inr     m
3F35  38        nop                  ;Note: Alternative opcode used
3F36  34        inr     m
3F37  39        dad     sp
3F38  34        inr     m
3F39  41        mov     b,c
3F3A  43        mov     b,e
3F3B  30        nop                  ;Note: Alternative opcode used
3F3C  0D        dcr     c
3F3D  0A        ldax    b
3F3E  3A 31 30  lda     $3031
3F41  33        inx     sp
3F42  30        nop                  ;Note: Alternative opcode used
3F43  42        mov     b,d
3F44  30        nop                  ;Note: Alternative opcode used
3F45  30        nop                  ;Note: Alternative opcode used
3F46  30        nop                  ;Note: Alternative opcode used
3F47  34        inr     m
3F48  42        mov     b,d
3F49  34        inr     m
3F4A  43        mov     b,e
3F4B  34        inr     m
3F4C  44        mov     b,h
3F4D  34        inr     m
3F4E  45        mov     b,l
3F4F  34        inr     m
3F50  46        mov     b,m
3F51  35        dcr     m
3F52  30        nop                  ;Note: Alternative opcode used
3F53  35        dcr     m
3F54  31 35 32  lxi     sp,$3235
3F57  35        dcr     m
3F58  33        inx     sp
3F59  35        dcr     m
3F5A  34        inr     m
3F5B  35        dcr     m
3F5C  35        dcr     m
3F5D  35        dcr     m
3F5E  36 35     mvi     m,$35
3F60  37        stc
3F61  35        dcr     m
3F62  38        nop                  ;Note: Alternative opcode used
3F63  35        dcr     m
3F64  39        dad     sp
3F65  35        dcr     m
3F66  41        mov     b,c
3F67  45        mov     b,l
3F68  38        nop                  ;Note: Alternative opcode used
3F69  0D        dcr     c
3F6A  0A        ldax    b
3F6B  3A 31 30  lda     $3031
3F6E  33        inx     sp
3F6F  30        nop                  ;Note: Alternative opcode used
3F70  43        mov     b,e
3F71  30        nop                  ;Note: Alternative opcode used
3F72  30        nop                  ;Note: Alternative opcode used
3F73  30        nop                  ;Note: Alternative opcode used
3F74  30        nop                  ;Note: Alternative opcode used
3F75  30        nop                  ;Note: Alternative opcode used
3F76  33        inx     sp
3F77  45        mov     b,l
3F78  30        nop                  ;Note: Alternative opcode used
3F79  32 33 43  sta     $4333
3F7C  45        mov     b,l
3F7D  41        mov     b,c
3F7E  43        mov     b,e
3F7F  43        mov     b,e
3F80  33        inx     sp
3F81  30        nop                  ;Note: Alternative opcode used
3F82  33        inx     sp
3F83  45        mov     b,l
3F84  30        nop                  ;Note: Alternative opcode used
3F85  31 43 33  lxi     sp,$3343
3F88  43        mov     b,e
3F89  44        mov     b,h
3F8A  33        inx     sp
3F8B  30        nop                  ;Note: Alternative opcode used
3F8C  41        mov     b,c
3F8D  46        mov     b,m
3F8E  33        inx     sp
3F8F  32 36 39  sta     $3936
3F92  33        inx     sp
3F93  42        mov     b,d
3F94  31 41 0D  lxi     sp,$0D41
3F97  0A        ldax    b
3F98  3A 31 30  lda     $3031
3F9B  33        inx     sp
3F9C  30        nop                  ;Note: Alternative opcode used
3F9D  44        mov     b,h
3F9E  30        nop                  ;Note: Alternative opcode used
3F9F  30        nop                  ;Note: Alternative opcode used
3FA0  30        nop                  ;Note: Alternative opcode used
3FA1  43        mov     b,e
3FA2  44        mov     b,h
3FA3  30        nop                  ;Note: Alternative opcode used
3FA4  36 33     mvi     m,$33
3FA6  38        nop                  ;Note: Alternative opcode used
3FA7  43        mov     b,e
3FA8  33        inx     sp
3FA9  32 32 33  sta     $3332
3FAC  31 33 32  lxi     sp,$3233
3FAF  36 41     mvi     m,'A'
3FB1  33        inx     sp
3FB2  42        mov     b,d
3FB3  42        mov     b,d
3FB4  37        stc
3FB5  43        mov     b,e
3FB6  32 32 32  sta     $3232
3FB9  33        inx     sp
3FBA  31 43 44  lxi     sp,$4443
3FBD  34        inr     m
3FBE  35        dcr     m
3FBF  33        inx     sp
3FC0  41        mov     b,c
3FC1  45        mov     b,l
3FC2  30        nop                  ;Note: Alternative opcode used
3FC3  0D        dcr     c
3FC4  0A        ldax    b
3FC5  3A 31 30  lda     $3031
3FC8  33        inx     sp
3FC9  30        nop                  ;Note: Alternative opcode used
3FCA  45        mov     b,l
3FCB  30        nop                  ;Note: Alternative opcode used
3FCC  30        nop                  ;Note: Alternative opcode used
3FCD  30        nop                  ;Note: Alternative opcode used
3FCE  30        nop                  ;Note: Alternative opcode used
3FCF  44        mov     b,h
3FD0  30        nop                  ;Note: Alternative opcode used
3FD1  41        mov     b,c
3FD2  35        dcr     m
3FD3  34        inr     m
3FD4  35        dcr     m
3FD5  35        dcr     m
3FD6  35        dcr     m
3FD7  32 34 42  sta     $4234
3FDA  34        inr     m
3FDB  35        dcr     m
3FDC  35        dcr     m
3FDD  39        dad     sp
3FDE  32 44 32  sta     $3244
3FE1  44        mov     b,h
3FE2  34        inr     m
3FE3  37        stc
3FE4  34        inr     m
3FE5  46        mov     b,m
3FE6  32 30 34  sta     $3430
3FE9  36 34     mvi     m,$34
3FEB  39        dad     sp
3FEC  34        inr     m
3FED  45        mov     b,l
3FEE  46        mov     b,m
3FEF  38        nop                  ;Note: Alternative opcode used
3FF0  0D        dcr     c
3FF1  0A        ldax    b
3FF2  3A 31 30  lda     $3031
3FF5  33        inx     sp
3FF6  30        nop                  ;Note: Alternative opcode used
3FF7  46        mov     b,m
3FF8  30        nop                  ;Note: Alternative opcode used
3FF9  30        nop                  ;Note: Alternative opcode used
3FFA  30        nop                  ;Note: Alternative opcode used
3FFB  34        inr     m
3FFC  34        inr     m
3FFD  32 30 34  sta     $3430
4000  0C        inr     c
4001  62        mov     h,d
4002  6B        mov     l,e
4003  CD 8B 0B  call    $0B8B
4006  CD 6C 0C  call    $0C6C
4009  2A 2A 0C  lhld    $0C2A
400C  CD 8B 0B  call    $0B8B
400F  CD 6C 0C  call    $0C6C
4012  21 00 00  lxi     h,$0000
4015  39        dad     sp
4016  CD 8B 0B  call    $0B8B
4019  F1        pop     psw
401A  2A 2A 0C  lhld    $0C2A
401D  CD 65 0C  call    $0C65
4020  C9        ret
4021  02        stax    b
4022  F5        push    psw
4023  3A 4C 0C  lda     $0C4C
4026  FE 53     cpi     'S'
4028  CA 0D 09  jz      $090D
402B  FE 43     cpi     'C'
402D  CA 0D 09  jz      $090D
4030  CD 1B 0B  call    $0B1B
4033  32 4C 0C  sta     $0C4C
4036  F5        push    psw
4037  2F        cma
4038  3C        inr     a
4039  32 4D 0C  sta     $0C4D
403C  F1        pop     psw
403D  FE 03     cpi     $03
403F  C2 0D 09  jnz     $090D
4042  C7        rst     0
4043  00        nop
4044  00        nop
4045  F5        push    psw
4046  3A 4C 0C  lda     $0C4C
4049  FE 53     cpi     'S'
404B  CA 0D 09  jz      $090D
404E  CD 4E 0B  call    $0B4E
4051  07        rlc
4052  00        nop
4053  F1        pop     psw
4054  C9        ret
4055  CD B2 0B  call    $0BB2
4058  CD 2B 0C  call    $0C2B
405B  C9        ret
405C  CD 4E 0B  call    $0B4E
405F  0D        dcr     c
4060  0A        ldax    b
4061  00        nop
4062  C9        ret
4063  CD 4E 0B  call    $0B4E
4066  20        nop                  ;Note: Alternative opcode used
4067  00        nop
4068  C9        ret
4069  00        nop
406A  00        nop
406B  00        nop
406C  00        nop
406D  00        nop
406E  00        nop
406F  00        nop
4070  00        nop
4071  00        nop
4072  00        nop
4073  00        nop
4074  00        nop
4075  80        add     b
4076  0C        inr     c
4077  44        mov     b,h
4078  45        mov     b,l
4079  46        mov     b,m
407A  D5        push    d
407B  16 00     mvi     d,$00
407D  5F        mov     e,a
407E  19        dad
407F  7E        mov     a,m
4080  D1        pop     d
4081  C9        ret
4082  F5        push    psw
4083  7C        mov     a,h
4084  CD A1 0B  call    $0BA1
4087  7D        mov     a,l
4088  CD A1 0B  call    $0BA1
408B  F1        pop     psw
408C  C9        ret
408D  F5        push    psw
408E  CD A1 0B  call    $0BA1
4091  3E 48     mvi     a,'H'
4093  CD 0E 0B  call    $0B0E
4096  F1        pop     psw
4097  C9        ret
4098  F5        push    psw
4099  0F        rrc
409A  0F        rrc
409B  0F        rrc
409C  0F        rrc
409D  CD 5F 0B  call    $0B5F
40A0  0F        rrc
40A1  0F        rrc
40A2  0F        rrc
40A3  0F        rrc
40A4  CD 5F 0B  call    $0B5F
40A7  F1        pop     psw
40A8  C9        ret
40A9  CD C3 0B  call    $0BC3
40AC  CD 3C 0A  call    $0A3C
40AF  08        nop                  ;Note: Alternative opcode used
40B0  D9        ret                  ;Note: Alternative opcode used
40B1  CD C3 0B  call    $0BC3
40B4  CD 3C 0A  call    $0A3C
40B7  08        nop                  ;Note: Alternative opcode used
40B8  D9        ret                  ;Note: Alternative opcode used
40B9  C9        ret
40BA  22 2A 0C  shld    $0C2A
40BD  CD 4E 0B  call    $0B4E
40C0  0D        dcr     c
40C1  0A        ldax    b
40C2  20        nop                  ;Note: Alternative opcode used
40C3  50        mov     d,b
40C4  20        nop                  ;Note: Alternative opcode used
40C5  43        mov     b,e
40C6  20        nop                  ;Note: Alternative opcode used
40C7  20        nop                  ;Note: Alternative opcode used
40C8  41        mov     b,c
40C9  20        nop                  ;Note: Alternative opcode used
40CA  46        mov     b,m
40CB  20        nop                  ;Note: Alternative opcode used
40CC  20        nop                  ;Note: Alternative opcode used
40CD  42        mov     b,d
40CE  20        nop                  ;Note: Alternative opcode used
40CF  43        mov     b,e
40D0  20        nop                  ;Note: Alternative opcode used
40D1  20        nop                  ;Note: Alternative opcode used
40D2  44        mov     b,h
40D3  20        nop                  ;Note: Alternative opcode used
40D4  45        mov     b,l
40D5  20        nop                  ;Note: Alternative opcode used
40D6  20        nop                  ;Note: Alternative opcode used
40D7  48        mov     c,b
40D8  20        nop                  ;Note: Alternative opcode used
40D9  4C        mov     c,h
40DA  20        nop                  ;Note: Alternative opcode used
40DB  20        nop                  ;Note: Alternative opcode used
40DC  53        mov     d,e
40DD  20        nop                  ;Note: Alternative opcode used
40DE  50        mov     d,b
40DF  0D        dcr     c
40E0  0A        ldax    b
40E1  00        nop
40E2  E1        pop     h
40E3  E5        push    h
40E4  F5        push    psw
40E5  CD 8B 0B  call    $0B8B
40E8  CD 6C 0C  call    $0C6C
40EB  F1        pop     psw
40EC  F5        push    psw
40ED  CD A1 0B  call    $0BA1
40F0  E1        pop     h
40F1  E5        push    h
40F2  7D        mov     a,l
40F3  CD A1 0B  call    $0BA1
40F6  CD 6C 0C  call    $0C6C
40F9  60        mov     h,b
40FA  69        mov     l,c
40FB  CD 8B 0B  call    $0B8B
40FE  CD 6C 0C  call    $0C6C
4101  62        mov     h,d
4102  6B        mov     l,e
4103  CD 8B 0B  call    $0B8B
4106  CD 6C 0C  call    $0C6C
4109  2A 2A 0C  lhld    $0C2A
410C  CD 8B 0B  call    $0B8B
410F  CD 6C 0C  call    $0C6C
4112  21 00 00  lxi     h,$0000
4115  39        dad     sp
4116  CD 8B 0B  call    $0B8B
4119  F1        pop     psw
411A  2A 2A 0C  lhld    $0C2A
411D  CD 65 0C  call    $0C65
4120  C9        ret
4121  02        stax    b
4122  F5        push    psw
4123  3A 4C 0C  lda     $0C4C
4126  FE 53     cpi     'S'
4128  CA 0D 09  jz      $090D
412B  FE 43     cpi     'C'
412D  CA 0D 09  jz      $090D
4130  CD 1B 0B  call    $0B1B
4133  32 4C 0C  sta     $0C4C
4136  F5        push    psw
4137  2F        cma
4138  3C        inr     a
4139  32 4D 0C  sta     $0C4D
413C  F1        pop     psw
413D  FE 03     cpi     $03
413F  C2 0D 09  jnz     $090D
4142  C7        rst     0
4143  00        nop
4144  00        nop
4145  F5        push    psw
4146  3A 4C 0C  lda     $0C4C
4149  FE 53     cpi     'S'
414B  CA 0D 09  jz      $090D
414E  CD 4E 0B  call    $0B4E
4151  07        rlc
4152  00        nop
4153  F1        pop     psw
4154  C9        ret
4155  CD B2 0B  call    $0BB2
4158  CD 2B 0C  call    $0C2B
415B  C9        ret
415C  CD 4E 0B  call    $0B4E
415F  0D        dcr     c
4160  0A        ldax    b
4161  00        nop
4162  C9        ret
4163  CD 4E 0B  call    $0B4E
4166  20        nop                  ;Note: Alternative opcode used
4167  00        nop
4168  C9        ret
4169  00        nop
416A  00        nop
416B  00        nop
416C  00        nop
416D  00        nop
416E  00        nop
416F  00        nop
4170  00        nop
4171  00        nop
4172  00        nop
4173  00        nop
4174  00        nop
4175  80        add     b
4176  0C        inr     c
4177  44        mov     b,h
4178  45        mov     b,l
4179  46        mov     b,m
417A  D5        push    d
417B  16 00     mvi     d,$00
417D  5F        mov     e,a
417E  19        dad
417F  7E        mov     a,m
4180  D1        pop     d
4181  C9        ret
4182  F5        push    psw
4183  7C        mov     a,h
4184  CD A1 0B  call    $0BA1
4187  7D        mov     a,l
4188  CD A1 0B  call    $0BA1
418B  F1        pop     psw
418C  C9        ret
418D  F5        push    psw
418E  CD A1 0B  call    $0BA1
4191  3E 48     mvi     a,'H'
4193  CD 0E 0B  call    $0B0E
4196  F1        pop     psw
4197  C9        ret
4198  F5        push    psw
4199  0F        rrc
419A  0F        rrc
419B  0F        rrc
419C  0F        rrc
419D  CD 5F 0B  call    $0B5F
41A0  0F        rrc
41A1  0F        rrc
41A2  0F        rrc
41A3  0F        rrc
41A4  CD 5F 0B  call    $0B5F
41A7  F1        pop     psw
41A8  C9        ret
41A9  CD C3 0B  call    $0BC3
41AC  CD 3C 0A  call    $0A3C
41AF  08        nop                  ;Note: Alternative opcode used
41B0  D9        ret                  ;Note: Alternative opcode used
41B1  CD C3 0B  call    $0BC3
41B4  CD 3C 0A  call    $0A3C
41B7  08        nop                  ;Note: Alternative opcode used
41B8  D9        ret                  ;Note: Alternative opcode used
41B9  C9        ret
41BA  22 2A 0C  shld    $0C2A
41BD  CD 4E 0B  call    $0B4E
41C0  0D        dcr     c
41C1  0A        ldax    b
41C2  20        nop                  ;Note: Alternative opcode used
41C3  50        mov     d,b
41C4  20        nop                  ;Note: Alternative opcode used
41C5  43        mov     b,e
41C6  20        nop                  ;Note: Alternative opcode used
41C7  20        nop                  ;Note: Alternative opcode used
41C8  41        mov     b,c
41C9  20        nop                  ;Note: Alternative opcode used
41CA  46        mov     b,m
41CB  20        nop                  ;Note: Alternative opcode used
41CC  20        nop                  ;Note: Alternative opcode used
41CD  42        mov     b,d
41CE  20        nop                  ;Note: Alternative opcode used
41CF  43        mov     b,e
41D0  20        nop                  ;Note: Alternative opcode used
41D1  20        nop                  ;Note: Alternative opcode used
41D2  44        mov     b,h
41D3  20        nop                  ;Note: Alternative opcode used
41D4  45        mov     b,l
41D5  20        nop                  ;Note: Alternative opcode used
41D6  20        nop                  ;Note: Alternative opcode used
41D7  48        mov     c,b
41D8  20        nop                  ;Note: Alternative opcode used
41D9  4C        mov     c,h
41DA  20        nop                  ;Note: Alternative opcode used
41DB  20        nop                  ;Note: Alternative opcode used
41DC  53        mov     d,e
41DD  20        nop                  ;Note: Alternative opcode used
41DE  50        mov     d,b
41DF  0D        dcr     c
41E0  0A        ldax    b
41E1  00        nop
41E2  E1        pop     h
41E3  E5        push    h
41E4  F5        push    psw
41E5  CD 8B 0B  call    $0B8B
41E8  CD 6C 0C  call    $0C6C
41EB  F1        pop     psw
41EC  F5        push    psw
41ED  CD A1 0B  call    $0BA1
41F0  E1        pop     h
41F1  E5        push    h
41F2  7D        mov     a,l
41F3  CD A1 0B  call    $0BA1
41F6  CD 6C 0C  call    $0C6C
41F9  60        mov     h,b
41FA  69        mov     l,c
41FB  CD 8B 0B  call    $0B8B
41FE  CD 6C 0C  call    $0C6C
4201  62        mov     h,d
4202  6B        mov     l,e
4203  CD 8B 0B  call    $0B8B
4206  CD 6C 0C  call    $0C6C
4209  2A 2A 0C  lhld    $0C2A
420C  CD 8B 0B  call    $0B8B
420F  CD 6C 0C  call    $0C6C
4212  21 00 00  lxi     h,$0000
4215  39        dad     sp
4216  CD 8B 0B  call    $0B8B
4219  F1        pop     psw
421A  2A 2A 0C  lhld    $0C2A
421D  CD 65 0C  call    $0C65
4220  C9        ret
4221  02        stax    b
4222  F5        push    psw
4223  3A 4C 0C  lda     $0C4C
4226  FE 53     cpi     'S'
4228  CA 0D 09  jz      $090D
422B  FE 43     cpi     'C'
422D  CA 0D 09  jz      $090D
4230  CD 1B 0B  call    $0B1B
4233  32 4C 0C  sta     $0C4C
4236  F5        push    psw
4237  2F        cma
4238  3C        inr     a
4239  32 4D 0C  sta     $0C4D
423C  F1        pop     psw
423D  FE 03     cpi     $03
423F  C2 0D 09  jnz     $090D
4242  C7        rst     0
4243  00        nop
4244  00        nop
4245  F5        push    psw
4246  3A 4C 0C  lda     $0C4C
4249  FE 53     cpi     'S'
424B  CA 0D 09  jz      $090D
424E  CD 4E 0B  call    $0B4E
4251  07        rlc
4252  00        nop
4253  F1        pop     psw
4254  C9        ret
4255  CD B2 0B  call    $0BB2
4258  CD 2B 0C  call    $0C2B
425B  C9        ret
425C  CD 4E 0B  call    $0B4E
425F  0D        dcr     c
4260  0A        ldax    b
4261  00        nop
4262  C9        ret
4263  CD 4E 0B  call    $0B4E
4266  20        nop                  ;Note: Alternative opcode used
4267  00        nop
4268  C9        ret
4269  00        nop
426A  00        nop
426B  00        nop
426C  00        nop
426D  00        nop
426E  00        nop
426F  00        nop
4270  00        nop
4271  00        nop
4272  00        nop
4273  00        nop
4274  00        nop
4275  80        add     b
4276  0C        inr     c
4277  44        mov     b,h
4278  45        mov     b,l
4279  46        mov     b,m
427A  D5        push    d
427B  16 00     mvi     d,$00
427D  5F        mov     e,a
427E  19        dad
427F  7E        mov     a,m
4280  D1        pop     d
4281  C9        ret
4282  F5        push    psw
4283  7C        mov     a,h
4284  CD A1 0B  call    $0BA1
4287  7D        mov     a,l
4288  CD A1 0B  call    $0BA1
428B  F1        pop     psw
428C  C9        ret
428D  F5        push    psw
428E  CD A1 0B  call    $0BA1
4291  3E 48     mvi     a,'H'
4293  CD 0E 0B  call    $0B0E
4296  F1        pop     psw
4297  C9        ret
4298  F5        push    psw
4299  0F        rrc
429A  0F        rrc
429B  0F        rrc
429C  0F        rrc
429D  CD 5F 0B  call    $0B5F
42A0  0F        rrc
42A1  0F        rrc
42A2  0F        rrc
42A3  0F        rrc
42A4  CD 5F 0B  call    $0B5F
42A7  F1        pop     psw
42A8  C9        ret
42A9  CD C3 0B  call    $0BC3
42AC  CD 3C 0A  call    $0A3C
42AF  08        nop                  ;Note: Alternative opcode used
42B0  D9        ret                  ;Note: Alternative opcode used
42B1  CD C3 0B  call    $0BC3
42B4  CD 3C 0A  call    $0A3C
42B7  08        nop                  ;Note: Alternative opcode used
42B8  D9        ret                  ;Note: Alternative opcode used
42B9  C9        ret
42BA  22 2A 0C  shld    $0C2A
42BD  CD 4E 0B  call    $0B4E
42C0  0D        dcr     c
42C1  0A        ldax    b
42C2  20        nop                  ;Note: Alternative opcode used
42C3  50        mov     d,b
42C4  20        nop                  ;Note: Alternative opcode used
42C5  43        mov     b,e
42C6  20        nop                  ;Note: Alternative opcode used
42C7  20        nop                  ;Note: Alternative opcode used
42C8  41        mov     b,c
42C9  20        nop                  ;Note: Alternative opcode used
42CA  46        mov     b,m
42CB  20        nop                  ;Note: Alternative opcode used
42CC  20        nop                  ;Note: Alternative opcode used
42CD  42        mov     b,d
42CE  20        nop                  ;Note: Alternative opcode used
42CF  43        mov     b,e
42D0  20        nop                  ;Note: Alternative opcode used
42D1  20        nop                  ;Note: Alternative opcode used
42D2  44        mov     b,h
42D3  20        nop                  ;Note: Alternative opcode used
42D4  45        mov     b,l
42D5  20        nop                  ;Note: Alternative opcode used
42D6  20        nop                  ;Note: Alternative opcode used
42D7  48        mov     c,b
42D8  20        nop                  ;Note: Alternative opcode used
42D9  4C        mov     c,h
42DA  20        nop                  ;Note: Alternative opcode used
42DB  20        nop                  ;Note: Alternative opcode used
42DC  53        mov     d,e
42DD  20        nop                  ;Note: Alternative opcode used
42DE  50        mov     d,b
42DF  0D        dcr     c
42E0  0A        ldax    b
42E1  00        nop
42E2  E1        pop     h
42E3  E5        push    h
42E4  F5        push    psw
42E5  CD 8B 0B  call    $0B8B
42E8  CD 6C 0C  call    $0C6C
42EB  F1        pop     psw
42EC  F5        push    psw
42ED  CD A1 0B  call    $0BA1
42F0  E1        pop     h
42F1  E5        push    h
42F2  7D        mov     a,l
42F3  CD A1 0B  call    $0BA1
42F6  CD 6C 0C  call    $0C6C
42F9  60        mov     h,b
42FA  69        mov     l,c
42FB  CD 8B 0B  call    $0B8B
42FE  CD 6C 0C  call    $0C6C
4301  62        mov     h,d
4302  6B        mov     l,e
4303  CD 8B 0B  call    $0B8B
4306  CD 6C 0C  call    $0C6C
4309  2A 2A 0C  lhld    $0C2A
430C  CD 8B 0B  call    $0B8B
430F  CD 6C 0C  call    $0C6C
4312  21 00 00  lxi     h,$0000
4315  39        dad     sp
4316  CD 8B 0B  call    $0B8B
4319  F1        pop     psw
431A  2A 2A 0C  lhld    $0C2A
431D  CD 65 0C  call    $0C65
4320  C9        ret
4321  02        stax    b
4322  F5        push    psw
4323  3A 4C 0C  lda     $0C4C
4326  FE 53     cpi     'S'
4328  CA 0D 09  jz      $090D
432B  FE 43     cpi     'C'
432D  CA 0D 09  jz      $090D
4330  CD 1B 0B  call    $0B1B
4333  32 4C 0C  sta     $0C4C
4336  F5        push    psw
4337  2F        cma
4338  3C        inr     a
4339  32 4D 0C  sta     $0C4D
433C  F1        pop     psw
433D  FE 03     cpi     $03
433F  C2 0D 09  jnz     $090D
4342  C7        rst     0
4343  00        nop
4344  00        nop
4345  F5        push    psw
4346  3A 4C 0C  lda     $0C4C
4349  FE 53     cpi     'S'
434B  CA 0D 09  jz      $090D
434E  CD 4E 0B  call    $0B4E
4351  07        rlc
4352  00        nop
4353  F1        pop     psw
4354  C9        ret
4355  CD B2 0B  call    $0BB2
4358  CD 2B 0C  call    $0C2B
435B  C9        ret
435C  CD 4E 0B  call    $0B4E
435F  0D        dcr     c
4360  0A        ldax    b
4361  00        nop
4362  C9        ret
4363  CD 4E 0B  call    $0B4E
4366  20        nop                  ;Note: Alternative opcode used
4367  00        nop
4368  C9        ret
4369  00        nop
436A  00        nop
436B  00        nop
436C  00        nop
436D  00        nop
436E  00        nop
436F  00        nop
4370  00        nop
4371  00        nop
4372  00        nop
4373  00        nop
4374  00        nop
4375  80        add     b
4376  0C        inr     c
4377  44        mov     b,h
4378  45        mov     b,l
4379  46        mov     b,m
437A  D5        push    d
437B  16 00     mvi     d,$00
437D  5F        mov     e,a
437E  19        dad
437F  7E        mov     a,m
4380  D1        pop     d
4381  C9        ret
4382  F5        push    psw
4383  7C        mov     a,h
4384  CD A1 0B  call    $0BA1
4387  7D        mov     a,l
4388  CD A1 0B  call    $0BA1
438B  F1        pop     psw
438C  C9        ret
438D  F5        push    psw
438E  CD A1 0B  call    $0BA1
4391  3E 48     mvi     a,'H'
4393  CD 0E 0B  call    $0B0E
4396  F1        pop     psw
4397  C9        ret
4398  F5        push    psw
4399  0F        rrc
439A  0F        rrc
439B  0F        rrc
439C  0F        rrc
439D  CD 5F 0B  call    $0B5F
43A0  0F        rrc
43A1  0F        rrc
43A2  0F        rrc
43A3  0F        rrc
43A4  CD 5F 0B  call    $0B5F
43A7  F1        pop     psw
43A8  C9        ret
43A9  CD C3 0B  call    $0BC3
43AC  CD 3C 0A  call    $0A3C
43AF  08        nop                  ;Note: Alternative opcode used
43B0  D9        ret                  ;Note: Alternative opcode used
43B1  CD C3 0B  call    $0BC3
43B4  CD 3C 0A  call    $0A3C
43B7  08        nop                  ;Note: Alternative opcode used
43B8  D9        ret                  ;Note: Alternative opcode used
43B9  C9        ret
43BA  22 2A 0C  shld    $0C2A
43BD  CD 4E 0B  call    $0B4E
43C0  0D        dcr     c
43C1  0A        ldax    b
43C2  20        nop                  ;Note: Alternative opcode used
43C3  50        mov     d,b
43C4  20        nop                  ;Note: Alternative opcode used
43C5  43        mov     b,e
43C6  20        nop                  ;Note: Alternative opcode used
43C7  20        nop                  ;Note: Alternative opcode used
43C8  41        mov     b,c
43C9  20        nop                  ;Note: Alternative opcode used
43CA  46        mov     b,m
43CB  20        nop                  ;Note: Alternative opcode used
43CC  20        nop                  ;Note: Alternative opcode used
43CD  42        mov     b,d
43CE  20        nop                  ;Note: Alternative opcode used
43CF  43        mov     b,e
43D0  20        nop                  ;Note: Alternative opcode used
43D1  20        nop                  ;Note: Alternative opcode used
43D2  44        mov     b,h
43D3  20        nop                  ;Note: Alternative opcode used
43D4  45        mov     b,l
43D5  20        nop                  ;Note: Alternative opcode used
43D6  20        nop                  ;Note: Alternative opcode used
43D7  48        mov     c,b
43D8  20        nop                  ;Note: Alternative opcode used
43D9  4C        mov     c,h
43DA  20        nop                  ;Note: Alternative opcode used
43DB  20        nop                  ;Note: Alternative opcode used
43DC  53        mov     d,e
43DD  20        nop                  ;Note: Alternative opcode used
43DE  50        mov     d,b
43DF  0D        dcr     c
43E0  0A        ldax    b
43E1  00        nop
43E2  E1        pop     h
43E3  E5        push    h
43E4  F5        push    psw
43E5  CD 8B 0B  call    $0B8B
43E8  CD 6C 0C  call    $0C6C
43EB  F1        pop     psw
43EC  F5        push    psw
43ED  CD A1 0B  call    $0BA1
43F0  E1        pop     h
43F1  E5        push    h
43F2  7D        mov     a,l
43F3  CD A1 0B  call    $0BA1
43F6  CD 6C 0C  call    $0C6C
43F9  60        mov     h,b
43FA  69        mov     l,c
43FB  CD 8B 0B  call    $0B8B
43FE  CD 6C 0C  call    $0C6C
4401  62        mov     h,d
4402  6B        mov     l,e
4403  CD 8B 0B  call    $0B8B
4406  CD 6C 0C  call    $0C6C
4409  2A 2A 0C  lhld    $0C2A
440C  CD 8B 0B  call    $0B8B
440F  CD 6C 0C  call    $0C6C
4412  21 00 00  lxi     h,$0000
4415  39        dad     sp
4416  CD 8B 0B  call    $0B8B
4419  F1        pop     psw
441A  2A 2A 0C  lhld    $0C2A
441D  CD 65 0C  call    $0C65
4420  C9        ret
4421  02        stax    b
4422  F5        push    psw
4423  3A 4C 0C  lda     $0C4C
4426  FE 53     cpi     'S'
4428  CA 0D 09  jz      $090D
442B  FE 43     cpi     'C'
442D  CA 0D 09  jz      $090D
4430  CD 1B 0B  call    $0B1B
4433  32 4C 0C  sta     $0C4C
4436  F5        push    psw
4437  2F        cma
4438  3C        inr     a
4439  32 4D 0C  sta     $0C4D
443C  F1        pop     psw
443D  FE 03     cpi     $03
443F  C2 0D 09  jnz     $090D
4442  C7        rst     0
4443  00        nop
4444  00        nop
4445  F5        push    psw
4446  3A 4C 0C  lda     $0C4C
4449  FE 53     cpi     'S'
444B  CA 0D 09  jz      $090D
444E  CD 4E 0B  call    $0B4E
4451  07        rlc
4452  00        nop
4453  F1        pop     psw
4454  C9        ret
4455  CD B2 0B  call    $0BB2
4458  CD 2B 0C  call    $0C2B
445B  C9        ret
445C  CD 4E 0B  call    $0B4E
445F  0D        dcr     c
4460  0A        ldax    b
4461  00        nop
4462  C9        ret
4463  CD 4E 0B  call    $0B4E
4466  20        nop                  ;Note: Alternative opcode used
4467  00        nop
4468  C9        ret
4469  00        nop
446A  00        nop
446B  00        nop
446C  00        nop
446D  00        nop
446E  00        nop
446F  00        nop
4470  00        nop
4471  00        nop
4472  00        nop
4473  00        nop
4474  00        nop
4475  80        add     b
4476  0C        inr     c
4477  44        mov     b,h
4478  45        mov     b,l
4479  46        mov     b,m
447A  D5        push    d
447B  16 00     mvi     d,$00
447D  5F        mov     e,a
447E  19        dad
447F  7E        mov     a,m
4480  D1        pop     d
4481  C9        ret
4482  F5        push    psw
4483  7C        mov     a,h
4484  CD A1 0B  call    $0BA1
4487  7D        mov     a,l
4488  CD A1 0B  call    $0BA1
448B  F1        pop     psw
448C  C9        ret
448D  F5        push    psw
448E  CD A1 0B  call    $0BA1
4491  3E 48     mvi     a,'H'
4493  CD 0E 0B  call    $0B0E
4496  F1        pop     psw
4497  C9        ret
4498  F5        push    psw
4499  0F        rrc
449A  0F        rrc
449B  0F        rrc
449C  0F        rrc
449D  CD 5F 0B  call    $0B5F
44A0  0F        rrc
44A1  0F        rrc
44A2  0F        rrc
44A3  0F        rrc
44A4  CD 5F 0B  call    $0B5F
44A7  F1        pop     psw
44A8  C9        ret
44A9  CD C3 0B  call    $0BC3
44AC  CD 3C 0A  call    $0A3C
44AF  08        nop                  ;Note: Alternative opcode used
44B0  D9        ret                  ;Note: Alternative opcode used
44B1  CD C3 0B  call    $0BC3
44B4  CD 3C 0A  call    $0A3C
44B7  08        nop                  ;Note: Alternative opcode used
44B8  D9        ret                  ;Note: Alternative opcode used
44B9  C9        ret
44BA  22 2A 0C  shld    $0C2A
44BD  CD 4E 0B  call    $0B4E
44C0  0D        dcr     c
44C1  0A        ldax    b
44C2  20        nop                  ;Note: Alternative opcode used
44C3  50        mov     d,b
44C4  20        nop                  ;Note: Alternative opcode used
44C5  43        mov     b,e
44C6  20        nop                  ;Note: Alternative opcode used
44C7  20        nop                  ;Note: Alternative opcode used
44C8  41        mov     b,c
44C9  20        nop                  ;Note: Alternative opcode used
44CA  46        mov     b,m
44CB  20        nop                  ;Note: Alternative opcode used
44CC  20        nop                  ;Note: Alternative opcode used
44CD  42        mov     b,d
44CE  20        nop                  ;Note: Alternative opcode used
44CF  43        mov     b,e
44D0  20        nop                  ;Note: Alternative opcode used
44D1  20        nop                  ;Note: Alternative opcode used
44D2  44        mov     b,h
44D3  20        nop                  ;Note: Alternative opcode used
44D4  45        mov     b,l
44D5  20        nop                  ;Note: Alternative opcode used
44D6  20        nop                  ;Note: Alternative opcode used
44D7  48        mov     c,b
44D8  20        nop                  ;Note: Alternative opcode used
44D9  4C        mov     c,h
44DA  20        nop                  ;Note: Alternative opcode used
44DB  20        nop                  ;Note: Alternative opcode used
44DC  53        mov     d,e
44DD  20        nop                  ;Note: Alternative opcode used
44DE  50        mov     d,b
44DF  0D        dcr     c
44E0  0A        ldax    b
44E1  00        nop
44E2  E1        pop     h
44E3  E5        push    h
44E4  F5        push    psw
44E5  CD 8B 0B  call    $0B8B
44E8  CD 6C 0C  call    $0C6C
44EB  F1        pop     psw
44EC  F5        push    psw
44ED  CD A1 0B  call    $0BA1
44F0  E1        pop     h
44F1  E5        push    h
44F2  7D        mov     a,l
44F3  CD A1 0B  call    $0BA1
44F6  CD 6C 0C  call    $0C6C
44F9  60        mov     h,b
44FA  69        mov     l,c
44FB  CD 8B 0B  call    $0B8B
44FE  CD 6C 0C  call    $0C6C
4501  62        mov     h,d
4502  6B        mov     l,e
4503  CD 8B 0B  call    $0B8B
4506  CD 6C 0C  call    $0C6C
4509  2A 2A 0C  lhld    $0C2A
450C  CD 8B 0B  call    $0B8B
450F  CD 6C 0C  call    $0C6C
4512  21 00 00  lxi     h,$0000
4515  39        dad     sp
4516  CD 8B 0B  call    $0B8B
4519  F1        pop     psw
451A  2A 2A 0C  lhld    $0C2A
451D  CD 65 0C  call    $0C65
4520  C9        ret
4521  02        stax    b
4522  F5        push    psw
4523  3A 4C 0C  lda     $0C4C
4526  FE 53     cpi     'S'
4528  CA 0D 09  jz      $090D
452B  FE 43     cpi     'C'
452D  CA 0D 09  jz      $090D
4530  CD 1B 0B  call    $0B1B
4533  32 4C 0C  sta     $0C4C
4536  F5        push    psw
4537  2F        cma
4538  3C        inr     a
4539  32 4D 0C  sta     $0C4D
453C  F1        pop     psw
453D  FE 03     cpi     $03
453F  C2 0D 09  jnz     $090D
4542  C7        rst     0
4543  00        nop
4544  00        nop
4545  F5        push    psw
4546  3A 4C 0C  lda     $0C4C
4549  FE 53     cpi     'S'
454B  CA 0D 09  jz      $090D
454E  CD 4E 0B  call    $0B4E
4551  07        rlc
4552  00        nop
4553  F1        pop     psw
4554  C9        ret
4555  CD B2 0B  call    $0BB2
4558  CD 2B 0C  call    $0C2B
455B  C9        ret
455C  CD 4E 0B  call    $0B4E
455F  0D        dcr     c
4560  0A        ldax    b
4561  00        nop
4562  C9        ret
4563  CD 4E 0B  call    $0B4E
4566  20        nop                  ;Note: Alternative opcode used
4567  00        nop
4568  C9        ret
4569  00        nop
456A  00        nop
456B  00        nop
456C  00        nop
456D  00        nop
456E  00        nop
456F  00        nop
4570  00        nop
4571  00        nop
4572  00        nop
4573  00        nop
4574  00        nop
4575  80        add     b
4576  0C        inr     c
4577  44        mov     b,h
4578  45        mov     b,l
4579  46        mov     b,m
457A  D5        push    d
457B  16 00     mvi     d,$00
457D  5F        mov     e,a
457E  19        dad
457F  7E        mov     a,m
4580  D1        pop     d
4581  C9        ret
4582  F5        push    psw
4583  7C        mov     a,h
4584  CD A1 0B  call    $0BA1
4587  7D        mov     a,l
4588  CD A1 0B  call    $0BA1
458B  F1        pop     psw
458C  C9        ret
458D  F5        push    psw
458E  CD A1 0B  call    $0BA1
4591  3E 48     mvi     a,'H'
4593  CD 0E 0B  call    $0B0E
4596  F1        pop     psw
4597  C9        ret
4598  F5        push    psw
4599  0F        rrc
459A  0F        rrc
459B  0F        rrc
459C  0F        rrc
459D  CD 5F 0B  call    $0B5F
45A0  0F        rrc
45A1  0F        rrc
45A2  0F        rrc
45A3  0F        rrc
45A4  CD 5F 0B  call    $0B5F
45A7  F1        pop     psw
45A8  C9        ret
45A9  CD C3 0B  call    $0BC3
45AC  CD 3C 0A  call    $0A3C
45AF  08        nop                  ;Note: Alternative opcode used
45B0  D9        ret                  ;Note: Alternative opcode used
45B1  CD C3 0B  call    $0BC3
45B4  CD 3C 0A  call    $0A3C
45B7  08        nop                  ;Note: Alternative opcode used
45B8  D9        ret                  ;Note: Alternative opcode used
45B9  C9        ret
45BA  22 2A 0C  shld    $0C2A
45BD  CD 4E 0B  call    $0B4E
45C0  0D        dcr     c
45C1  0A        ldax    b
45C2  20        nop                  ;Note: Alternative opcode used
45C3  50        mov     d,b
45C4  20        nop                  ;Note: Alternative opcode used
45C5  43        mov     b,e
45C6  20        nop                  ;Note: Alternative opcode used
45C7  20        nop                  ;Note: Alternative opcode used
45C8  41        mov     b,c
45C9  20        nop                  ;Note: Alternative opcode used
45CA  46        mov     b,m
45CB  20        nop                  ;Note: Alternative opcode used
45CC  20        nop                  ;Note: Alternative opcode used
45CD  42        mov     b,d
45CE  20        nop                  ;Note: Alternative opcode used
45CF  43        mov     b,e
45D0  20        nop                  ;Note: Alternative opcode used
45D1  20        nop                  ;Note: Alternative opcode used
45D2  44        mov     b,h
45D3  20        nop                  ;Note: Alternative opcode used
45D4  45        mov     b,l
45D5  20        nop                  ;Note: Alternative opcode used
45D6  20        nop                  ;Note: Alternative opcode used
45D7  48        mov     c,b
45D8  20        nop                  ;Note: Alternative opcode used
45D9  4C        mov     c,h
45DA  20        nop                  ;Note: Alternative opcode used
45DB  20        nop                  ;Note: Alternative opcode used
45DC  53        mov     d,e
45DD  20        nop                  ;Note: Alternative opcode used
45DE  50        mov     d,b
45DF  0D        dcr     c
45E0  0A        ldax    b
45E1  00        nop
45E2  E1        pop     h
45E3  E5        push    h
45E4  F5        push    psw
45E5  CD 8B 0B  call    $0B8B
45E8  CD 6C 0C  call    $0C6C
45EB  F1        pop     psw
45EC  F5        push    psw
45ED  CD A1 0B  call    $0BA1
45F0  E1        pop     h
45F1  E5        push    h
45F2  7D        mov     a,l
45F3  CD A1 0B  call    $0BA1
45F6  CD 6C 0C  call    $0C6C
45F9  60        mov     h,b
45FA  69        mov     l,c
45FB  CD 8B 0B  call    $0B8B
45FE  CD 6C 0C  call    $0C6C
4601  62        mov     h,d
4602  6B        mov     l,e
4603  CD 8B 0B  call    $0B8B
4606  CD 6C 0C  call    $0C6C
4609  2A 2A 0C  lhld    $0C2A
460C  CD 8B 0B  call    $0B8B
460F  CD 6C 0C  call    $0C6C
4612  21 00 00  lxi     h,$0000
4615  39        dad     sp
4616  CD 8B 0B  call    $0B8B
4619  F1        pop     psw
461A  2A 2A 0C  lhld    $0C2A
461D  CD 65 0C  call    $0C65
4620  C9        ret
4621  02        stax    b
4622  F5        push    psw
4623  3A 4C 0C  lda     $0C4C
4626  FE 53     cpi     'S'
4628  CA 0D 09  jz      $090D
462B  FE 43     cpi     'C'
462D  CA 0D 09  jz      $090D
4630  CD 1B 0B  call    $0B1B
4633  32 4C 0C  sta     $0C4C
4636  F5        push    psw
4637  2F        cma
4638  3C        inr     a
4639  32 4D 0C  sta     $0C4D
463C  F1        pop     psw
463D  FE 03     cpi     $03
463F  C2 0D 09  jnz     $090D
4642  C7        rst     0
4643  00        nop
4644  00        nop
4645  F5        push    psw
4646  3A 4C 0C  lda     $0C4C
4649  FE 53     cpi     'S'
464B  CA 0D 09  jz      $090D
464E  CD 4E 0B  call    $0B4E
4651  07        rlc
4652  00        nop
4653  F1        pop     psw
4654  C9        ret
4655  CD B2 0B  call    $0BB2
4658  CD 2B 0C  call    $0C2B
465B  C9        ret
465C  CD 4E 0B  call    $0B4E
465F  0D        dcr     c
4660  0A        ldax    b
4661  00        nop
4662  C9        ret
4663  CD 4E 0B  call    $0B4E
4666  20        nop                  ;Note: Alternative opcode used
4667  00        nop
4668  C9        ret
4669  00        nop
466A  00        nop
466B  00        nop
466C  00        nop
466D  00        nop
466E  00        nop
466F  00        nop
4670  00        nop
4671  00        nop
4672  00        nop
4673  00        nop
4674  00        nop
4675  80        add     b
4676  0C        inr     c
4677  44        mov     b,h
4678  45        mov     b,l
4679  46        mov     b,m
467A  D5        push    d
467B  16 00     mvi     d,$00
467D  5F        mov     e,a
467E  19        dad
467F  7E        mov     a,m
4680  D1        pop     d
4681  C9        ret
4682  F5        push    psw
4683  7C        mov     a,h
4684  CD A1 0B  call    $0BA1
4687  7D        mov     a,l
4688  CD A1 0B  call    $0BA1
468B  F1        pop     psw
468C  C9        ret
468D  F5        push    psw
468E  CD A1 0B  call    $0BA1
4691  3E 48     mvi     a,'H'
4693  CD 0E 0B  call    $0B0E
4696  F1        pop     psw
4697  C9        ret
4698  F5        push    psw
4699  0F        rrc
469A  0F        rrc
469B  0F        rrc
469C  0F        rrc
469D  CD 5F 0B  call    $0B5F
46A0  0F        rrc
46A1  0F        rrc
46A2  0F        rrc
46A3  0F        rrc
46A4  CD 5F 0B  call    $0B5F
46A7  F1        pop     psw
46A8  C9        ret
46A9  CD C3 0B  call    $0BC3
46AC  CD 3C 0A  call    $0A3C
46AF  08        nop                  ;Note: Alternative opcode used
46B0  D9        ret                  ;Note: Alternative opcode used
46B1  CD C3 0B  call    $0BC3
46B4  CD 3C 0A  call    $0A3C
46B7  08        nop                  ;Note: Alternative opcode used
46B8  D9        ret                  ;Note: Alternative opcode used
46B9  C9        ret
46BA  22 2A 0C  shld    $0C2A
46BD  CD 4E 0B  call    $0B4E
46C0  0D        dcr     c
46C1  0A        ldax    b
46C2  20        nop                  ;Note: Alternative opcode used
46C3  50        mov     d,b
46C4  20        nop                  ;Note: Alternative opcode used
46C5  43        mov     b,e
46C6  20        nop                  ;Note: Alternative opcode used
46C7  20        nop                  ;Note: Alternative opcode used
46C8  41        mov     b,c
46C9  20        nop                  ;Note: Alternative opcode used
46CA  46        mov     b,m
46CB  20        nop                  ;Note: Alternative opcode used
46CC  20        nop                  ;Note: Alternative opcode used
46CD  42        mov     b,d
46CE  20        nop                  ;Note: Alternative opcode used
46CF  43        mov     b,e
46D0  20        nop                  ;Note: Alternative opcode used
46D1  20        nop                  ;Note: Alternative opcode used
46D2  44        mov     b,h
46D3  20        nop                  ;Note: Alternative opcode used
46D4  45        mov     b,l
46D5  20        nop                  ;Note: Alternative opcode used
46D6  20        nop                  ;Note: Alternative opcode used
46D7  48        mov     c,b
46D8  20        nop                  ;Note: Alternative opcode used
46D9  4C        mov     c,h
46DA  20        nop                  ;Note: Alternative opcode used
46DB  20        nop                  ;Note: Alternative opcode used
46DC  53        mov     d,e
46DD  20        nop                  ;Note: Alternative opcode used
46DE  50        mov     d,b
46DF  0D        dcr     c
46E0  0A        ldax    b
46E1  00        nop
46E2  E1        pop     h
46E3  E5        push    h
46E4  F5        push    psw
46E5  CD 8B 0B  call    $0B8B
46E8  CD 6C 0C  call    $0C6C
46EB  F1        pop     psw
46EC  F5        push    psw
46ED  CD A1 0B  call    $0BA1
46F0  E1        pop     h
46F1  E5        push    h
46F2  7D        mov     a,l
46F3  CD A1 0B  call    $0BA1
46F6  CD 6C 0C  call    $0C6C
46F9  60        mov     h,b
46FA  69        mov     l,c
46FB  CD 8B 0B  call    $0B8B
46FE  CD 6C 0C  call    $0C6C
4701  62        mov     h,d
4702  6B        mov     l,e
4703  CD 8B 0B  call    $0B8B
4706  CD 6C 0C  call    $0C6C
4709  2A 2A 0C  lhld    $0C2A
470C  CD 8B 0B  call    $0B8B
470F  CD 6C 0C  call    $0C6C
4712  21 00 00  lxi     h,$0000
4715  39        dad     sp
4716  CD 8B 0B  call    $0B8B
4719  F1        pop     psw
471A  2A 2A 0C  lhld    $0C2A
471D  CD 65 0C  call    $0C65
4720  C9        ret
4721  02        stax    b
4722  F5        push    psw
4723  3A 4C 0C  lda     $0C4C
4726  FE 53     cpi     'S'
4728  CA 0D 09  jz      $090D
472B  FE 43     cpi     'C'
472D  CA 0D 09  jz      $090D
4730  CD 1B 0B  call    $0B1B
4733  32 4C 0C  sta     $0C4C
4736  F5        push    psw
4737  2F        cma
4738  3C        inr     a
4739  32 4D 0C  sta     $0C4D
473C  F1        pop     psw
473D  FE 03     cpi     $03
473F  C2 0D 09  jnz     $090D
4742  C7        rst     0
4743  00        nop
4744  00        nop
4745  F5        push    psw
4746  3A 4C 0C  lda     $0C4C
4749  FE 53     cpi     'S'
474B  CA 0D 09  jz      $090D
474E  CD 4E 0B  call    $0B4E
4751  07        rlc
4752  00        nop
4753  F1        pop     psw
4754  C9        ret
4755  CD B2 0B  call    $0BB2
4758  CD 2B 0C  call    $0C2B
475B  C9        ret
475C  CD 4E 0B  call    $0B4E
475F  0D        dcr     c
4760  0A        ldax    b
4761  00        nop
4762  C9        ret
4763  CD 4E 0B  call    $0B4E
4766  20        nop                  ;Note: Alternative opcode used
4767  00        nop
4768  C9        ret
4769  00        nop
476A  00        nop
476B  00        nop
476C  00        nop
476D  00        nop
476E  00        nop
476F  00        nop
4770  00        nop
4771  00        nop
4772  00        nop
4773  00        nop
4774  00        nop
4775  80        add     b
4776  0C        inr     c
4777  44        mov     b,h
4778  45        mov     b,l
4779  46        mov     b,m
477A  D5        push    d
477B  16 00     mvi     d,$00
477D  5F        mov     e,a
477E  19        dad
477F  7E        mov     a,m
4780  D1        pop     d
4781  C9        ret
4782  F5        push    psw
4783  7C        mov     a,h
4784  CD A1 0B  call    $0BA1
4787  7D        mov     a,l
4788  CD A1 0B  call    $0BA1
478B  F1        pop     psw
478C  C9        ret
478D  F5        push    psw
478E  CD A1 0B  call    $0BA1
4791  3E 48     mvi     a,'H'
4793  CD 0E 0B  call    $0B0E
4796  F1        pop     psw
4797  C9        ret
4798  F5        push    psw
4799  0F        rrc
479A  0F        rrc
479B  0F        rrc
479C  0F        rrc
479D  CD 5F 0B  call    $0B5F
47A0  0F        rrc
47A1  0F        rrc
47A2  0F        rrc
47A3  0F        rrc
47A4  CD 5F 0B  call    $0B5F
47A7  F1        pop     psw
47A8  C9        ret
47A9  CD C3 0B  call    $0BC3
47AC  CD 3C 0A  call    $0A3C
47AF  08        nop                  ;Note: Alternative opcode used
47B0  D9        ret                  ;Note: Alternative opcode used
47B1  CD C3 0B  call    $0BC3
47B4  CD 3C 0A  call    $0A3C
47B7  08        nop                  ;Note: Alternative opcode used
47B8  D9        ret                  ;Note: Alternative opcode used
47B9  C9        ret
47BA  22 2A 0C  shld    $0C2A
47BD  CD 4E 0B  call    $0B4E
47C0  0D        dcr     c
47C1  0A        ldax    b
47C2  20        nop                  ;Note: Alternative opcode used
47C3  50        mov     d,b
47C4  20        nop                  ;Note: Alternative opcode used
47C5  43        mov     b,e
47C6  20        nop                  ;Note: Alternative opcode used
47C7  20        nop                  ;Note: Alternative opcode used
47C8  41        mov     b,c
47C9  20        nop                  ;Note: Alternative opcode used
47CA  46        mov     b,m
47CB  20        nop                  ;Note: Alternative opcode used
47CC  20        nop                  ;Note: Alternative opcode used
47CD  42        mov     b,d
47CE  20        nop                  ;Note: Alternative opcode used
47CF  43        mov     b,e
47D0  20        nop                  ;Note: Alternative opcode used
47D1  20        nop                  ;Note: Alternative opcode used
47D2  44        mov     b,h
47D3  20        nop                  ;Note: Alternative opcode used
47D4  45        mov     b,l
47D5  20        nop                  ;Note: Alternative opcode used
47D6  20        nop                  ;Note: Alternative opcode used
47D7  48        mov     c,b
47D8  20        nop                  ;Note: Alternative opcode used
47D9  4C        mov     c,h
47DA  20        nop                  ;Note: Alternative opcode used
47DB  20        nop                  ;Note: Alternative opcode used
47DC  53        mov     d,e
47DD  20        nop                  ;Note: Alternative opcode used
47DE  50        mov     d,b
47DF  0D        dcr     c
47E0  0A        ldax    b
47E1  00        nop
47E2  E1        pop     h
47E3  E5        push    h
47E4  F5        push    psw
47E5  CD 8B 0B  call    $0B8B
47E8  CD 6C 0C  call    $0C6C
47EB  F1        pop     psw
47EC  F5        push    psw
47ED  CD A1 0B  call    $0BA1
47F0  E1        pop     h
47F1  E5        push    h
47F2  7D        mov     a,l
47F3  CD A1 0B  call    $0BA1
47F6  CD 6C 0C  call    $0C6C
47F9  60        mov     h,b
47FA  69        mov     l,c
47FB  CD 8B 0B  call    $0B8B
47FE  CD 6C 0C  call    $0C6C
4801  62        mov     h,d
4802  6B        mov     l,e
4803  CD 8B 0B  call    $0B8B
4806  CD 6C 0C  call    $0C6C
4809  2A 2A 0C  lhld    $0C2A
480C  CD 8B 0B  call    $0B8B
480F  CD 6C 0C  call    $0C6C
4812  21 00 00  lxi     h,$0000
4815  39        dad     sp
4816  CD 8B 0B  call    $0B8B
4819  F1        pop     psw
481A  2A 2A 0C  lhld    $0C2A
481D  CD 65 0C  call    $0C65
4820  C9        ret
4821  02        stax    b
4822  F5        push    psw
4823  3A 4C 0C  lda     $0C4C
4826  FE 53     cpi     'S'
4828  CA 0D 09  jz      $090D
482B  FE 43     cpi     'C'
482D  CA 0D 09  jz      $090D
4830  CD 1B 0B  call    $0B1B
4833  32 4C 0C  sta     $0C4C
4836  F5        push    psw
4837  2F        cma
4838  3C        inr     a
4839  32 4D 0C  sta     $0C4D
483C  F1        pop     psw
483D  FE 03     cpi     $03
483F  C2 0D 09  jnz     $090D
4842  C7        rst     0
4843  00        nop
4844  00        nop
4845  F5        push    psw
4846  3A 4C 0C  lda     $0C4C
4849  FE 53     cpi     'S'
484B  CA 0D 09  jz      $090D
484E  CD 4E 0B  call    $0B4E
4851  07        rlc
4852  00        nop
4853  F1        pop     psw
4854  C9        ret
4855  CD B2 0B  call    $0BB2
4858  CD 2B 0C  call    $0C2B
485B  C9        ret
485C  CD 4E 0B  call    $0B4E
485F  0D        dcr     c
4860  0A        ldax    b
4861  00        nop
4862  C9        ret
4863  CD 4E 0B  call    $0B4E
4866  20        nop                  ;Note: Alternative opcode used
4867  00        nop
4868  C9        ret
4869  00        nop
486A  00        nop
486B  00        nop
486C  00        nop
486D  00        nop
486E  00        nop
486F  00        nop
4870  00        nop
4871  00        nop
4872  00        nop
4873  00        nop
4874  00        nop
4875  80        add     b
4876  0C        inr     c
4877  44        mov     b,h
4878  45        mov     b,l
4879  46        mov     b,m
487A  D5        push    d
487B  16 00     mvi     d,$00
487D  5F        mov     e,a
487E  19        dad
487F  7E        mov     a,m
4880  D1        pop     d
4881  C9        ret
4882  F5        push    psw
4883  7C        mov     a,h
4884  CD A1 0B  call    $0BA1
4887  7D        mov     a,l
4888  CD A1 0B  call    $0BA1
488B  F1        pop     psw
488C  C9        ret
488D  F5        push    psw
488E  CD A1 0B  call    $0BA1
4891  3E 48     mvi     a,'H'
4893  CD 0E 0B  call    $0B0E
4896  F1        pop     psw
4897  C9        ret
4898  F5        push    psw
4899  0F        rrc
489A  0F        rrc
489B  0F        rrc
489C  0F        rrc
489D  CD 5F 0B  call    $0B5F
48A0  0F        rrc
48A1  0F        rrc
48A2  0F        rrc
48A3  0F        rrc
48A4  CD 5F 0B  call    $0B5F
48A7  F1        pop     psw
48A8  C9        ret
48A9  CD C3 0B  call    $0BC3
48AC  CD 3C 0A  call    $0A3C
48AF  08        nop                  ;Note: Alternative opcode used
48B0  D9        ret                  ;Note: Alternative opcode used
48B1  CD C3 0B  call    $0BC3
48B4  CD 3C 0A  call    $0A3C
48B7  08        nop                  ;Note: Alternative opcode used
48B8  D9        ret                  ;Note: Alternative opcode used
48B9  C9        ret
48BA  22 2A 0C  shld    $0C2A
48BD  CD 4E 0B  call    $0B4E
48C0  0D        dcr     c
48C1  0A        ldax    b
48C2  20        nop                  ;Note: Alternative opcode used
48C3  50        mov     d,b
48C4  20        nop                  ;Note: Alternative opcode used
48C5  43        mov     b,e
48C6  20        nop                  ;Note: Alternative opcode used
48C7  20        nop                  ;Note: Alternative opcode used
48C8  41        mov     b,c
48C9  20        nop                  ;Note: Alternative opcode used
48CA  46        mov     b,m
48CB  20        nop                  ;Note: Alternative opcode used
48CC  20        nop                  ;Note: Alternative opcode used
48CD  42        mov     b,d
48CE  20        nop                  ;Note: Alternative opcode used
48CF  43        mov     b,e
48D0  20        nop                  ;Note: Alternative opcode used
48D1  20        nop                  ;Note: Alternative opcode used
48D2  44        mov     b,h
48D3  20        nop                  ;Note: Alternative opcode used
48D4  45        mov     b,l
48D5  20        nop                  ;Note: Alternative opcode used
48D6  20        nop                  ;Note: Alternative opcode used
48D7  48        mov     c,b
48D8  20        nop                  ;Note: Alternative opcode used
48D9  4C        mov     c,h
48DA  20        nop                  ;Note: Alternative opcode used
48DB  20        nop                  ;Note: Alternative opcode used
48DC  53        mov     d,e
48DD  20        nop                  ;Note: Alternative opcode used
48DE  50        mov     d,b
48DF  0D        dcr     c
48E0  0A        ldax    b
48E1  00        nop
48E2  E1        pop     h
48E3  E5        push    h
48E4  F5        push    psw
48E5  CD 8B 0B  call    $0B8B
48E8  CD 6C 0C  call    $0C6C
48EB  F1        pop     psw
48EC  F5        push    psw
48ED  CD A1 0B  call    $0BA1
48F0  E1        pop     h
48F1  E5        push    h
48F2  7D        mov     a,l
48F3  CD A1 0B  call    $0BA1
48F6  CD 6C 0C  call    $0C6C
48F9  60        mov     h,b
48FA  69        mov     l,c
48FB  CD 8B 0B  call    $0B8B
48FE  CD 6C 0C  call    $0C6C
4901  62        mov     h,d
4902  6B        mov     l,e
4903  CD 8B 0B  call    $0B8B
4906  CD 6C 0C  call    $0C6C
4909  2A 2A 0C  lhld    $0C2A
490C  CD 8B 0B  call    $0B8B
490F  CD 6C 0C  call    $0C6C
4912  21 00 00  lxi     h,$0000
4915  39        dad     sp
4916  CD 8B 0B  call    $0B8B
4919  F1        pop     psw
491A  2A 2A 0C  lhld    $0C2A
491D  CD 65 0C  call    $0C65
4920  C9        ret
4921  02        stax    b
4922  F5        push    psw
4923  3A 4C 0C  lda     $0C4C
4926  FE 53     cpi     'S'
4928  CA 0D 09  jz      $090D
492B  FE 43     cpi     'C'
492D  CA 0D 09  jz      $090D
4930  CD 1B 0B  call    $0B1B
4933  32 4C 0C  sta     $0C4C
4936  F5        push    psw
4937  2F        cma
4938  3C        inr     a
4939  32 4D 0C  sta     $0C4D
493C  F1        pop     psw
493D  FE 03     cpi     $03
493F  C2 0D 09  jnz     $090D
4942  C7        rst     0
4943  00        nop
4944  00        nop
4945  F5        push    psw
4946  3A 4C 0C  lda     $0C4C
4949  FE 53     cpi     'S'
494B  CA 0D 09  jz      $090D
494E  CD 4E 0B  call    $0B4E
4951  07        rlc
4952  00        nop
4953  F1        pop     psw
4954  C9        ret
4955  CD B2 0B  call    $0BB2
4958  CD 2B 0C  call    $0C2B
495B  C9        ret
495C  CD 4E 0B  call    $0B4E
495F  0D        dcr     c
4960  0A        ldax    b
4961  00        nop
4962  C9        ret
4963  CD 4E 0B  call    $0B4E
4966  20        nop                  ;Note: Alternative opcode used
4967  00        nop
4968  C9        ret
4969  00        nop
496A  00        nop
496B  00        nop
496C  00        nop
496D  00        nop
496E  00        nop
496F  00        nop
4970  00        nop
4971  00        nop
4972  00        nop
4973  00        nop
4974  00        nop
4975  80        add     b
4976  0C        inr     c
4977  44        mov     b,h
4978  45        mov     b,l
4979  46        mov     b,m
497A  D5        push    d
497B  16 00     mvi     d,$00
497D  5F        mov     e,a
497E  19        dad
497F  7E        mov     a,m
4980  D1        pop     d
4981  C9        ret
4982  F5        push    psw
4983  7C        mov     a,h
4984  CD A1 0B  call    $0BA1
4987  7D        mov     a,l
4988  CD A1 0B  call    $0BA1
498B  F1        pop     psw
498C  C9        ret
498D  F5        push    psw
498E  CD A1 0B  call    $0BA1
4991  3E 48     mvi     a,'H'
4993  CD 0E 0B  call    $0B0E
4996  F1        pop     psw
4997  C9        ret
4998  F5        push    psw
4999  0F        rrc
499A  0F        rrc
499B  0F        rrc
499C  0F        rrc
499D  CD 5F 0B  call    $0B5F
49A0  0F        rrc
49A1  0F        rrc
49A2  0F        rrc
49A3  0F        rrc
49A4  CD 5F 0B  call    $0B5F
49A7  F1        pop     psw
49A8  C9        ret
49A9  CD C3 0B  call    $0BC3
49AC  CD 3C 0A  call    $0A3C
49AF  08        nop                  ;Note: Alternative opcode used
49B0  D9        ret                  ;Note: Alternative opcode used
49B1  CD C3 0B  call    $0BC3
49B4  CD 3C 0A  call    $0A3C
49B7  08        nop                  ;Note: Alternative opcode used
49B8  D9        ret                  ;Note: Alternative opcode used
49B9  C9        ret
49BA  22 2A 0C  shld    $0C2A
49BD  CD 4E 0B  call    $0B4E
49C0  0D        dcr     c
49C1  0A        ldax    b
49C2  20        nop                  ;Note: Alternative opcode used
49C3  50        mov     d,b
49C4  20        nop                  ;Note: Alternative opcode used
49C5  43        mov     b,e
49C6  20        nop                  ;Note: Alternative opcode used
49C7  20        nop                  ;Note: Alternative opcode used
49C8  41        mov     b,c
49C9  20        nop                  ;Note: Alternative opcode used
49CA  46        mov     b,m
49CB  20        nop                  ;Note: Alternative opcode used
49CC  20        nop                  ;Note: Alternative opcode used
49CD  42        mov     b,d
49CE  20        nop                  ;Note: Alternative opcode used
49CF  43        mov     b,e
49D0  20        nop                  ;Note: Alternative opcode used
49D1  20        nop                  ;Note: Alternative opcode used
49D2  44        mov     b,h
49D3  20        nop                  ;Note: Alternative opcode used
49D4  45        mov     b,l
49D5  20        nop                  ;Note: Alternative opcode used
49D6  20        nop                  ;Note: Alternative opcode used
49D7  48        mov     c,b
49D8  20        nop                  ;Note: Alternative opcode used
49D9  4C        mov     c,h
49DA  20        nop                  ;Note: Alternative opcode used
49DB  20        nop                  ;Note: Alternative opcode used
49DC  53        mov     d,e
49DD  20        nop                  ;Note: Alternative opcode used
49DE  50        mov     d,b
49DF  0D        dcr     c
49E0  0A        ldax    b
49E1  00        nop
49E2  E1        pop     h
49E3  E5        push    h
49E4  F5        push    psw
49E5  CD 8B 0B  call    $0B8B
49E8  CD 6C 0C  call    $0C6C
49EB  F1        pop     psw
49EC  F5        push    psw
49ED  CD A1 0B  call    $0BA1
49F0  E1        pop     h
49F1  E5        push    h
49F2  7D        mov     a,l
49F3  CD A1 0B  call    $0BA1
49F6  CD 6C 0C  call    $0C6C
49F9  60        mov     h,b
49FA  69        mov     l,c
49FB  CD 8B 0B  call    $0B8B
49FE  CD 6C 0C  call    $0C6C
4A01  62        mov     h,d
4A02  6B        mov     l,e
4A03  CD 8B 0B  call    $0B8B
4A06  CD 6C 0C  call    $0C6C
4A09  2A 2A 0C  lhld    $0C2A
4A0C  CD 8B 0B  call    $0B8B
4A0F  CD 6C 0C  call    $0C6C
4A12  21 00 00  lxi     h,$0000
4A15  39        dad     sp
4A16  CD 8B 0B  call    $0B8B
4A19  F1        pop     psw
4A1A  2A 2A 0C  lhld    $0C2A
4A1D  CD 65 0C  call    $0C65
4A20  C9        ret
4A21  02        stax    b
4A22  F5        push    psw
4A23  3A 4C 0C  lda     $0C4C
4A26  FE 53     cpi     'S'
4A28  CA 0D 09  jz      $090D
4A2B  FE 43     cpi     'C'
4A2D  CA 0D 09  jz      $090D
4A30  CD 1B 0B  call    $0B1B
4A33  32 4C 0C  sta     $0C4C
4A36  F5        push    psw
4A37  2F        cma
4A38  3C        inr     a
4A39  32 4D 0C  sta     $0C4D
4A3C  F1        pop     psw
4A3D  FE 03     cpi     $03
4A3F  C2 0D 09  jnz     $090D
4A42  C7        rst     0
4A43  00        nop
4A44  00        nop
4A45  F5        push    psw
4A46  3A 4C 0C  lda     $0C4C
4A49  FE 53     cpi     'S'
4A4B  CA 0D 09  jz      $090D
4A4E  CD 4E 0B  call    $0B4E
4A51  07        rlc
4A52  00        nop
4A53  F1        pop     psw
4A54  C9        ret
4A55  CD B2 0B  call    $0BB2
4A58  CD 2B 0C  call    $0C2B
4A5B  C9        ret
4A5C  CD 4E 0B  call    $0B4E
4A5F  0D        dcr     c
4A60  0A        ldax    b
4A61  00        nop
4A62  C9        ret
4A63  CD 4E 0B  call    $0B4E
4A66  20        nop                  ;Note: Alternative opcode used
4A67  00        nop
4A68  C9        ret
4A69  00        nop
4A6A  00        nop
4A6B  00        nop
4A6C  00        nop
4A6D  00        nop
4A6E  00        nop
4A6F  00        nop
4A70  00        nop
4A71  00        nop
4A72  00        nop
4A73  00        nop
4A74  00        nop
4A75  80        add     b
4A76  0C        inr     c
4A77  44        mov     b,h
4A78  45        mov     b,l
4A79  46        mov     b,m
4A7A  D5        push    d
4A7B  16 00     mvi     d,$00
4A7D  5F        mov     e,a
4A7E  19        dad
4A7F  7E        mov     a,m
4A80  D1        pop     d
4A81  C9        ret
4A82  F5        push    psw
4A83  7C        mov     a,h
4A84  CD A1 0B  call    $0BA1
4A87  7D        mov     a,l
4A88  CD A1 0B  call    $0BA1
4A8B  F1        pop     psw
4A8C  C9        ret
4A8D  F5        push    psw
4A8E  CD A1 0B  call    $0BA1
4A91  3E 48     mvi     a,'H'
4A93  CD 0E 0B  call    $0B0E
4A96  F1        pop     psw
4A97  C9        ret
4A98  F5        push    psw
4A99  0F        rrc
4A9A  0F        rrc
4A9B  0F        rrc
4A9C  0F        rrc
4A9D  CD 5F 0B  call    $0B5F
4AA0  0F        rrc
4AA1  0F        rrc
4AA2  0F        rrc
4AA3  0F        rrc
4AA4  CD 5F 0B  call    $0B5F
4AA7  F1        pop     psw
4AA8  C9        ret
4AA9  CD C3 0B  call    $0BC3
4AAC  CD 3C 0A  call    $0A3C
4AAF  08        nop                  ;Note: Alternative opcode used
4AB0  D9        ret                  ;Note: Alternative opcode used
4AB1  CD C3 0B  call    $0BC3
4AB4  CD 3C 0A  call    $0A3C
4AB7  08        nop                  ;Note: Alternative opcode used
4AB8  D9        ret                  ;Note: Alternative opcode used
4AB9  C9        ret
4ABA  22 2A 0C  shld    $0C2A
4ABD  CD 4E 0B  call    $0B4E
4AC0  0D        dcr     c
4AC1  0A        ldax    b
4AC2  20        nop                  ;Note: Alternative opcode used
4AC3  50        mov     d,b
4AC4  20        nop                  ;Note: Alternative opcode used
4AC5  43        mov     b,e
4AC6  20        nop                  ;Note: Alternative opcode used
4AC7  20        nop                  ;Note: Alternative opcode used
4AC8  41        mov     b,c
4AC9  20        nop                  ;Note: Alternative opcode used
4ACA  46        mov     b,m
4ACB  20        nop                  ;Note: Alternative opcode used
4ACC  20        nop                  ;Note: Alternative opcode used
4ACD  42        mov     b,d
4ACE  20        nop                  ;Note: Alternative opcode used
4ACF  43        mov     b,e
4AD0  20        nop                  ;Note: Alternative opcode used
4AD1  20        nop                  ;Note: Alternative opcode used
4AD2  44        mov     b,h
4AD3  20        nop                  ;Note: Alternative opcode used
4AD4  45        mov     b,l
4AD5  20        nop                  ;Note: Alternative opcode used
4AD6  20        nop                  ;Note: Alternative opcode used
4AD7  48        mov     c,b
4AD8  20        nop                  ;Note: Alternative opcode used
4AD9  4C        mov     c,h
4ADA  20        nop                  ;Note: Alternative opcode used
4ADB  20        nop                  ;Note: Alternative opcode used
4ADC  53        mov     d,e
4ADD  20        nop                  ;Note: Alternative opcode used
4ADE  50        mov     d,b
4ADF  0D        dcr     c
4AE0  0A        ldax    b
4AE1  00        nop
4AE2  E1        pop     h
4AE3  E5        push    h
4AE4  F5        push    psw
4AE5  CD 8B 0B  call    $0B8B
4AE8  CD 6C 0C  call    $0C6C
4AEB  F1        pop     psw
4AEC  F5        push    psw
4AED  CD A1 0B  call    $0BA1
4AF0  E1        pop     h
4AF1  E5        push    h
4AF2  7D        mov     a,l
4AF3  CD A1 0B  call    $0BA1
4AF6  CD 6C 0C  call    $0C6C
4AF9  60        mov     h,b
4AFA  69        mov     l,c
4AFB  CD 8B 0B  call    $0B8B
4AFE  CD 00 00  call    $0000
4B01            end
