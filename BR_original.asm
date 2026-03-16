;*************************
;* Building Rescue V1.1  *
;*                       *
;*        for E500       *
;*                       *
;* H6 7/10               *
;* By ÓÄ² ¹Ý·Á           *
;*         &             *
;*    ¹Þ²Ñ ¼®¸ÆÝ    @   *
;*************************
;
	ORG 0BB000H
DEMOT: EQU 300 ; ¸Ø± ÃÞÓ À²Ñ
; µÝ¶² Ã²·Þ
_O3C:   EQU 0
_O3CS:  EQU 1
_O3D:   EQU 2
_O3DS:  EQU 3
_O3E:   EQU 4
_O3F:   EQU 5
_O3FS:  EQU 6
_O3G:   EQU 7
_O3GS:  EQU 8
_O3A:   EQU 9
_O3AS:  EQU 10
_O3B:   EQU 11

_O4C:   EQU 12
_O4CS:  EQU 13
_O4D:   EQU 14
_O4DS:  EQU 15
_O4E:   EQU 16
_O4F:   EQU 17
_O4FS:  EQU 18
_O4G:   EQU 19
_O4GS:  EQU 20
_O4A:   EQU 21
_O4AS:  EQU 22
_O4B:   EQU 23

_O5C:   EQU 24
_O5CS:  EQU 25
_O5D:   EQU 26
_O5DS:  EQU 27
_O5E:   EQU 28
_O5F:   EQU 29
_O5FS:  EQU 30
_O5G:   EQU 31
_O5GS:  EQU 32
_O5A:   EQU 33
_O5AS:  EQU 34
_O5B:   EQU 35
_RR:    EQU 36
_END:   EQU 254
CX:     EQU 0D6H
BX:     EQU 0D4H
KI:     EQU 0F2H
KO:     EQU 0F0H
OTO:    EQU 0FDH
WW11:   EQU 18
TIME9:   EQU 10
PAD:     EQU 28
OTF:     EQU 14
TI01:    EQU 15
KEY: EQU 21
FX:  EQU 22
FY:  EQU 23
FLOOR: EQU 24
MYY: EQU 25
DCNT: EQU 26
MGX: EQU 31
MGY: EQU 32
MX: EQU 40
MY: EQU 41
MZ: EQU 42
DEAD: EQU 43
SCORE: EQU 44
TIME:  EQU 46
RRR: EQU 48
QX: EQU 50
QY: EQU 51
QZ: EQU 52
HIS: EQU 55
WX:  EQU 27  
WY:  EQU 28
WZ:  EQU 29
WO:  EQU 30
WK1: EQU 60
WK2: EQU 61
WK3: EQU 62
WK4: EQU 63
WK5: EQU 64
MAN: EQU 65
MCNT: EQU 66
MFLG: EQU 67
TOTO: EQU 76
QQQ:   EQU 79
SSS:   EQU 81
SPEED: EQU 83
WS:    EQU 84
WW:    EQU 86
MAPADR: EQU 87
;
CCC:   EQU 93
FULL:  EQU 94
WFULL: EQU 95
AYY:   EQU 96
AXX:   EQU 97
WW1:   EQU 98
WW2:   EQU 99
GX:    EQU 100
GY:    EQU 101
GYY:   EQU 102
GS:    EQU 103
GW1:   EQU 104
GW2:   EQU 105
GW3:   EQU 106
MONOC: EQU 107
TKMAX: EQU 108
CLCNT: EQU 109
SCCNT: EQU 110
ROUND: EQU 112
UPF:   EQU 114
GG1:   EQU 115
HIT:   EQU 116
TKMAX1: EQU 117
TKMAX2: EQU 118
TKMAX3: EQU 119
STCNT:  EQU 120
RRX:    EQU 121
RRY:    EQU 122
RRZ:    EQU 123
MONO:   EQU 124
MONOS:  EQU 125
;RRY:   EQU 126
RX:     EQU 126
RY:     EQU 128
RZ:     EQU 129
WRND:   EQU 130
WCNT:   EQU 132
SSX:    EQU 133
SSY:    EQU 134
GGG:    EQU 135
ZXX:    EQU 136
ZCC:    EQU 137
WAYP:   EQU 138
WAYC:   EQU 139
RMUKI:  EQU 140
DYY:    EQU 141
WDYY:   EQU 142
WAYZ:   EQU 143
;TIME1:   EQU 144
SST:    EQU 146
SCRF:   EQU 147
SCRCNT:  EQU 148
PTNNO:   EQU 149
CNTF:    EQU 150
UTIME:   EQU 151
AX:      EQU 152
AY:      EQU 153
TI:      EQU 154
UU:      EQU 155
AZ:      EQU 159
XX:      EQU 160
UFOOTO:  EQU 161
TCNT:    EQU 162
XCNT:    EQU 163
VV:      EQU 164
WDC:     EQU 165
UFOF:    EQU 166
UFOX:    EQU 167
UFOY:    EQU 168
UFOCNT:  EQU 169
UFOAX:   EQU 170
UFOAY:   EQU 171
TMM:     EQU 172
MUCNT:   EQU 173
UFOM:    EQU 174
PCNT:    EQU 175
SVVEC:   EQU 179
MUSCNT:  EQU 182
MUSP:    EQU 185
TTA:     EQU 186
TTAA:    EQU 187
TTX:     EQU 188
TTY:     EQU 191
TTI:     EQU 194  
TMVEC:   EQU 0BFCC6H
;
IOCS: EQU 0FFFE8H
MAIN:   PRE 30H
        MVW (CX),0
        PRE 30H
        MVW (BX),0
        PRE 30H
        MV A,[(0E6H)+8]
        MV IL,48H
        CALLF IOCS
        MV IL,51H
        CALLF IOCS
        PUSHU IMR
        PRE 30H
        MV [--U],(0ECH)
        PRE 30H
        MV (0ECH),0
        AND (0FDH),0FDH
        MV (TOTO),(OTO)
        MV (OTF),1
        MVW (HIS),2000
AGIN:  
        CALLF TRIG0
        CMP A,LEND
        CMP A,0
        JRNZ AGIN
;
        CALLF VRAMCL2
        CALLF VRAMCL1
        CALLF VRAMPP
;
        MV Y,TITG
        CALLF DTITG
        MV Y,TITH
        CALLF DTITH
AA5:
        CALLF VRAMPP
        CALLF VRAMPP
        CALLF VRAMPP2
        CALLF TRIG0
        CMP A,255
        JPZ LEND
        CMP A,0
        JRZ AA5
;
        CALLF VRAMCL1
        CALLF VRAMPP
;
AA50:
        CALLF TITS
        CALLF VRAMPP

        CALLF TRIG0
        CMP A,255
        JPZ LEND
        CMP A,0
        JRNZ  AA50
AA6:
        CALLF TRIG0
        CMP A,255
        JPZ LEND
        CMP A,0
        JRZ AA6
;
        MV I,40000
        WAIT 
;
        CALLF VRAMCL1
        CALLF VRAMPP
        MV (ROUND),1
        MV (MAN),3
        MV (UPF),0
        MVW (SCORE),0
        MV (FLOOR),1
        MV (PCNT),0
        MV (MY),128
UUR:
        CALLF SINT
        CALLF QINT
        MV (0FBH),0
        MV (UFOF),0
        MV (UFOCNT),0
        MV (TIME),0
        MV (FULL),100
        MV (DEAD),0
        CALLF VRAMCL1
        CALLF TIT
        CALLF MKDOT
        CALLF SWIN
        CALLF VWIN
        CALLF DISP
        CMP (PCNT),1
        JRZ INTX
        MV (MX),5
        MV (MYY),4
        MV (MGX),13*(6+5)
        MV (MGY),(4+1)*6-1
INTX:
        MV (MZ),4
        MV (AX),(MX)
        MV (AY),(MYY)
;
        MV A,(MZ)
        CALLF PUTD
        CALLF PUTC
;
        CALLF READY
        CALLF VRAMPP
        CMP (PCNT),1
        JRZ PT1
        MV Y,OTOTBL1
        MV X,MUSIC1L ; ½À°Ä (Å¶Þ²)
        CALLF MPLAY
        JR PT2
PT1:
        MV Y,OTOTBL1
        MV X,MUSIC1S ; ½À°Ä (Ð¼Þ¶²)
        CALLF MPLAY
PT2:
        MV I,65000
        WAIT
        WAIT
        WAIT
        WAIT
        MV (0FBH),080H
LOPXX:
        MV I,1
        WAIT
        CALLF VRAMCL1
        CALLF TIT
        CALLF KEYP
        CALLF MWIN
        CALLF DISP
        CALLF MMONO
        CALLF MUFO
        MV (AY),(MYY)
        MV (AX),(MX)
        MV A,(MZ)
        CALLF PUTD
        MV A,(MZ)
        CALLF PUTC
;
        CALLF VRAMPP
        MV (0FBH),080H
        INC (TIME)
        CMP (DEAD),0
        JRZ LOPXX
;
        MV (0FBH),0
        CMP (DEAD),3
        JPZ LEND ; [BASIC] 
        CMP (DEAD),1
        JPZ MDEAD ; Ô×Ú
CLEAR:   
        MV (0FBH),0
        CALLF VRAMCL1
        CALLF TIT
        MV (AX),(MX)
        MV (AY),(MYY)
        MV A,(MZ)
        CALLF PUTD
        CALLF PUTC
;
        CALLF DISP
        CALLF VRAMPP
        MV X,MUSIC6
        MV Y,OTOTBL1
        CALLF MPLAY
;
        MV I,20000
        WAIT  
        CALLF BONS
;
        MV A,(ROUND)
        AND A,3
        JRNZ CLL1
;
;***************
;* ENDING
;***************

        CALLF VRAMCL2
        CALLF VRAMCL1
        CALLF VRAMPP
;
        MV Y,TITC1
        CALLF DTITG
        MV Y,TITC2
        CALLF DTITH
        MV (MCNT),0
        MV (MFLG),0
CLL0:
        PUSHU I
        CALLF VRAMPP
        MV A,(MCNT)
        MV X,MUSICA
        ADD X,A
        ADD X,A
        MV Y,OTOTBL0
        CALLF MPLAY
        CALLF VRAMPP2
        POPU I
        CALLF TRIG0
        CMP A,255
        JPZ LEND
        CMP A,0
        JRNZ CLL01
        MV A,(MCNT)
        INC A
        AND A,127
        MV (MCNT),A
        JRNZ CB1
        CMP (MFLG),0
        JRNZ CLL01
        MV (MFLG),1
CB1:
        JR CLL0
;
CLL01:
        CALLF VRAMCL1
        CALLF VRAMPP
;
CLL1:
        INC (ROUND)
        MV (DEAD),0
        MV (FLOOR),1
        MV (MY),128
        MV I,40000
        WAIT
        MV (PCNT),0
        JP UUR
;
MDEAD:  
        MV (0FDH),0
        CALLF VRAMCL1
        CALLF TIT
        CALLF DISP
        CALLF VRAMPP
        CALLF DOWN
        MV X,MUSIC3 ;   Ô×Ú Ð­°¼Þ¯¸
        MV Y,OTOTBL1
        CALLF MPLAY
        DEC (MAN)
        JRZ PP1
;
        CALLF DSCORE
HR1:    CALLF TRIG0
        CMP A,255
        JPZ LEND
        CMP A,0
        JRZ HR1
        MV (PCNT),1
        JP UUR
PP1:
        MV I,40000
        WAIT
        CALLF OVER
        MV BA,(HIS)
        MV I,(SCORE)
        SUB BA,I
        JRNC PPT
        MVW (HIS),(SCORE)
PPT:
         MV I,40000
         WAIT
PP2:
        CALLF TRIG0
        CMP A,255
        JRZ LEND
        CMP A,0
        JRZ PP2
        MV I,40000
        WAIT
PP21:
        CALLF TRIG0
        CMP A,255
        JRZ LEND
        CMP A,0
        JRZ PP21
;
        JP AGIN
;******************
;* ±Ä ¼®Ø
;******************
;
LEND:   
        MV (0FBH),0
        CALLF VRAMCL1
        CALLF VRAMPP
LEND2:  MV (OTO),(TOTO)
        OR (0FDH),002H
        MV (0ECH),[U++]
        POPU IMR
        MV IL,051H
        CALLF IOCS
        RETF
;******************
;*  UFO Ê¯¾² 
;******************
;
VUFO:        
        CMP (UFOF),0
        JPNZ KEND
        CMP (RX),0
        JRZ VU00
        MV (UFOM),1
        MV (UFOX),6*13+8*13-13
        MV (UFOY),8
        MV (UFOF),1
        MV (UFOCNT),6
        MV (UFOAX),7
        MV (UFOAY),1
        MV (UFOOTO),3
        RETF
VU00:
        MV (UFOM),0
        MV (UFOX),6*13
        MV (UFOY),8
        MV (UFOF),1
        MV (UFOCNT),6
        MV (UFOAX),0
        MV (UFOAY),1
        RETF
;
MUFO:
        CMP (UFOF),0
        JPZ KEND
        CMP (UFOM),0
        JPZ MUXX
        MV (UFOF),0
;
        CMP (UFOX),6*13
        JPZ KEND
;
        MV (UFOF),1
        XOR (UFOCNT),1
        MV A,(UFOCNT)
;
        SUB (UFOX),A
        MV (GX),(UFOX)
        MV (GY),(UFOY)
;
        MV X,UFOD1
        CALLF GDELV1
        MV X,UFOC1
        CALLF GPRTV1
;
        MV A,(UFOCNT)
        CMP A,6
        JRZ UF1
        DEC (UFOAX)
UF1:
        JR UF1X
;
MUXX:
        MV (UFOF),0
        CMP (UFOX),6*13+13*7
        JPZ KEND
;
        MV (UFOF),1
        XOR (UFOCNT),1
        MV A,(UFOCNT)
;
        ADD (UFOX),A
        MV (GX),(UFOX)
        MV (GY),(UFOY)
;
        MV X,UFOD1
        CALLF GDELV1
        MV X,UFOC1
        CALLF GPRTV1
;
        MV A,(UFOCNT)
        CMP A,6
        JRZ UF1X
        INC (UFOAX)
UF1X:
        CALLF RND
        AND A,7
        CMP A,6
        JRC UF11X
        MV (RX),(UFOAX)
        MV (RY),(UFOAY)
        MV (MONO),029H
        MV (MONOS),4
        CALLF VMONO
UF11X:
        RETF
;
SADR:   
        PUSHU I
        PUSHU X
        MV (RZ),A
        MV X,WTBL
        MV IL,8
        MV A,(RY)
SA30:
        CMP A,0
        JRZ SA31
        ADD X,IL
        DEC A
        JRNZ SA30
;
SA31:
        MV A,(RX)
SA32:
        CMP A,0
        JRZ SA33
        INC X
        DEC A
        JRNZ SA32
SA33:
        MV A,(RZ)
        MV [X],A
        POPU X
        POPU I
        RETF
;
;*******************
;* ³´ 1ÄÞ¯Ä ½¸Û°Ù
;*******************
;
SCRUV1:
        PUSHU X
        PUSHU I
        MV IL,13*8
        MV X,VRAM1+13*6
        MV A,192

SCRU1:  MV (0),[X]
        ADD X,A
        MV (1),[X]
        ADD X,A
        MV (2),[X]
        ADD X,A
        MV (3),[X]
        ADD X,A
        MV (4),[X]
        ADD X,A
        MV (5),[X]
        RC
        SHR (5)
        SHR (4)
        SHR (3)
        SHR (2)
        SHR (1)
        SHR (0)
        MV [X],(5)
        SUB X,A
        MV [X],(4)
        SUB X,A
        MV [X],(3)
        SUB X,A
        MV [X],(2)
        SUB X,A
        MV [X],(1)
        SUB X,A
        MV [X++],(0)
        DEC IL
        JRNZ SCRU1
        POPU I
        POPU X
        RETF
;
;*******************
;* ¼À 1ÄÞ¯Ä ½¸Û°Ù
;*******************
;
SCRDV1:
        PUSHU X
        PUSHU I
        MV IL,13*8
        MV X,VRAM1+13*6
        MV A,192

SCRD1:  MV (0),[X]
        ADD X,A
        MV (1),[X]
        ADD X,A
        MV (2),[X]
        ADD X,A
        MV (3),[X]
        ADD X,A
        MV (4),[X]
        ADD X,A
        MV (5),[X]
        RC
        SHL (0)
        SHL (1)
        SHL (2)
        SHL (3)
        SHL (4)
        SHL (5)
        MV [X],(5)
        SUB X,A
        MV [X],(4)
        SUB X,A
        MV [X],(3)
        SUB X,A
        MV [X],(2)
        SUB X,A
        MV [X],(1)
        SUB X,A
        MV [X++],(0)
        DEC IL
        JRNZ SCRD1
        POPU I
        POPU X
        RETF
;
;******************
;* ËÞÙ ÕÚÙ
;******************
;
HITT:
        CALLF SCRUV1
        CALLF SCRUV1
        CALLF VRAMPP
;
        MV I,40000
        WAIT
;
        CALLF SCRDV1
        CALLF SCRDV1
        CALLF VRAMPP
;
        MV I,40000
        WAIT
;
        CALLF SCRUV1
        CALLF SCRUV1
        CALLF VRAMPP
;
        MV I,40000
        WAIT
;
        CALLF SCRDV1
        CALLF SCRDV1
        CALLF VRAMPP
;
        MV I,40000
        WAIT
        RETF
;
RADR:   
        PUSHU I
        PUSHU X
        MV X,WTBL
        MV IL,8
        MV A,(RY)
RA30:
        CMP A,0
        JRZ RA31
        ADD X,IL
        DEC A
        JRNZ RA30
;
RA31:
        MV A,(RX)
RA32:
        CMP A,0
        JRZ RA33
        INC X
        DEC A
        JRNZ RA32
RA33:
        MV A,[X]
        POPU X
        POPU I
        RETF
;
;*****************
;
FADR:   
        PUSHU I
        PUSHU X
        MV X,(MAPADR)
        MV IL,4
        MV A,(FY)
FA00:
        CMP A,0
        JRZ FA01
        ADD X,IL
        DEC A
        JRNZ FA00
FA01:
        MV A,(FX)
        RC
        SHR A
FA02:
        CMP A,0
        JRZ FA03
        INC X
        DEC A
        JRNZ FA02
FA03:
        MV A,(FX)
        AND A,1
        JRZ FA04
        MV A,[X]
        AND A,00FH
        JR FA05
FA04:
        MV A,[X]
        AND A,0F0H
        ROR A
        ROR A
        ROR A
        ROR A
FA05: 
        POPU X
        POPU I
        RETF
;
MPLAY:  
        PUSHU I
        PUSHU X
        PUSHU Y
MP000:       
        MV A,[X++]
        CMP A,254
        JPZ MP999
        CMP A,36
        JRZ MP98
        PUSHU Y
        ADD A,A
        ADD A,A
        ADD Y,A
        MVW (QQQ),[Y]
        MV A,2
        ADD Y,A
        MV BA,[Y]
        POPU Y
        CALLF PLAY2
        JR MP000
MP98:   PUSHU Y
        ADD A,A
        ADD A,A
        ADD Y,A
        MVW (QQQ),[Y]
        MV A,2
        ADD Y,A
        MV BA,[Y]
        POPU Y
        CALLF REST2
        JR MP000
MP999:  POPU Y
        POPU X
        POPU I
        RETF
;
PLAY2:
        XOR (0FDH),010H ; 4
        MV I,(QQQ)      ; 4
        WAIT            ; I+1
        DEC BA          ; 3
        JRNZ PLAY2     ; 2/3    
        AND (0FDH),0EFH 
        RETF            
;
REST2:
        AND (0FDH),0EFH
        MV I,(QQQ)
        WAIT
        DEC BA
        JRNZ REST2
        RETF
;
;******************
;* ¶ÞÒÝ Ë®³¼Þ 
;******************
;
DISP:
        PUSHU X
        MV (RY),0
        MV (AY),0
DI20:
        MV (RX),0
        MV (AX),0
DI21:
        CALLF RADR
        CALLF PUTC
        INC (AX)
        INC (RX)
        CMP (AX),8 
        JRNZ DI21
        INC (AY)
        INC (RY)
        CMP (AY),6
        JRNZ DI20
        POPU X
        RETF
;
MKDOT:
        MV A,(ROUND)
        DEC A
        AND A,3
        INC A
        CMP A,1
        JRNZ MKDD1
        MV X,VMAP1
        MV Y,CDATA+16*45
        JR MKDDX
MKDD1:
        CMP A,2
        JRNZ MKDD2
        MV X,VMAP2
        MV Y,CDATA+16*46
        JR MKDDX
MKDD2:
        CMP A,3
        JRNZ MKDD3
        MV X,VMAP3
        MV Y,CDATA+16*47
        JR MKDDX
MKDD3:
        MV X,VMAP4
        MV Y,CDATA+16*48
MKDDX:
     
        MV (MAPADR),X
        MV IL,16
        MV X,CDATA+32
MKDDY:
        MV A,[Y++]
        MV [X++],A
        DEC IL
        JRNZ MKDDY
        RETF
;
;*******************
;* ·¬× Ë®³¼Þ(VRAM1)
;*******************
;
PUTC:
        PUSHU A
        PUSHU X
        MV (GG1),0
        CMP A,03FH ; ÆÝ¹ÞÝ
        JRZ PU11
        CMP A,4
        JRC PU00
        CMP A,8
        JRNC PU00
PU11:
        MV (GG1),-1
PU00:
        MV (GGG),13
PUU1:   
        MV X,CDATA
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        MV A,[X-1]
        MV (TI),A
        MV A,(GGG)
        MV [--X],A
        MV (GY),(AY)
        INC (GY)
        MV A,(GY)
        ADD A,A
        ADD A,(GY)
        ADD A,A
        INC A
        INC A
        ADD A,(GG1)
        MV (GY),A
;
        ADD (AX),6
        MV (GX),(AX)
        MV A,(AX)
        ADD A,A
        ADD A,(AX)
        ADD A,A
        ADD A,A
        ADD (GX),A
        SUB (AX),6
;
        CALLF GPRTV1
        MV A,(TI)
        MV [X],A
        POPU X
        POPU A
        RETF
PUTC2:
        PUSHU I
        PUSHU A
        PUSHU X
        MV (GGG),13
        MV X,CDATA
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        MV A,[X-1]
        MV (TI),A
        MV A,(GGG)
        MV [--X],A
        CALLF GPRTV1
        MV A,(TI)
        MV [X],A
        POPU X
        POPU A
        POPU I
        RETF
;
;*******************
;* ·¬× »¸¼Þ® (VRAM1)
;*******************
;
PUTD:   
        PUSHU A
        PUSHU X
        MV (GG1),0
        CMP A,01 ; ÆÝ¹ÞÝ 
        JRZ PUD11
        CMP A,4
        JRC PUD00
        CMP A,8
        JRNC PUD00
PUD11:
        MV (GG1),-1
PUD00:
        MV (GGG),13
PUD1:   
        CMP A,40H
        JRC PUD2
        MV A,040H
PUD2:
        MV X,DDATA
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        MV A,[X-1]
        MV (TI),A
        MV A,(GGG)
        MV [--X],A
        MV (GY),(AY)
        INC (GY)
        MV A,(GY)
        ADD A,A
        ADD A,(GY)
        ADD A,A
        INC A
        INC A
        ADD A,(GG1)
        MV (GY),A
        ADD (AX),6
;
        MV (GX),(AX)
        MV A,(AX)
        ADD A,A
        ADD A,(AX)
        ADD A,A
        ADD A,A
        ADD (GX),A
        SUB (AX),6
;
        CALLF GDELV1
        MV A,(TI)
        MV [X],A
        POPU X
        POPU A
        RETF
;
PUTD2:
        PUSHU I
        PUSHU A
        PUSHU X
        MV (GGG),13
        CMP A,040H
        JRC PD22
        MV A,0
PD22:
        MV X,DDATA
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        ADD X,A
        MV A,[X-1]
        MV (TI),A
        MV A,(GGG)
        MV [--X],A
;
        CALLF GDELV1
        MV A,(TI)
        MV [X],A
        POPU X
        POPU A
        POPU I
        RETF
;        
;*******************
;* ·¬× Ë®³¼Þ(VRAM1)
;*******************
;
GPRTV1:
        CMP (GY),40
        JRC GP10
        RETF
GP10:   CMP (GX),184
        JRC GP11
        RETF
GP11:   PUSHU A
        PUSHU I
        PUSHU X
        PUSHU Y
        MV (GS),[X++]
        MV A,(GY)
        AND A,07
        MV (GYY),A
        MV A,(GY)
        RC 
        SHR A
        RC
        SHR A
        RC 
        SHR A
;       
        MV Y,VRAM1
        CMP A,0
        JRZ GP111
        MV IL,192
GP110:  ADD Y,I
        DEC A
        JRNZ GP110
GP111:
        MV A,(GX)
        ADD Y,A
        CMP (GYY),0
        JRNZ GP13
;
GP12:   MV (GW1),[X++]
        MV A,[Y]
        OR A,(GW1)
        MV [Y++],A
        DEC (GS)
        JRNZ GP12
        POPU Y
        POPU X
        POPU I
        POPU A
        RETF
;
GP13:   
        MV (GW3),(GYY)
        MV (GW1),[X++]
        MV (GW2),0
GP14:   RC
        SHL (GW1)
        SHL (GW2)
        DEC (GW3)
        JRNZ GP14
        MV A,[Y]
        OR A,(GW1)
        MV [Y++],A
        MV A,[Y+191]
        OR A,(GW2)
        MV [Y+191],A
        DEC (GS)
        JRNZ GP13
        POPU Y
        POPU X
        POPU I
        POPU A
        RETF
;
;*******************
;* ·¬× »¸¼Þ® (VRAM1)
;*******************
;
GDELV1:
        CMP (GY),40
        JRC GD10
        RETF
GD10:   CMP (GX),184
        JRC GD11
        RETF
GD11:   PUSHU A
        PUSHU I
        PUSHU X
        PUSHU Y
        MV (GS),[X++]
        MV A,(GY)
        AND A,07
        MV (GYY),A
        MV A,(GY)
        RC 
        SHR A
        RC
        SHR A
        RC 
        SHR A
;       
        MV Y,VRAM1
        CMP A,0
        JRZ GD111
        MV IL,192
GD110:  ADD Y,I
        DEC A
        JRNZ GD110
GD111:
        MV A,(GX)
        ADD Y,A
        CMP (GYY),0
        JRNZ GD13

GD12:   MV (GW1),[X++]
        MV A,[Y]
        AND A,(GW1)
        MV [Y++],A
        DEC (GS)
        JRNZ GD12
        POPU Y
        POPU X
        POPU I
        POPU A
        RETF
;
GD13:   
        MV (GW3),(GYY)
        MV (GW1),[X++]
        MV (GW2),0FFH
GD14:   RC
        SHL (GW1)
        SHL (GW2)
        JRNC GD141
        OR (GW1),1
GD141:
        DEC (GW3)
        JRNZ GD14
        MV A,[Y]
        AND A,(GW1)
        MV [Y++],A
        MV A,[Y+191]
        AND A,(GW2)
        MV [Y+191],A
        DEC (GS)
        JRNZ GD13
        POPU Y
        POPU X
        POPU I
        POPU A
        RETF
;
;************************
;* µÝ¾² Ê¯¾² 
;* IN : HL = ÃÞ°À ±ÄÞÚ½
;************************
;
SPK:    
        PUSHU I
        MV A,[X++]
        MV (SPEED),A
        MVW (WS),[X++] ; SIZE SET
SPK01:   
        MV A,[X++]
        MV IL,8
SPK02:  ROL A
        JRNC SPK05       
SPK03:
        CMP (OTF),0
        JRZ SPK30
        OR (OTO),010H ; BEEP ON
        JR SPK31
SPK30:
        AND (OTO),080H
SPK31:
        PUSHU A
        MV A,(SPEED)
SPK04:  DEC A
        JRNZ SPK04
        POPU A
        JR SPK07
SPK05:
        AND (OTO),080H ; BEEP OFF
        PUSHU A
        MV A,(SPEED)
SPK06:  DEC A
        JRNZ SPK06
        POPU A
        JR SPK07
;
SPK07:
        DEC IL
        JRNZ SPK02
        MV I,(WS)
        DEC I
        MV (WS),I
        JRNZ SPK01
        POPU I
        RETF
;
DTITG:
        MV X,VRAM1+192+8
        CALLF DGSUB
        RETF
DTITH:
        MV X,VRAM2+8
        CALLF DGSUB
        RETF
;
DGSUB:
        PUSHU Y
        MV IL,160
DG0:    MV A,[Y++]
        MV [X++],A
        DEC IL
        JRNZ DG0
        POPU Y
        MV A,160
        ADD Y,A
        MV A,32
        ADD X,A
;
        PUSHU Y
        MV IL,160
DG1:    MV A,[Y++]
        MV [X++],A
        DEC IL
        JRNZ DG1
        POPU Y
        MV A,160
        ADD Y,A
        MV A,32
        ADD X,A
;
        PUSHU Y
        MV IL,160
DG2:    MV A,[Y++]
        MV [X++],A
        DEC IL
        JRNZ DG2
        POPU Y
        MV A,160
        ADD Y,A
        MV A,32
        ADD X,A
;
        PUSHU Y
        MV IL,160
DG3:    MV A,[Y++]
        MV [X++],A
        DEC IL
        JRNZ DG3
        POPU Y
        RETF
;
;********************
;* ½º± Ë®³¼Þ 
;********************
;
DSCORE: PUSHU X
        PUSHU I
        MV BA,(SCORE)
        MV I,10000
        MV (WK5),'0'
DSC0:   SUB BA,I
        JRC DSC1
        INC (WK5)
        JR DSC0
;
DSC1:
        ADD BA,I
        MV (WK4),'0'
        MV I,1000
DSC2:   SUB BA,I
        JRC DSC3
        INC (WK4)
        JR DSC2
;
DSC3:
        ADD BA,I
        MV (WK3),'0'
        MV I,100
DSC4:   SUB BA,I
        JRC DSC5
        INC (WK3)
        JR DSC4
;
DSC5:   
        ADD BA,I
        MV (WK2),'0'
        MV I,10
DSC6:   SUB BA,I
        JRC DSC7
        INC (WK2)
        JR DSC6
DSC7:
        ADD BA,I
        ADD A,'0'
        MV (WK1),A
; 
        MV (AX),4
        MV (AY),1
        MV (QZ),(WK5)
        CALLF PUTK
;
        MV (AX),5
        MV (AY),1
        MV (QZ),(WK4)
        CALLF PUTK
;
        MV (AX),6
        MV (AY),1
        MV (QZ),(WK3)
        CALLF PUTK
;
        MV (AX),7
        MV (AY),1
        MV (QZ),(WK2)
        CALLF PUTK
;        
        MV (AX),8
        MV (AY),1
        MV (QZ),(WK1)
        CALLF PUTK
;
        MV (AX),9
        MV (AY),1
        MV (QZ),'0'
        CALLF PUTK
        CMP (UPF),1
        JRZ DSC8
        
        MV I,(SCORE)
        MV BA,1000
        SUB I,BA
        JRC DSC8
        MV (UPF),1
        INC (MAN)
DSC8:
        POPU I
        POPU X
        RETF
;
;********************
;* FULL Ë®³¼Þ 
;********************
;
DTIME:  
        PUSHU X
        PUSHU I
        MV A,(FULL)
        MV I,0
        ADD I,A
        MV BA,I
        MV I,10000
        MV (WK5),'0'
DFU0:   SUB BA,I
        JRC DFU1
        INC (WK5)
        JR DFU0
;
DFU1:
        ADD BA,I
        MV (WK4),'0'
        MV I,1000
DFU2:   SUB BA,I
        JRC DFU3
        INC (WK4)
        JR DFU2
;
DFU3:
        ADD BA,I
        MV (WK3),'0'
        MV I,100
DFU4:   SUB BA,I
        JRC DFU5
        INC (WK3)
        JR DFU4
;
DFU5:   
        ADD BA,I
        MV (WK2),'0'
        MV I,10
DFU6:   SUB BA,I
        JRC DFU7
        INC (WK2)
        JR DFU6
DFU7:
        ADD BA,I
        ADD A,'0'
        MV (WK1),A
; 
        MV (AX),7
        MV (AY),2
        MV (QZ),(WK3)
        CALLF PUTK
;        
        MV (AX),8
        MV (AY),2
        MV (QZ),(WK2)
        CALLF PUTK
;        
        MV (AX),9
        MV (AY),2
        MV (QZ),(WK1)
        CALLF PUTK
;       
        POPU I
        POPU X
        RETF
;
;********************
;* FULL Ë®³¼Þ 
;********************
;
DFLOOR:  
        PUSHU X
        PUSHU I
        MV A,(FLOOR)
        MV I,0
        ADD I,A
        MV BA,I
        MV I,10000
        MV (WK5),'0'
DFL0:   SUB BA,I
        JRC DFL1
        INC (WK5)
        JR DFL0
;
DFL1:
        ADD BA,I
        MV (WK4),'0'
        MV I,1000
DFL2:   SUB BA,I
        JRC DFL3
        INC (WK4)
        JR DFL2
;
DFL3:
        ADD BA,I
        MV (WK3),'0'
        MV I,100
DFL4:   SUB BA,I
        JRC DFL5
        INC (WK3)
        JR DFL4
;
DFL5:   
        ADD BA,I
        MV (WK2),'0'
        MV I,10
DFL6:   SUB BA,I
        JRC DFL7
        INC (WK2)
        JR DFL6
DFL7:
        ADD BA,I
        ADD A,'0'
        MV (WK1),A
; 
        MV (AX),7
        MV (AY),3
        MV (QZ),(WK3)
        CALLF PUTK
;        
        MV (AX),8
        MV (AY),3
        MV (QZ),(WK2)
        CALLF PUTK
;        
        MV (AX),9
        MV (AY),3
        MV (QZ),(WK1)
        CALLF PUTK
        POPU I
        POPU X
        RETF
;
;*********************
;* Ê² ½º± Ë®©¼Þ 
;*********************
;
DHC:    PUSHU I
        PUSHU X
        MV BA,(HIS)
        MV I,10000
        MV (WK5),'0'
DHC0:   SUB BA,I
        JRC DHC1
        INC (WK5)
        JR DHC0
;
DHC1:
        ADD BA,I
        MV (WK4),'0'
        MV I,1000
DHC2:   SUB BA,I
        JRC DHC3
        INC (WK4)
        JR DHC2
;
DHC3:
        ADD BA,I
        MV (WK3),'0'
        MV I,100
DHC4:   SUB BA,I
        JRC DHC5
        INC (WK3)
        JR DHC4
;
DHC5:   
        ADD BA,I
        MV (WK2),'0'
        MV I,10
DHC6:   SUB BA,I
        JRC DHC7
        INC (WK2)
        JR DHC6
DHC7:
        ADD BA,I
        ADD A,'0'
        MV (WK1),A
; 
        MV (AX),4
        MV (AY),0
        MV (QZ),(WK5)
        CALLF PUTK
;
        MV (AX),5
        MV (AY),0
        MV (QZ),(WK4)
        CALLF PUTK
;
        MV (AX),6
        MV (AY),0
        MV (QZ),(WK3)
        CALLF PUTK
;
        MV (AX),7
        MV (AY),0
        MV (QZ),(WK2)
        CALLF PUTK
;        
        MV (AX),8
        MV (AY),0
        MV (QZ),(WK1)
        CALLF PUTK
;
        MV (AX),9
        MV (AY),0
        MV (QZ),'0'
        CALLF PUTK
        POPU X
        POPU I
        RETF
;
;*******************
;* ÒÝ½³ Ë®³¼Þ 
;*******************
;
DSTG:   PUSHU I
        PUSHU X
        MV A,(ROUND)
        MV I,0
        ADD I,A
        MV BA,I
        MV I,10000
        MV (WK5),'0'
DST0:   SUB BA,I
        JRC DST1
        INC (WK5)
        JR DST0
;
DST1:
        ADD BA,I
        MV (WK4),'0'
        MV I,1000
DST2:   SUB BA,I
        JRC DST3
        INC (WK4)
        JR DST2
;
DST3:
        ADD BA,I
        MV (WK3),'0'
        MV I,100
DST4:   SUB BA,I
        JRC DST5
        INC (WK3)
        JR DST4
;
DST5:   
        ADD BA,I
        MV (WK2),'0'
        MV I,10
DST6:   SUB BA,I
        JRC DST7
        INC (WK2)
        JR DST6
DST7:
        ADD BA,I
        ADD A,'0'
        MV (WK1),A
; 
        MV (AX),5
        MV (AY),4
        MV (QZ),(WK2)
        CALLF PUTK
;
        MV (AX),6
        MV (AY),4
        MV (QZ),(WK1)
        CALLF PUTK
        POPU X
        POPU I
        RETF
;
DMAN:   PUSHU I
        PUSHU X
        MV A,(MAN)
        ADD A,'0'
        MV (QZ),A
        MV (AX),9
        MV (AY),4
        CALLF PUTK
        MV (AX),8
        MV (AY),4
        MV (QZ),'0'
        CALLF PUTK
        POPU X
        POPU I
        RETF
;
;******************
;* VRAM1 ¸Ø± 
;******************
;
VRAMCL1:
        MV X,VRAM1
        MV I,48
        MV Y,0
CLV1:    
        MV [X++],Y
        MV [X++],Y
        MV [X++],Y
        MV [X++],Y
        MV [X++],Y
        MV [X++],Y
        MV [X++],Y
        MV [X++],Y
        DEC I
        JRNZ CLV1
        RETF
;
;******************
;* VRAM2 ¸Ø± 
;******************
;
VRAMCL2:
        MV X,VRAM2
        MV I,32
        MV Y,0
CLV2:    
        MV [X++],Y
        MV [X++],Y
        MV [X++],Y
        MV [X++],Y
        MV [X++],Y
        MV [X++],Y
        MV [X++],Y
        MV [X++],Y
        DEC I
        JRNZ CLV2
        RETF
;
DOWN:
        MV (WO),0
DO1:
        MV IL,6*8-8
        MV X,WTBL
        MV Y,WTBL+8
;
DO0:        
        MV A,[Y++]
        MV [X++],A
        DEC IL
        JRNZ DO0
;
        MV Y,WTBL+6*8-8
        MV X,DTBL
        MV A,(WO)
        ADD A,A
        ADD A,A
        ADD A,A
        ADD X,A
        MV A,[X++]
        MV [Y++],A
        MV A,[X++]
        MV [Y++],A
        MV A,[X++]
        MV [Y++],A
        MV A,[X++]
        MV [Y++],A
        MV A,[X++]
        MV [Y++],A
        MV A,[X++]
        MV [Y++],A
        MV A,[X++]
        MV [Y++],A
        MV A,[X++]
        MV [Y++],A
        PUSHU X
        PUSHU Y
        PUSHU I
        CALLF VRAMCL1
        CALLF TIT
        CALLF DISP
        MV (AX),(MX)
        MV (AY),(MYY)
        MV A,01 ; ÆÝ¹ÞÝ 
        CALLF PUTD
        MV A,03FH ; ÆÝ¹ÞÝ
        CALLF PUTC
        CALLF VRAMPP
        MV I,20000
        WAIT
        POPU I
        POPU Y
        POPU X
        INC (WO)
        CMP (WO),15
        JRNZ DO1
        CALLF VRAMCL1
        CALLF DISP
        CALLF TIT
        CALLF VRAMPP
        CALLF HITT
        RETF
DOWN2:
        MV (WO),0
DO21:
        MV IL,6*8
        MV X,WTBL
        MV Y,DTBL
        MV A,(WO)
        ADD A,A
        ADD A,A
        ADD A,A
        ADD Y,A
;
DO20:        
        MV A,[Y++]
        MV [X++],A
        DEC IL
        JRNZ DO20
;
        PUSHU X
        PUSHU Y
        PUSHU I
        CALLF DISP
        CALLF VRAMPP
        MV I,20000
        WAIT
        POPU I
        POPU Y
        POPU X
        INC (WO)
        CMP (WO),22
        JRNZ DO21
        RETF
;
;*******************
;* MAN ²ÄÞ³
;*******************
;
KEYP:   
        CMP (DEAD),0
        JPNZ KEND
        MV A,(TIME)
        AND A,7
        JRNZ KYZ0
        DEC (FULL)
        JRNZ KYZ0
        MV (DEAD),1
        RETF
KYZ0:
        CALLF STICK
KY0:
        CMP A,255
        JRNZ KYS0
        MV (DEAD),3
        RETF
KYS0:
        CMP A,0
        JRNZ KT01
;
        INC  (TIME9)
        AND (TIME9),31
        JPNZ KC00
        MV X,MDAT4 ; ¶ÞÝÊÞÚ
        CALLF SPK
        RETF
KC00:
        CMP (MZ),4 
        JRZ KC001
        CMP (MZ),5
        JRZ KC002
        CMP (MZ),6
        JRZ KC001
        CMP (MZ),7
        JRZ KC002
KC001:
        MV (RX),(MX)
        MV (RY),(MYY)
        CALLF RADR
        CMP A,1
        JRNZ KC01
        MV (DEAD),1
KC01:   RETF
;
KC002:
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KC02
        INC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KC02
        MV (DEAD),1
KC02:   RETF
;
KT01:   
        CMP A,9 ; À´Ù
        JRNZ KT02
        MV (MZ),4
        MV (RX),(MX)
        MV (RY),(MYY)
        CALLF RADR
        CMP A,1 ; ÏÄÞ Ä¼Þ
        JRNZ KT011
        MV (DEAD),1
KT011:
        RETF   
;**************************
;* ËÀÞØ ²ÄÞ³
;**************************
;
KT02:               
        MV (TIME9),0 ; ¶ÝÊÞØ ¶³ÝÀ
        CMP A,4 ; LEFT
        JRNZ KY01
        CMP (MX),1
        JPZ KEND
;
        CMP (MZ),4
        JRZ KT02A
        CMP (MZ),6
        JRZ KT02A
        JR  KT02B
KT02A:
        MV (MZ),4   ; 06/24
        MV (RX),(MX)
        MV (RY),(MYY)
        CALLF RADR
        CMP A,1 ; Ä¼Þ ÏÄÞ
        JRNZ KT02B0
        MV (DEAD),1
        RETF 
;
KT02B:
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KT02B0
        INC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KT02B0
        MV (DEAD),1
        RETF

KT02B0:
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RX)
        CALLF RADR
        CMP A,1 ; Ä¼Þ ÏÄÞ
        JRZ KT021
        CMP A,2 ; ¶ÍÞ
        JRZ KT021
        CMP A,3 ; 
        JPZ KYCLR
        CMP A,8 ; ¿× 
        JRZ KT021
        CMP A,9 ; ¿× 
        JRZ KT021
        CMP A,12 ; µ¼Þ¬Ï 1
        JRZ KT021
        CMP A,13 ; µ¼Þ¬Ï 2
        JRZ KT021
        CMP A,14 ; µ¼Þ¬Ï 3
        JRZ KT021
        CMP A,15 ; µ¼Þ¬Ï 4
        JRZ KT021
        CMP A,16 ; µ¼Þ¬Ï 5
        JRZ KT021
;
        PUSHU Y
        PUSHU X
        MV X,MUSICB
        MV Y,OTOTBL0
        CALLF MPLAY
        POPU X
        POPU Y
        MV (MX),(RX)
        MV (MYY),(RY)
        SUB (MGX),13
KT021:  RETF
;************************
;* Ð·Þ ²ÄÞ³ 
;***********************
KY01:
        CMP A,6 ; RIGHT
        JRNZ KY02
        CMP (MX),6
        JPZ KEND
        CMP (MZ),4
        JRZ KY01A
        CMP (MZ),6
        JRZ KY01A
        JR  KY01B
KY01A:
        MV (MZ),4 ; 6/24
        MV (RX),(MX)
        MV (RY),(MYY)
        CALLF RADR
        CMP A,1 ; Ä¼Þ ÏÄÞ
        JRNZ KY01B0
        MV (DEAD),1
        RETF 
KY01B:
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY01B0
        INC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY01B0
        MV (DEAD),1
        RETF
KY01B0:
        MV (RX),(MX)
        MV (RY),(MYY)
        INC (RX)
        CALLF RADR
        CMP A,1 ; Ä¼Þ ÏÄÞ
        JRZ KY011
        CMP A,2 ; ¶ÍÞ
        JRZ KY011
        CMP A,3 ; 
        JPZ KYCLR
        CMP A,8 ; ¿× 
        JRZ KY011
        CMP A,9 ; ¿× 
        JRZ KY011
        CMP A,12 ; µ¼Þ¬Ï 1
        JRZ KY011
        CMP A,13 ; µ¼Þ¬Ï 2
        JRZ KY011
        CMP A,14 ; µ¼Þ¬Ï 3
        JRZ KY011
        CMP A,15 ; µ¼Þ¬Ï 4
        JRZ KY011
        CMP A,16 ; µ¼Þ¬Ï 5
        JRZ KY011
;
        PUSHU Y
        PUSHU X
        MV X,MUSICB
        MV Y,OTOTBL0
        CALLF MPLAY
        POPU X
        POPU Y
        MV (MX),(RX)
        MV (MYY),(RY)
        ADD (MGX),13
KY011:  RETF
;*******************
;* Ð·Þ Ã ²ÄÞ³
;*******************
KY02:
        CMP A,8 ; UP
        JPNZ KY03
;
        CMP (MZ),4
        JRZ KY02W
        CMP (MZ),5
        JRZ KY02L
        CMP (MZ),6
        JRZ KY02T
        CMP (MZ),7
        JR KY02R
KY02W:  ; À´Ù
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY02W0
        INC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY02W0
        MV (DEAD),1
        RETF
KY02W0:
        MV (MZ),5 ; Ð·Þ
        RETF
KY02L: ; ËÀÞØ  ±¹Þ
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY02L0
        INC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY02L0
        MV (DEAD),1
        RETF
KY02L0:
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1 ; Ä¼Þ ÏÄÞ
        JRZ KY02L1
        CMP A,2 ; ¶ÍÞ
        JRZ KY02L1
        CMP A,3 ; 
        JPZ KYCLR
        CMP A,8 ; ¿× 
        JRZ KY02L1
        CMP A,9 ; ¿× 
        JRZ KY02L1
        CMP A,12 ; µ¼Þ¬Ï 1
        JRZ KY02L1
        CMP A,13 ; µ¼Þ¬Ï 2
        JRZ KY02L1
        CMP A,14 ; µ¼Þ¬Ï 3
        JRZ KY02L1
        CMP A,15 ; µ¼Þ¬Ï 4
        JRZ KY02L1
        CMP A,16 ; µ¼Þ¬Ï 5
        JRZ KY02L1
;
        MV (MZ),4
        DEC (MY)
        INC (FLOOR)
        MV BA,(SCORE)
        INC BA ; SCORE=SCORE+50
        INC BA
        INC BA
        INC BA
        INC BA
        MV (SCORE),BA
        MV X,MUSIC41
        MV Y,OTOTBL0
        CALLF MPLAY
        CALLF FWIN
KY02L1:
        RETF
KY02T:
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY02T0
        INC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY02T0
        MV (DEAD),1
        RETF
KY02T0:
        MV (MZ),5
        RETF
;
KY02R:
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY02R0
        INC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY02R0
        MV (DEAD),1
        RETF
KY02R0:
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1 ; Ä¼Þ ÏÄÞ
        JRZ KY02R1
        CMP A,2 ; ¶ÍÞ
        JRZ KY02R1
        CMP A,3 ; 
        JPZ KYCLR
        CMP A,8 ; ¿× 
        JRZ KY02R1
        CMP A,9 ; ¿× 
        JRZ KY02R1
        CMP A,12 ; µ¼Þ¬Ï 1
        JRZ KY02R1
        CMP A,13 ; µ¼Þ¬Ï 2
        JRZ KY02R1
        CMP A,14 ; µ¼Þ¬Ï 3
        JRZ KY02R1
        CMP A,15 ; µ¼Þ¬Ï 4
        JRZ KY02R1
        CMP A,16 ; µ¼Þ¬Ï 5
        JRZ KY02R1
;
        MV (MZ),5
        DEC (MY)
        INC (FLOOR)
        MV BA,(SCORE)
        INC BA ; SCORE=SCORE+50
        INC BA
        INC BA
        INC BA
        INC BA
        MV (SCORE),BA
        MV X,MUSIC41
        MV Y,OTOTBL0
        CALLF MPLAY
        CALLF FWIN
KY02R1:
        RETF
;
KY03: ; Ð·ÞÃ 
        CMP A,2 ; 
        JPNZ KY04
;
        CMP (MZ),4
        JRZ KY03W
        CMP (MZ),5
        JRZ KY03L
        CMP (MZ),6
        JRZ KY03T
        CMP (MZ),7
        JR KY03R
KY03W:  ; À´Ù
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY03W0
        INC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY03W0
        MV (DEAD),1
        RETF
KY03W0:
        MV (MZ),7 ; Ð·Þ
        RETF
KY03L: ; ËÀÞØ  ±¹Þ
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY03L0
        INC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY03L0
        MV (DEAD),1
        RETF
KY03L0:
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1 ; Ä¼Þ ÏÄÞ
        JRZ KY03L1
        CMP A,2 ; ¶ÍÞ
        JRZ KY03L1
        CMP A,3 ; 
        JPZ KYCLR
        CMP A,8 ; ¿× 
        JRZ KY03L1
        CMP A,9 ; ¿× 
        JRZ KY03L1
        CMP A,12 ; µ¼Þ¬Ï 1
        JRZ KY03L1
        CMP A,13 ; µ¼Þ¬Ï 2
        JRZ KY03L1
        CMP A,14 ; µ¼Þ¬Ï 3
        JRZ KY03L1
        CMP A,15 ; µ¼Þ¬Ï 4
        JRZ KY03L1
        CMP A,16 ; µ¼Þ¬Ï 5
        JRZ KY03L1

        MV (MZ),7
        DEC (MY)
        INC (FLOOR)
        MV BA,(SCORE)
        INC BA ; SCORE=SCORE+50
        INC BA
        INC BA
        INC BA
        INC BA
        MV (SCORE),BA
        MV X,MUSIC42
        MV Y,OTOTBL0
        CALLF MPLAY
        CALLF FWIN
KY03L1:
        RETF
KY03T:
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY03T0
        INC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY03T0
        MV (DEAD),1
        RETF
KY03T0:
        MV (MZ),7
        RETF
;
KY03R:
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY03R0
        INC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY03R0
        MV (DEAD),1
        RETF
KY03R0:
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1 ; Ä¼Þ ÏÄÞ
        JRZ KY03R1
        CMP A,2 ; ¶ÍÞ
        JRZ KY03R1
        CMP A,3 ; 
        JPZ KYCLR
        CMP A,8 ; ¿× 
        JRZ KY03R1
        CMP A,9 ; ¿× 
        JRZ KY03R1
        CMP A,12 ; µ¼Þ¬Ï 1
        JRZ KY03R1
        CMP A,13 ; µ¼Þ¬Ï 2
        JRZ KY03R1
        CMP A,14 ; µ¼Þ¬Ï 3
        JRZ KY03R1
        CMP A,15 ; µ¼Þ¬Ï 4
        JRZ KY03R1
        CMP A,16 ; µ¼Þ¬Ï 5
        JRZ KY03R1

        MV (MZ),4
        DEC (MY)
        INC (FLOOR)
        MV BA,(SCORE)
        INC BA ; SCORE=SCORE+50
        INC BA
        INC BA
        INC BA
        INC BA
        MV (SCORE),BA
        MV X,MUSIC42
        MV Y,OTOTBL0
        CALLF MPLAY
        CALLF FWIN
KY03R1:
        RETF
KY04:
        CMP (MZ),4 
        JRZ KY041
        CMP (MZ),5
        JRZ KY042
        CMP (MZ),6
        JRZ KY041
        CMP (MZ),7
        JRZ KY042
KY041:
        MV (RX),(MX)
        MV (RY),(MYY)
        CALLF RADR
        CMP A,1
        JRNZ KY0410
        MV (DEAD),1
KY0410: RETF
;
KY042:
        MV (RX),(MX)
        MV (RY),(MYY)
        DEC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY0420
        INC (RY)
        CALLF RADR
        CMP A,1
        JRNZ KY0420
        MV (DEAD),1
KY0420:
        RETF
;
KYCLR:
        MV (MZ),7
        DEC (MY)
        MV (AX),(MX)
        MV (AY),(MYY)
        MV A,(MZ)
        CALLF PUTD
        CALLF PUTC  
        INC (FLOOR)
        MV BA,(SCORE)
        INC BA ; SCORE=SCORE+50
        INC BA
        INC BA
        INC BA
        INC BA
        MV (SCORE),BA
        CALLF FWIN
        MV (DEAD),2
        RETF
;
BONS:  ; 
        CMP (FULL),0
        JPZ BONE
        MV (WFULL),(FULL)
BN1:    MV BA,(SCORE)
        MV I,20
        ADD BA,I
        MV (SCORE),BA
        CALLF VRAMCL1
        CALLF DSCORE
        CALLF DTIME
        MV X,MUSIC7
        MV Y,OTOTBL0 
        CALLF MPLAY
        CALLF TIT
        CALLF DISP
        MV (AX),(MX)
        MV (AY),(MYY)
        MV A,(MZ)
        CALLF PUTD
        CALLF PUTC  
        CALLF VRAMPP
        MV A,4
        SUB (FULL),A
        JRNC BN1
        MV (FULL),(WFULL)
BONE:
        RETF
;
;****************
;* VRAM1 Ë®³¼Þ
;****************
;
VRAMPP:
        PUSHU I
        PUSHU X
        PUSHU Y
        MV X,VRAM1+192+8
        CALLF VRAMSS
        POPU Y
        POPU X
        POPU I
        RETF
;
;*****************************
;* VRAM2 Ë®³¼Þ
;*****************************
;
VRAMPP2:
        PUSHU I
        PUSHU X
        PUSHU Y
        MV X,VRAM2+8
        CALLF VRAMSS
        POPU Y
        POPU X
        POPU I
        RETF
;
VRAMSS:
        MV A,0B8H
CC1:    MV B,A
        MV [2000H],A
        MV IL,40H
        MV [2000H],IL
        MV Y,2006H
        MV IL,8
CC2:    
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        DEC IL
        JRNZ CC2
        MV Y,200AH
        MV IL,7
CC3:
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        MV A,[X++]
        MV [Y],A
;
        DEC IL
        JRNZ CC3
        MV A,56
        ADD X,A
        MV A,B
        ADD A,4
        MV [2008H],A
        MV IL,040H
        MV [2008H],IL
        MV IL,7
CC4:
        MV A,[--X]
        MV [Y],A
;
        MV A,[--X]
        MV [Y],A
;
        MV A,[--X]
        MV [Y],A
;
        MV A,[--X]
        MV [Y],A
;
        MV A,[--X]
        MV [Y],A
;
        MV A,[--X]
        MV [Y],A
;
        MV A,[--X]
        MV [Y],A
;
        MV A,[--X]
        MV [Y],A
;
        DEC IL
        JRNZ CC4
        MV A,16+56
        ADD X,A
        MV A,B
        INC A
        CMP A,0BCH
        JPNZ CC1
        RETF
;
;**********************
;* 8*8 PUT            *
;* (QX),(QY),(QZ)     *
;**********************
;
PUTR:
        PUSHU X
        PUSHU Y
        PUSHU A
        PUSHU I
PRX:    MV A,[X++]
        CMP A,0
        JPZ PRY
        MV (QZ),A
        PUSHU X
        CALLF PUTK
        INC (AX)
        POPU X
        JR PRX
PRY:
        POPU I
        POPU A
        POPU Y
        POPU X
        RETF
;
PUTK:  
        PUSHU X
        CMP (QZ),' '
        JRNZ PR01
        MV Y,SPCDAT
        MV A,0
        JR PRXX
PR01:
        CMP (QZ),'0'
        JRC PR03
        CMP (QZ),'9'+1
        JRNC PR03
        MV Y,NUMDAT
        MV A,(QZ)
        SUB A,'0'
        JR PRXX
PR03:
        CMP (QZ),'A'
        JRC PRXX
        CMP (QZ),'Z'+1
        JRNC PR04
        MV Y,ALPDAT
        MV A,(QZ)
        SUB A,'A'
PR04:
        CMP (QZ),'±'
        JRC PRXX
        CMP (QZ),'Û'+1
        JRNC PRXX
        MV Y,SPCHR
        MV A,(QZ)
        SUB A,'±'
PRXX:
        CALLF PUTV
        POPU X
        RETF
;
;*******************
;* ·¬× Ë®³¼Þ(VRAM1)
;*******************
;
PUTV:
        PUSHU I
        PUSHU A
        PUSHU Y
        PUSHU X
        MV (GGG),6
        ADD A,A
        ADD A,A
        ADD A,A
        ADD Y,A
        MV A,[Y-1]
        MV (TI),A
        MV A,(GGG)
        MV [--Y],A
        MV (GY),8
        MV A,(AY)
        ADD A,A
        ADD A,(AY)
        ADD A,A
        ADD (GY),A
        MV A,(AX)
        ADD A,A
        ADD A,(AX) 
        ADD A,A
        ADD A,8
        MV (GX),A
;
        MV X,Y
        CALLF GPRTV1
        MV A,(TI)
        MV [Y],A
        POPU X
        POPU Y
        POPU A
        POPU I
        RETF
;
TIT:
        MV (GX),6*13-10
        MV (GY),8
        MV X,CDAT1
        CALLF GPRTV1
        MV (GX),6*13-10
        MV (GY),16
        MV X,CDAT1
        CALLF GPRTV1
        MV (GX),6*13-10
        MV (GY),24
        MV X,CDAT1
        CALLF GPRTV1
        MV (GX),6*13-10
        MV (GY),32
        MV X,CDAT1
        CALLF GPRTV1
;
        MV A,(FLOOR)
        RC 
        SHR A
        RC 
        SHR A
        MV (GX),6*13-10
        MV (WW1),A
        MV A,39-2
        MV (WW2),A
        MV A,(WW1)
        SUB (WW2),A
        MV (GY),(WW2)
        MV X,DDAT1
        CALLF GPRTV1
;
        MV (AX),0
        MV (AY),0
        MV X,PDAT0
        CALLF PUTR
;
        CALLF DHC
;
        MV (AX),0
        MV (AY),1
        MV X,PDAT2
        CALLF PUTR
;
        CALLF DSCORE
; 
        MV (AX),0
        MV (AY),2
        MV X,PDAT4
        CALLF PUTR
;
        CALLF DTIME
;
        MV (AX),0
        MV (AY),3
        MV X,PDAT6 ; 
        CALLF PUTR
        CALLF DFLOOR
;
        MV (AX),0
        MV (AY),4
        MV X,PDAT8
        CALLF PUTR
        CALLF DSTG
        CALLF DMAN
        MV (AX),0
        MV (AY),4
        MV X,PDAT8
        CALLF PUTR
        CALLF DSTG
        CALLF DMAN
        RETF
;****************
;* KEY FUNCTION
;****************
TITS:
        MV (AX),0
        MV (AY),0
        MV X,ADAT0
        CALLF PUTR
;
        MV (AX),0
        MV (AY),1
        MV X,ADAT1
        CALLF PUTR
;
        MV (AX),0
        MV (AY),2
        MV X,ADAT2
        CALLF PUTR
;
        MV (AX),0
        MV (AY),3
        MV X,ADAT3
        CALLF PUTR
;
        MV (AX),0
        MV (AY),4
        MV X,ADAT4
        CALLF PUTR
        RETF
;
;***********************
;* STICK
;* OUT: A=(2,4,6,8)
;*         7,4,6,5
;***********************
;
STICK:
        MVW (KO),01H
        NOP
        NOP
        NOP
        MV A,(KI)
        AND A,10H
        JRZ ST00 ; BASIC KEY 
        MV A,255
        RETF
ST00: ; 'SHIFT'
        MV (KEY),0
        MVW (KO),01H
        NOP
        NOP
        MV A,(KI) 
        AND A,40H
        JPZ ST1
        MV (KEY),08H
ST1: ; '='
        MVW (KO),0200H
        NOP
        NOP
        MV A,(KI)
        AND A,80H
        JPZ ST2
        OR (KEY),04H
ST2: ; 'CTRL'
        MVW (KO),01H
        NOP
        NOP
        MV A,(KI)
        AND A,80H
        JPZ ST3
        OR (KEY),02H
ST3: ; '+'
        MVW (KO),0100H
        NOP
        NOP
        MV A,(KI)
        AND A,80H
        JPZ ST4
        OR (KEY),001H
ST4:
        MV X,KTBL
        MV IL,(KEY)
        ADD X,IL
        MV A,[X]
        RETF
;
TRIG0:  ; CTRL
        MVW (KO),01H
        NOP
        NOP
        NOP
        MV A,(KI)
        AND A,10H
        JRZ TR000 ; BASIC KEY 
        MV A,255
        RETF
TR000:
; SHIFT CHECK
        MVW (KO),001H
        NOP
        NOP
        NOP
        MV A,(KI)
        AND A,040H
        MV A,0
        JRZ TR003
        MV A,1
TR003:
        RETF
;
KEND:
        RETF
;
;********************
;* ×Ý½³ Ê¯¾² 
;* OUT: A=(0-255)    
;********************
;
RND:     PUSHU I
         MV I,(WRND)
         MV BA,I
         ADD BA,BA
         ADD BA,BA
         ADD BA,I
         MV I,05678H
         ADD BA,I
         MV (WRND),BA
         MV A,(WRND+1)
         POPU I
         RETF
;
OVER:
        CALLF VRAMCL1
        CALLF TIT
        MV (RX),2
        MV (RY),1
        MV A,031H
        CALLF SADR
        INC (RX)
        INC A
        CALLF SADR
        INC (RX)
        INC A
        CALLF SADR
        INC (RX)
        INC A
        CALLF SADR
        INC A
;      
        MV (RX),2
        MV (RY),2
        CALLF SADR
        INC (RX)
        INC A
        CALLF SADR
        INC (RX)
        INC A
        CALLF SADR
        INC (RX)
        INC A
        CALLF SADR
;
        CALLF DISP
        CALLF VRAMPP
;
        MV I,20000
        WAIT     
        RETF
;
READY:
        CALLF TIT
        MV (AX),1
        MV (AY),1
        MV A,2
        CALLF PUTD
        MV A,039H
        CALLF PUTC
        INC (AX)
        MV A,2
        CALLF PUTD
        MV A,03AH
        CALLF PUTC
        INC (AX)
        MV A,2
        CALLF PUTD
        MV A,03BH
        CALLF PUTC
        INC (AX)
        MV A,2
        CALLF PUTD
        MV A,03CH
        CALLF PUTC
        INC (AX)
        MV A,2
        CALLF PUTD
        MV A,03DH
        CALLF PUTC
        INC (AX)
        MV A,2
        CALLF PUTD
        MV A,03EH
        CALLF PUTC
        CALLF VRAMPP
;
        MV I,20000
        WAIT     
        RETF

;*************
;* ÓÉ  ¼®· 
;*************
;
QINT:
        MV X,QTBL
        MV IL,8*10
        MV A,0
QI0:
        MV [X++],A
        DEC IL
        JRNZ QI0
        RETF
;
;*************
;* ÏÄÞ ¼®· 
;*************
;
SINT:
        MV X,STBL
        MV I,8*6*8
        MV A,0
SI0:
        MV [X++],A
        DEC I
        JRNZ SI0
        RETF
;
FWIN:   
        PUSHU I
        PUSHU X
        PUSHU Y
        MV X,STBL
        MV IL,48
FW0:
        MV A,[X+2]
        INC A
        MV [X+2],A
        MV A,8
        ADD X,A
        DEC IL
        JRNZ FW0
;
        MV X,STBL+8*48
        MV Y,STBL+8*48-8*8
        MV I,8*48-8*8
FW1:
        MV A,[--Y]
        MV [--X],A
        DEC I
        JRNZ FW1
;    
        MV (FY),(MY)
        SUB (FY),4        
        MV Y,STBL
        MV (WY),0
        MV (FX),0
        MV (WX),0 
FS1:       
        CALLF FADR
        MV [Y],A
        MV [Y+1],(WX)
        MV [Y+2],(WY)
;
        CMP A,0  ; ÏÄÞ Ë×·
        JRNZ FS2
        MV A,0
        MV [Y+3],A
        JR FS99
FS2:    ;
        CMP A,1  ; ÏÄÞ Ä¼Þ
        JRNZ FS3
        MV A,1
        MV [Y+3],A
        JR FS99
FS3:    ;
        CMP A,2 ; ¶ÍÞ ËÀÞØ
        JRNZ FS4
        MV A,2
        MV [Y+3],A
        JR FS99
FS4:    ;
        CMP A,3 ; ¿×  
        JRNZ FS5
        MV A,8
        MV [Y+3],A
        JR FS99
FS5:
        CMP A,4 ; ÏÄÞ 1
        JRNZ FS6
        MV A,0
        MV [Y+3],A
        JR FS99
FS6:
        CMP A,5 ; ÏÄÞ 2
        JRNZ FS7
        MV A,0
        MV [Y+3],A
        JR FS99
FS7:
        CMP A,6 ; ÏÄÞ 3
        JRNZ FS8
        MV A,0
        MV [Y+3],A
        JR FS99
FS8:
        CMP A,7 ; ÏÄÞ4 
        JRNZ FS9
        MV A,0
        MV [Y+3],A
        JR FS99
FS9: 
        CMP A,8 ; µ¼Þ¬Ï  
        JRNZ FSA
        MV A,0
        MV [Y+3],A
        JR FS99
FSA:
        CMP A,9 ; ÏÄÞ ±· & Ã¯º¯
        JRNZ FSB
        MV A,0
        MV [Y+3],A
        JR FS99
FSB:
        CMP A,10 ; ¶ÝÊÞÝ ËÀÞØ
        JRNZ FSC
        MV A,4
        MV [Y+3],A
        JR FS99
FSC:
        CMP A,11 ; ¶ÝÊÞÝ ÏÝÅ¶ 
        JRNZ FSD
        MV A,4
        MV [Y+3],A
        JR FS99
FSD:
        CMP A,12 ; ¶ÝÊÞÝ Ð·Þ  
        JRNZ FSE
        MV A,4
        MV [Y+3],A
        JR FS99
FSE:
        CMP A,13 ; ¼Þ¼Ý
        JRNZ FSF
        MV A,2
        MV [Y+3],A
        JR FS99
FSF:
        CMP A,14  ; ¸Ó 
        JRNZ FSG
        MV A,9
        MV [Y+3],A
        JR FS99

FSG:       
        CMP A,15 ; END
        JRNZ FS99
        MV A,3
        MV [Y+3],A
        JR FS99
FS99:
        MV A,8
        ADD Y,A
        INC (FX)
        INC (WX)
        CMP (WX),8
        JRNZ FS1
        POPU Y
        POPU X
        POPU I
        RETF        
       ;
;***********
;* ÏÄÞ ¾¯Ã²  
;***********
;
SWIN:
        MV (FY),(MY)
        SUB (FY),4        
        MV Y,STBL
        MV (WY),0
SS0:
        MV (FX),0
        MV (WX),0 
SS1:       
        CALLF FADR
        MV [Y],A
        MV [Y+1],(WX)
        MV [Y+2],(WY)
;
        CMP A,0  ; ÏÄÞ Ë×·
        JRNZ SS2
        MV A,0
        MV [Y+3],A
        JR SS99
SS2:    ;
        CMP A,1  ; ÏÄÞ Ä¼Þ
        JRNZ SS3
        MV A,1
        MV [Y+3],A
        JR SS99
SS3:    ;
        CMP A,2 ; ¶ÍÞ ËÀÞØ
        JRNZ SS4
        MV A,2
        MV [Y+3],A
        JR SS99
SS4:    ;
        CMP A,3 ; ¶ÍÞ Ð·Þ 
        JRNZ SS5
        MV A,8
        MV [Y+3],A
        JR SS99
SS5:
        CMP A,4 ; ÏÄÞ 1
        JRNZ SS6
        MV A,0
        MV [Y+3],A
        JR SS99
SS6:
        CMP A,5 ; ÏÄÞ 2
        JRNZ SS7
        MV A,0
        MV [Y+3],A
        JR SS99
SS7:
        CMP A,6 ; ÏÄÞ 3
        JRNZ SS8
        MV A,0
        MV [Y+3],A
        JR SS99
SS8:
        CMP A,7 ; ÏÄÞ 4
        JRNZ SS9
        MV A,0
        MV [Y+3],A
        JR SS99
SS9:
        CMP A,8 ; µ¼Þ¬Ï
        JRNZ SSA
        MV A,0
        MV [Y+3],A
        JR SS99
SSA:
        CMP A,9 ; µ¼Þ¬Ï
        JRNZ SSB
        MV A,0
        MV [Y+3],A
        JR SS99
SSB:
        CMP A,10 ; ¶ÝÊÞÝ ËÀÞØ
        JRNZ SSC
        MV A,0
        MV [Y+3],A
        JR SS99
SSC:
        CMP A,11 ; ¶ÝÊÞÝ ÏÝÅ¶ 
        JRNZ SSD
        MV A,0
        MV [Y+3],A
        JR SS99
SSD:
        CMP A,12 ; ¶ÝÊÞÝ Ð·Þ
        JRNZ SSE
        MV A,0
        MV [Y+3],A
        JR SS99
SSE:
        CMP A,13 ; ¼Þ¼Ý
        JRNZ SSF
        MV A,2
        MV [Y+3],A
        JR SS99
SSF:
        CMP A,14 ; ¸Ó 
        JRNZ SSG
        MV A,9
        MV [Y+3],A
        JR SS99
SSG:
        CMP A,15 ; µ¼Þ¬Ï
        JRNZ SS99
        MV A,3
        MV [Y+3],A
        JR SS99
SS99:
        MV A,8
        ADD Y,A
        INC (FX)
        INC (WX)
        CMP (WX),8
        JRNZ SS1
        INC (FY)
        INC (WY)
        CMP (WY),6
        JRNZ SS0
        RETF        
;
MWIN:
       MV IL,48
       MV X,STBL
MW0:
       MV A,[X]
       CMP A,0
       JRNZ MW1
       CALLF MW00
       JR MW99
MW1:
       CMP A,1
       JRNZ MW2
       CALLF MW10 
       JR MW99
MW2:
       CMP A,2
       JRNZ MW3
       CALLF MW20
       JR MW99
MW3:
       CMP A,3
       JRNZ MW4
       CALLF MW30
       JR MW99
MW4:
       CMP A,4
       JRNZ MW5
       CALLF MW40
       JR MW99
MW5:
       CMP A,5
       JRNZ MW6
       CALLF MW50
       JR MW99
MW6:
       CMP A,6
       JRNZ MW7
       CALLF MW60
       JR MW99
MW7:
       CMP A,7
       JRNZ MW8
       CALLF MW70
       JR MW99
MW8:
       CMP A,8
       JRNZ MW9
       CALLF MW80
       JR MW99
MW9:
       CMP A,9
       JRNZ MWA
       CALLF MW90
       JR MW99
MWA:
        CMP A,10
        JRNZ MWB
        CALLF MWA0
        JR MW99
MWB:
        CMP A,11
        JRNZ MWC
        CALLF MWB0
        JR MW99
MWC:
        CMP A,12
        JRNZ MWD
        CALLF MWC0
        JR MW99
MWD:
        CMP A,13
        JRNZ MWE
        CALLF MWD0
        JR MW99
MWE:
        CMP A,14  ; ¸Ó 
        JRNZ MWF
        CALLF MWE0
        JR MW99
MWF:
       CMP A,15
       JRNZ MW99
       CALLF MWF0
       JR MW99
MW99:
       MV A,8
       ADD X,A
       DEC IL
       JRNZ MW0
       RETF
;
MW00:   ; ±·
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,0
       CALLF SADR
       RETF
MW10:   ; Ä¼Þ 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,1
       CALLF SADR
       RETF
MW20:   ; Ð·Þ ¶ÍÞ 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,2
       CALLF SADR
       RETF
MW30:   ; ¿× 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
MW40:   ; ÏÄÞ1 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CMP A,6
       JRNZ MW41
       MV A,0
       MV [X+3],A
       MV Y,MTBL4
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       CALLF  RND
       AND A,3
       ADD A,4
       MV [X],A
       RETF
MW41:
       INC A
       MV [X+3],A
       MV Y,MTBL4
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
MW50:   ; ÏÄÞ2 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CMP A,21
       JRNZ MW51
       MV A,0
       MV [X+3],A
       MV Y,MTBL5
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       CALLF  RND
       AND A,3
       ADD A,4
       MV [X],A
       RETF
MW51:
       INC A
       MV [X+3],A
       MV Y,MTBL5
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
MW60:   ; ÏÄÞ3 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CMP A,26
       JRNZ MW61
       MV A,0
       MV [X+3],A
       MV Y,MTBL6
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       CALLF  RND
       AND A,3
       ADD A,4
       MV [X],A
       RETF
MW61:
       INC A
       MV [X+3],A
       MV Y,MTBL6
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
MW70:   ; ±·
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CMP A,12
       JRNZ MW71
       MV A,0
       MV [X+3],A
       MV Y,MTBL7
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       CALLF  RND
       AND A,3
       ADD A,4
       MV [X],A
       RETF
MW71:
       INC A
       MV [X+3],A
       MV Y,MTBL7
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
;
MW80:   ; ¼Þ¬Ï 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CMP A,10
       JRNZ MW81
       CMP (RY),3
       JRC MW801
       MV A,0
       MV [X],A
       CALLF SADR
       RETF
MW801:
       MV A,0
       MV [X+3],A
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
MW81:
       INC A
       MV [X+3],A
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       CMP A,16 ; ÓÉÅ¹Þ
       JRNZ MW84
       MV A,[X+2]
       CMP A,3
       JRNC MW84
       CALLF RND
       AND A,3
       CMP A,2
       JRNC MW82
       MV (MONOS),1
       JR MW83
MW82:
       MV (MONOS),2      
MW83:
       ADD A,A
       ADD A,A
       ADD A,011H
       MV (MONO),A
       CALLF VMONO
MW84:  RETF
;
MW90:   ; ÏÄÞ Ä¼Þ ÃÞ ÓÉÅ¹Þ
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,0
       CALLF SADR
;
       MV A,[X+2]
       CMP A,0
       JRNZ MW91
       MV A,[X+3]
       CMP A,0
       JRNZ MW92
       CALLF RND
       AND A,1
       ADD A,A
       ADD A,A
       ADD A,021H
       MV (MONOS),4
       MV (MONO),A
       CALLF VMONO
MW92:              
       MV A,[X+3]
       INC A
       AND A,15
       MV [X+3],A
MW91:
       RETF
MWA0:   ; ¶ÝÊÞÝ ËÀÞØ
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CMP A,10
       JRNZ MWA1
       CMP (RY),1
       JRC MWA01
       MV A,0
       MV [X],A
       CALLF SADR
       RETF
MWA01:
       MV A,0
       MV [X+3],A
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
MWA1:
       INC A
       MV [X+3],A
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       CMP A,16 ; ÓÉÅ¹Þ
       JRNZ MWA4
       MV A,[X+2]
       CMP A,1
       JRNC MWA4
       CALLF RND
       AND A,3
       MV (MONO),A
       ADD A,A
       ADD A,(MONO)
       ADD A,040H
       MV (MONO),A
       MV (MONOC),A
       MV (MONOS),3
       CALLF VMONO
MWA4:  RETF
;
MWB0:   ; ¶ÝÊÞÝ ÏÝÅ¶  
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CMP A,10
       JRNZ MWB1
       CMP (RY),1
       JRC MWB01
       MV A,0
       MV [X],A
       CALLF SADR
       RETF
MWB01:
       MV A,0
       MV [X+3],A
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
MWB1:
       INC A
       MV [X+3],A
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       CMP A,16 ; ÓÉÅ¹Þ
       JRNZ MWB4
       MV A,[X+2]
       CMP A,1
       JRNC MWB4
       MV (MONOS),3      
       MV (MONO),(MONOC)
       INC (MONO)
       CALLF VMONO
MWB4:  RETF
;
MWC0:   ; ¶ÝÊÞÝ ËÀÞØ  
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CMP A,10
       JRNZ MWC1
       CMP (RY),1
       JRC MWC01
       MV A,0
       MV [X],A
       CALLF SADR
       RETF
MWC01:
       MV A,0
       MV [X+3],A
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
MWC1:
       INC A
       MV [X+3],A
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       CMP A,16 ; ÓÉÅ¹Þ
       JRNZ MWC4
       MV A,[X+2]
       CMP A,1
       JRNC MWC4
       MV (MONOS),3
       MV (MONO),(MONOC)
       INC (MONO)
       INC (MONO)
       CALLF VMONO
MWC4:  RETF
;
MWD0:
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       CMP (RY),0
       JRNZ MWD1
       CALLF VUFO
MWD1:
       RETF
;
MWE0:   ; ¸Ó 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,9
       CALLF SADR
       RETF
;       
MWF0:   ; END
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,3
       CALLF SADR
       RETF

;**********************
;* ÓÉ Å¹ÞÙ 
;**********************
;
VMONO:  PUSHU I
        PUSHU X
        MV X,QTBL
        MV IL,10
VMO0:
        MV A,[X]
        CMP A,0
        JRZ VMO1
        MV A,8
        ADD X,A
        DEC IL
        JRNZ VMO0
        POPU X
        POPU I
        RETF 
VMO1:
        MV A,1
        MV [X],A
        ADD (RX),6
        MV A,(RX)
        ADD A,A
        ADD A,(RX)
        ADD A,A
        ADD A,A
        ADD A,(RX)
        MV [X+1],A
        SUB (RX),6
;
        MV A,(RY)
        INC A
        ADD A,A
        ADD A,(RY)
        ADD A,A
        MV [X+2],A
        MV A,3
        MV [X+3],A
        MV [X+6],(MONOS)
        MV A,(MONO)
        MV [X+4],A
        MV A,0
        MV [X+7],A
VMO03:
        MV [X+5],(RX)
        POPU X
        POPU I
        RETF 
;*******************
;* ÓÉ ²ÄÞ³
;*******************
MMONO:  PUSHU I
        PUSHU X
        MV X,QTBL
        MV IL,10
MMO0:
        MV A,[X]
        CMP A,0
        JRZ MMO1
        CALLF MMO2
MMO1:
        MV A,8
        ADD X,A
        DEC IL
        JRNZ MMO0
        POPU X
        POPU I
        RETF 
MMO2:
        MV A,0
        MV [X],A
        MV (GX),[X+1]
        MV A,[X+2]
        MV (WW1),[X+6]
        ADD A,(WW1)
        MV [X+2],A
        MV (GY),A
        CMP A,40
        JPNC MNO99
;
        MV A,[X+1]
        CMP (MGX),A
        JRNZ MNO3
;
        MV (WW1),[X+2]
        MV (WW2),(MGY)
        ADD (WW2),3
        MV A,(WW2)
        SUB A,(WW1)
        CMP A,6
        JRNC MNO3
;
        MV A,[X+4]
        CMP A,021H
        JPNC MNO4
;
        MV A,1
        MV [X],A
        MV A,[X+1]
        MV (GX),A
        MV A,[X+2]
        MV (GY),A
        ADD (GX),13
        MV [X+1],(GX)
        MV A,[X+3]
        INC A
        AND A,3
        MV [X+3],A
        MV (WW1),A
        MV A,[X+4]
        ADD A,(WW1)
        CALLF PUTD2
        CALLF PUTC2
;
        PUSHU X
        MV X,MDAT3
        CALLF SPK
        CALLF SCRDV1
        POPU X
        CMP (MZ),4
        JRNZ MNO21
        MV (MZ),6
        JR MNO2Y
MNO21:
        CMP (MZ),5
        JRNZ MNO22
        MV (MZ),6
        JR MNO2Y
MNO22:
        CMP (MZ),6
        JRNZ MNO23
MNO22X:
        MV (DEAD),1
        JR MNO2X
MNO23:
        CMP (MZ),7
        JRNZ MNO24
        MV (MZ),6
        JR MNO2Y
MNO24:
MNO2X: 
        RETF
MNO2Y:
        CMP (FULL),2
        JRC MNO2X
        DEC (FULL)
        DEC (FULL)
        MV BA,(SCORE)
        INC BA
        INC BA
        INC BA
        INC BA
        INC BA
        MV (SCORE),BA
        RETF
MNO3:
        MV A,1
        MV [X],A
        MV A,[X+3]
        INC A
        AND A,3
        MV [X+3],A
        MV (WW1),A
        MV A,[X+4]
        CMP A,040H
        JRNC MNO31
        ADD A,(WW1)
MNO31:
        MV (WW2),A
        CALLF PUTD2
        CALLF PUTC2
;
        CMP A,049H
        JRC MNO98 
        ADD A,3
        ADD (GY),8
        CALLF PUTD2
        CALLF PUTC2
MNO98:
        MV A,(WW2)
        CMP A,021H
        JRC MNO99
        CMP A,040H
        JRC MNO96
        MV (WW2),8
        JR MNO95
MNO96:
        MV (WW2),0
MNO95:
        MV A,[X+3]
MNO97:
        MV (TI01),A
        MV A,[X+4]
        CMP A,41H
        JRZ MNO99
        CMP A,42H
        JRZ MNO99
        CMP A,44H
        JRZ MNO99
        CMP A,45H
        JRZ MNO99
        CMP A,47H
        JRZ MNO99
        CMP A,48H
        JRZ MNO99
        CMP A,4AH
        JRZ MNO99
        CMP A,4BH
        JRZ MNO99
        MV A,(TI01)
        PUSHU X
        PUSHU Y
        MV X,MUSIC8
        ADD A,A
        ADD X,A
        MV A,(WW2)
        ADD X,A
        MV Y,OTOTBL0
        CALLF MPLAY
        POPU Y
        POPU X
MNO99:  RETF
;
MNO4:
        MV A,1
        MV [X],A
        MV A,[X+3]
        INC A
        AND A,3
        MV [X+3],A
        MV (WW1),A
        MV A,[X+4]
        CMP A,040H
        JRNC MNO41
        ADD A,(WW1)
MNO41:
        CALLF PUTD2
        CALLF PUTC2
        PUSHU Y
        PUSHU X
        MV X,MUSIC5
        MV Y,OTOTBL0
        CALLF MPLAY
        CALLF SCRDV1
        POPU X
        POPU Y
        MV (DEAD),1
        RETF
;
;*******************
;* ÏÄÞ Ë®³¼Þ
;*******************              
VWIN:
       MV IL,48
       MV X,STBL
VW0:
       MV A,[X]
       CMP A,0
       JRNZ VW1
       CALLF VW00
       JR VW99
VW1:
       CMP A,1
       JRNZ VW2
       CALLF VW10 
       JR VW99
VW2:
       CMP A,2
       JRNZ VW3
       CALLF VW20
       JR VW99
VW3:
       CMP A,3
       JRNZ VW4
       CALLF VW30
       JR VW99
VW4:
       CMP A,4
       JRNZ VW5
       CALLF VW40
       JR VW99
VW5:
       CMP A,5
       JRNZ VW6
       CALLF VW50
       JR VW99
VW6:
       CMP A,6
       JRNZ VW7
       CALLF VW60
       JR VW99
VW7:
       CMP A,7
       JRNZ VW8
       CALLF VW70
       JR VW99
VW8:
       CMP A,8
       JRNZ VW9
       CALLF VW80
       JR VW99
VW9:
       CMP A,9
       JRNZ VWA
       CALLF VW90
       JR VW99
VWA:
        CMP A,10
        JRNZ VWB
        CALLF VWA0
        JR VW99
VWB:
        CMP A,11
        JRNZ VWC
        CALLF VWB0
        JR VW99
VWC:
        CMP A,12
        JRNZ VWD
        CALLF VWC0
        JR VW99
VWD:
        CMP A,13
        JRNZ VWE
        CALLF VWD0
        JR VW99
VWE:
        CMP A,14
        JRNZ VWF
        CALLF VWE0
        JR VW99
VWF:
       CMP A,15
       JRNZ VW99
       CALLF VWF0
       JR VW99

VW99:
       MV A,8
       ADD X,A
       DEC IL
       JRNZ VW0
       RETF              
;
VW00:   ; ÏÄÞ  ±·
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
VW10:   ; ÏÄÞ Ä¼Þ
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
VW20:   ; ¶ÍÞ Ð·Þ 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
VW30:   ; ¿×  
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
VW40:   ; ÏÄÞ 1 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL4
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
VW50:   ; ÏÄÞ 2 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL5
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
;
VW60:   ; ÏÄÞ 3
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL6
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
;
VW70:   ; Ë×· 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL7
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
;
VW80:   ; µ¼Þ¬Ï 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
;                
VW90:   ; Ä¼ÞÏÄÞ ÃÞ ÓÉÅ¹Þ
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,0
       CALLF SADR
       RETF
;
VWA0:   ; ¶ÝÊÞÝ ËÀÞØ
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
;
VWB0:   ; ¶ÝÊÞÝ ÏÝÅ¶ 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
; 
VWC0:   ; ¶ÝÊÞÝ Ð·Þ 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
VWD0:   ; UFO
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
;
VWE0:   ; ¸Ó 
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
;
VWF0:   ; END
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF

; ÏÄÞ ±·    
MTBL0:  DB 0
; ÏÄÞ Ä¼Þ
MTBL1:  DB 1
; ¶ÍÞ 
MTBL2:  DB 2
; ¸³¶Ý
MTBL3:  DB 3
; ÏÄÞ1
MTBL4:  DB 0,10,11,1,11,10,0
; ÏÄÞ2
MTBL5:  DB 0,0,0,10,10,10,11,11,11,1,1,1,1,11,11,11,10,10,10,0,0,0
; ÏÄÞ 3
MTBL6:  DB 0,0,0,0,10,10,10,10,11,11,11,11,1,1,1,1,11,11,11,11,10,10,10,10
        DB 0,0,0,0
; ÏÄÞ 4
MTBL7:  DB 0,0,0,0,0,0,0,0,0,0,0,0,0
; µ¼Þ¬Ï 
MTBL8:  DB 0,12,13,14,15,16,15,14,13,12,0
;
;  TYPE 
;   0 :  ÏÄÞ ±·
;   1 :  ÏÄÞ Ä¼Þ 
;   2 :  ¶ÍÞ ËÀÞØ
;   3 :  ¿×
;   4 :  ÏÄÞ 1
;   5 :  ÏÄÞ 2
;   6 :  ÏÄÞ 3
;   7 :  ÏÄÞ 4
;   8 :  µ¼Þ¬Ï
;   9 :  ÏÄÞ ±·  ÃÞ Ã¯ºÂ µÄ½
;  10 :  ÏÄÞ ±· ÃÞ ¶ÝÊÞÝ ËÀÞØ
;  11 :  ÏÄÞ ±· ÃÞ ¶ÝÊÞÝ ÏÝÅ¶
;  12 :  ÏÄÞ ±·ÃÞ  ¶ÝÊÞÝ Ð·Þ
;  13 :  UFO
;  14 :  ¸Ó
;  15 :  END
;***********************
;* KEY DATA TBL
;***********************
;
KTBL:           ;UDLR
;
        DB 0    ;0000
        DB 6    ;0001          
        DB 4    ;0010
        DB 9    ;0011
        DB 2    ;0100
        DB 6    ;0101
        DB 4    ;0110
        DB 9    ;0111
        DB 8    ;1000
        DB 6    ;1001
        DB 4    ;1010
        DB 9    ;1011
        DB 0    ;1100
        DB 6    ;1101
        DB 4    ;1110
        DB 9    ;1111
;
MUSIC1L: 
;----------------------------
; Building Rescue Theme Song 
;        Conposed by 
;(c)1994/06/23 Kenkichi Motoi
;----------------------------
;       game start!!
        DB        _O5C,_O4C
        DB        _RR,_RR
        DB        _O5G,_RR
        DB        _O5E,_RR
        DB        _O5D,_O3G
        DB        _O5D,_RR
        DB        _O5D,_RR
        DB        _O5D,_RR
        DB        _O5D,_O4C
        DB        _RR,_RR
        DB        _O4G,_RR
        DB        _O5C,_RR
        DB        _O5D,_O3G
        DB        _RR,_RR
        DB        _O5E,_RR
        DB        _RR,_RR
        DB        _O5G,_O4C
        DB        _RR,_RR
        DB        _O5A,_RR
        DB        _O5E,_RR
        DB        _O5G,_O4C
        DB        _RR,_RR
        DB        _O5A,_O4CS
        DB        _O5C,_RR
        DB        _O5D,_O4D
        DB        _O4A,_RR
        DB        _O5A,_RR
        DB        _O5F,_RR
        DB        _O5D,_O3A
        DB        _O4A,_RR
        DB        _O5A,_RR
        DB        _O5F,_RR
;MUSIC 1L:
        DB        _O5C,_O4C
        DB        _RR,_RR
        DB        _O5G,_RR
        DB        _O5E,_RR
        DB        _O5D,_O3G
        DB        _O5D,_RR
        DB        _O5D,_RR
        DB        _O5D,_RR
        DB        _O5D,_O4C
        DB        _RR,_RR
        DB        _O4G,_RR
        DB        _O5C,_RR
        DB        _O5D,_O3G
        DB        _RR,_RR
        DB        _O5E,_RR
        DB        _RR,_RR
MUSIC1S:        
        DB        _O5G,_O4G
        DB        _O4G,_RR
        DB        _O5A,_RR
        DB        _O5E,_RR
        DB        _O5G,_O3G
        DB        _RR,_RR
        DB        _O5A,_O3G
        DB        _RR,_RR
        DB        _O5B,_O3D
        DB        _O5B,_O3D
        DB        _O5B,_O3D
        DB        _O5B,_O3D
        DB        _O5B,_O3D
        DB        _O5B,_O3D
        DB        _O5B,_O3D
        DB        _O5B,_O3D
        DB        _END
;
MUSIC3: ; Ô×Ú 
;Ô×Ú.MP1
;(C)1994 Kenkichi Motoi

 DB _O3B,_O4B,_O3B
 DB _O3B,_O3B,_O3B
 DB _O3B,_O3B,_O3B
 DB _O3B,_O4B,_O3B
 DB _O3B,_O3B,_O3B
 DB _O3B,_O4B,_O3B
 DB _O3B,_O4B,_O3B
 DB _O3B,_O3B,_O3B
 DB _O3B,_O3B,_O3B
 DB _O4D,_O5D,_O4D
 DB _O4D,_O4D,_O4D
 DB _O4CS,_O5CS,_O4CS
 DB _O4CS,_O5CS,_O4CS
 DB _O4CS,_O4CS,_O4CS
 DB _O3B,_O4B,_O3B
 DB _O3B,_O4B,_O3B
 DB _O3B,_O3B,_O3B
 DB _O3AS,_O4AS,_O3B
 DB _O3B,_O4B,_O3B
 DB _O3B,_O4B,_O3B
 DB _O3B,_O4B,_O3B
 DB _O3B,_O4B,_O3B
 DB _O3B,_O4B,_O3B
 DB _O3B,_O4B,_O3B
 DB _END
;
MUSIC41: ;
;Ëß·(Ð·Þ)
	DB _O4F,_O4A,_O4B,_RR,_O4F,_O4A,_O4B,_RR,_END
MUSIC42:
;Îßº(ËÀÞØ)
	DB _O3F,_O3A,_O3B,_RR,_O3F,_O3A,_O3B,_RR,_END

MUSIC5: ; Ã¯º¯ ±ÀØ 
    DB _O3C,_O3E,_O4C,_O4E,_END
MUSIC6:
;¸Ø±.MP1
;(C)1994 Kenkichi Motoi

 DB _O5D,_O3G
 DB _O5D,_O5D
 DB _O5D,_O4G
 DB _O5D,_O4G
 DB _O4B,_O3G
 DB _O4B,_O4B
 DB _O4B,_O4G
 DB _O5C,_O4G
 DB _O5D,_O3G
 DB _O5D,_O5D
 DB _O5D,_O4G
 DB _O5D,_O4G
 DB _O4G,_O3G
 DB _O4G,_O4G
 DB _O4G,_O3G
 DB _O4G,_O3G
 DB _O4A,_O3A
 DB _O4B,_O3A
 DB _O5C,_O3A
 DB _O5D,_O3A
 DB _O5C,_O4C
 DB _O5C,_O4C
 DB _O4B,_O4E
 DB _O4B,_O4E
 DB _O4A,_O4D
 DB _O4A,_O4C
 DB _O4A,_O4D
 DB _O4A,_O4E
 DB _O4A,_O4D
 DB _O4A,_O4C
 DB _O4A,_O3B
 DB _O4A,_O3A
 DB _O4B,_O3G
 DB _O5C,_O5C
 DB _O5D,_O4G
 DB _O5E,_O4G
 DB _O5D,_O3G
 DB _O5D,_O5D
 DB _O5D,_O4G
 DB _O5D,_O4G
 DB _O5G,_O3B
 DB _O5G,_O5G
 DB _O5G,_O4B
 DB _O5G,_O4B
 DB _O5D,_O3G
 DB _O5D,_O5D
 DB _O5D,_O4G
 DB _O5D,_O4G
 DB _O5C,_O4D
 DB _O5C,_O4D
 DB _O4B,_O4E
 DB _O4B,_O4E
 DB _O4A,_O4FS
 DB _O4A,_O4FS
 DB _O4A,_O4FS
 DB _O4G,_O4FS
 DB _O4G,_O4B
 DB _O4G,_O4B
 DB _O4G,_O4B
 DB _O4G,_O4B
 DB _O4G,_O4B
 DB _O4G,_O4B
 DB _O4G,_O4B
 DB _END
;
; BONUS 
MUSIC7:
    DB _O4C
    DB _O4E
    DB _O4G
    DB _RR
    DB _END
MUSIC8: ; Ã¯º¯ µÁ
;       Ã¯ºÂ.MP1
    DB   _O5B,_END
    DB   _O5G,_END
    DB   _O5E,_END
    DB   _O5C,_END
;
MUSIC9: ; ¶ÝÊÞÝ 
;       ¶ÝÊÞÝ.MP1
    DB   _O3C,_END
    DB   _O4C,_END
    DB   _RR,_END
    DB   _RR,_END
;
MUSICA:
;----------------------------
; Building Rescue Theme Song 
;        Conposed by 
;(c)1994/06/23 Kenkichi Motoi
;----------------------------
;       ending
        DB        _O5C,_END,_O4C,_END
        DB        _RR,_END,_RR,_END
        DB        _O5G,_END,_RR,_END
        DB        _O5E,_END,_RR,_END
        DB        _O5D,_END,_O3G,_END
        DB        _O5D,_END,_RR,_END
        DB        _O5D,_END,_RR,_END
        DB        _O5D,_END,_RR,_END
        DB        _O5D,_END,_O4C,_END
        DB        _RR,_END,_RR,_END
        DB        _O4G,_END,_RR,_END
        DB        _O5C,_END,_RR,_END
        DB        _O5D,_END,_O3G,_END
        DB        _RR,_END,_RR,_END
        DB        _O5E,_END,_RR,_END
        DB        _RR,_END,_RR,_END
        DB        _O5G,_END,_O4C,_END
        DB        _RR,_END,_RR,_END
        DB        _O5A,_END,_RR,_END
        DB        _O5E,_END,_RR,_END
        DB        _O5G,_END,_O4C,_END
        DB        _RR,_END,_RR,_END
        DB        _O5A,_END,_O4CS,_END
        DB        _O5C,_END,_RR,_END
        DB        _O5D,_END,_O4D,_END
        DB        _O4A,_END,_RR,_END
        DB        _O5A,_END,_RR,_END
        DB        _O5F,_END,_RR,_END
        DB        _O5D,_END,_O3A,_END
        DB        _O4A,_END,_RR,_END
        DB        _O5A,_END,_RR,_END
        DB        _O5F,_END,_RR,_END
        DB        _O5C,_END,_O4C,_END
        DB        _RR,_END,_RR,_END
        DB        _O5G,_END,_RR,_END
        DB        _O5E,_END,_RR,_END
        DB        _O5D,_END,_O3G,_END
        DB        _O5D,_END,_RR,_END
        DB        _O5D,_END,_RR,_END
        DB        _O5D,_END,_RR,_END
        DB        _O5D,_END,_O4C,_END
        DB        _RR,_END,_RR,_END
        DB        _O4G,_END,_RR,_END
        DB        _O5C,_END,_RR,_END
        DB        _O5D,_END,_O3G,_END
        DB        _RR,_END,_RR,_END
        DB        _O5E,_END,_RR,_END
        DB        _RR,_END,_RR,_END
        DB        _O5G,_END,_O4G,_END
        DB        _O4G,_END,_RR,_END
        DB        _O5A,_END,_RR,_END
        DB        _O5E,_END,_RR,_END
        DB        _O5G,_END,_O3G,_END
        DB        _RR,_END,_RR,_END
        DB        _O5A,_END,_O3G,_END
        DB        _RR,_END,_RR,_END
        DB        _O5B,_END,_O3D,_END
        DB        _O5B,_END,_O3D,_END
        DB        _O5B,_END,_O3D,_END
        DB        _O5B,_END,_O3D,_END
        DB        _O5B,_END,_O3D,_END
        DB        _O5B,_END,_O3D,_END
        DB        _O5B,_END,_O3D,_END
        DB        _O5B,_END,_O3D,_END
MUSICB: ; Öº ²ÄÞ³
        DB  _O4E,_END
;
MDAT3: ; ²Ã
        DB 8
        DW (MDAT3E-MDAT3S)
MDAT3S:
; ²Ã.WAV
    DB 000H, 03EH, 000H, 007H, 003H, 000H, 03FH, 0E1H
    DB 007H, 007H, 0C0H, 001H, 0E1H, 080H, 000H, 07FH
    DB 0F0H, 007H, 0DFH, 0FCH, 007H, 0C0H, 0FEH, 001H
    DB 0F0H, 01FH, 0E0H, 0FFH, 007H, 0E0H, 07FH, 007H
    DB 0F8H, 01FH, 081H, 0FCH, 003H, 0E0H, 0FFH, 007H
    DB 0F0H, 03FH, 003H, 0F8H, 03FH, 0C1H, 0F0H, 01FH
    DB 080H, 0F8H, 03FH, 0C0H, 0F8H, 01FH, 0E0H, 0F8H
    DB 03FH, 0C0H, 07CH, 01FH, 0E0H, 0F8H, 03FH, 0C1H
    DB 0E0H, 01FH, 0E0H, 0F0H, 03FH, 083H, 0E0H, 0FFH
    DB 007H, 0C1H, 0FEH, 00FH, 081H, 0F8H, 01FH, 007H
    DB 0F0H, 07CH, 01FH, 0F8H, 0F0H, 03FH, 081H, 0E0H
    DB 0FFH, 007H, 081H, 0F8H, 03CH, 01FH, 0E0H, 0F8H
    DB 03FH, 081H, 0E3H, 0FCH, 007H, 007H, 07EH, 03CH
    DB 01CH, 0FCH, 0F8H, 039H, 0F1H, 0E0H, 063H, 0E3H
    DB 0C0H, 0C7H, 083H, 083H, 0C3H, 0E7H, 0C1H, 0C3H
    DB 0C3H, 0E3H, 0E0H, 0F8H, 0F0H, 070H, 07BH, 0E3H
    DB 080H, 0E0H, 0CFH, 0C0H, 073H, 0E0H, 0E0H, 0E0H
    DB 0F0H, 078H, 07CH, 018H, 0F0H, 0F0H, 0F8H, 030H
    DB 061H, 0F8H, 018H, 00FH, 070H, 030H, 03CH, 00EH
    DB 000H, 07EH, 003H, 080H, 003H, 018H, 006H, 000H
    DB 007H, 083H, 080H, 007H, 03EH, 000H, 007H, 083H
    DB 003H, 001H, 0C0H, 070H, 003H, 0E0H, 0E0H, 00FH
    DB 001H, 081H, 0FCH, 03FH, 007H, 0E0H, 0F0H, 003H
    DB 083H, 0E0H, 000H, 001H, 0C0H, 003H, 080H, 003H
    DB 0EFH, 000H, 000H, 008H, 07FH, 0FFH, 000H
MDAT3E:
MDAT4: ; ¶ÞÝÊÞ
        DB 6
        DW (MDAT4E-MDAT4S)
MDAT4S: 
; ¶ÞÝÊÞ.WAV
    DB 0E3H, 000H, 0F9H, 0CFH, 08CH, 060H, 01FH, 000H
    DB 010H, 0CFH, 0E0H, 00FH, 0C1H, 0FFH, 0FFH, 000H
    DB 070H, 01FH, 00FH, 0FFH, 0FCH, 003H, 083H, 0E0H
    DB 0FFH, 0FFH, 0F0H, 01CH, 03CH, 01EH, 01FH, 0FFH
    DB 081H, 080H, 070H, 0E1H, 0FFH, 0FFH, 001H, 083H
    DB 083H, 0E7H, 0FFH, 0FEH, 004H, 003H, 01FH, 0EFH
    DB 0FFH, 0FCH, 00CH, 01FH, 01CH, 03FH, 0FFH, 0F8H
    DB 020H, 01CH, 0E3H, 0FFH, 0FFH, 0E0H, 020H, 0E0H
    DB 0FFH, 0FFH, 0FFH, 001H, 003H, 0C3H, 0BFH, 0FFH
    DB 0F8H, 000H, 01CH, 039H, 0FFH, 0FFH, 0E0H, 000H
    DB 078H, 0E7H, 0FFH, 0FCH, 00CH, 007H, 087H, 0FFH
    DB 0FFH, 0E0H, 070H, 01EH, 01FH, 0FFH, 0FEH, 000H
    DB 000H, 07FH, 0FFH, 0FFH, 0FEH, 000H, 001H, 0FFH
    DB 0FFH, 0FFH, 080H, 000H, 00FH, 0FFH, 0FFH, 0FCH
    DB 000H, 000H, 07FH, 0FFH, 0FFH, 080H, 000H, 003H
    DB 0FFH, 0FFH, 0F0H, 000H, 000H, 0FFH, 0FFH, 0FFH
    DB 000H, 000H, 00FH, 0FFH, 0FFH, 0F0H, 000H, 000H
    DB 0FFH, 0FFH, 0FEH, 000H, 000H, 00FH, 0FFH, 0FFH
    DB 0C0H, 000H, 003H, 0FFH, 0FFH, 0FCH, 000H, 000H
    DB 07FH, 0FFH, 0FFH, 0C0H, 000H, 007H, 0FFH, 0FFH
    DB 0F8H, 000H, 000H, 07FH, 0FFH, 0FFH, 0C0H, 000H
    DB 00FH, 0FFH, 0FFH, 0F8H, 000H, 000H, 0FFH, 0FFH
    DB 0FFH, 0C0H, 000H, 01FH, 0FFH, 0FFH, 0FCH, 000H
    DB 001H, 0FFH, 0FFH, 0FFH, 0E0H, 000H, 00FH, 0FFH
    DB 0FFH, 0F8H, 000H, 000H, 03FH, 0FFH, 0FFH, 000H
    DB 000H, 001H, 0FFH, 0FFH, 0C0H, 000H, 000H, 00FH
    DB 0FFH, 0FCH, 000H, 000H, 000H, 01FH, 0FFH, 0E0H
    DB 000H, 0FCH, 000H, 003H, 0FFH, 0FFH, 0FEH, 0F8H
    DB 000H, 001H, 0FFH, 0FFH, 000H, 0FEH, 001H, 0F0H
    DB 07FH, 01FH, 0FFH, 0C0H, 0F0H, 03CH, 01FH, 0FFH
    DB 0F8H, 038H, 00EH, 00FH, 09FH, 0FFH, 081H, 0C0H
    DB 030H, 0F1H, 0FFH, 0FFH, 006H, 003H, 0C3H, 08FH
    DB 0FFH, 0F8H, 038H, 03CH, 03EH, 078H, 0FFH, 0C0H
    DB 0C0H, 0F0H, 0F3H, 0F7H, 0FFH, 082H, 001H, 0C3H
    DB 08FH, 0BFH, 0FFH, 018H, 00EH, 00EH, 01CH, 0FFH
    DB 0F0H, 080H, 030H, 070H, 0F7H, 0FFH, 0C0H, 081H
    DB 0C1H, 083H, 0FFH, 0FFH, 000H, 00FH, 08FH, 00FH
    DB 0BFH, 0F8H, 01EH, 01EH, 01EH, 01FH, 0FFH, 0F0H
    DB 030H, 03CH, 07CH, 01FH, 0FFH, 0C0H, 070H, 030H
    DB 07CH, 07FH, 0FFH, 081H, 0C0H, 07CH, 07CH, 0FFH
    DB 0FEH, 001H, 0F3H, 09FH, 0F0H, 07FH, 0FFH, 000H
    DB 00FH, 0FFH, 000H, 0FFH, 0FFH, 0C0H, 001H, 0FFH
    DB 080H, 07FH, 0F9H, 070H, 000H, 0FFH, 0E0H, 01FH
    DB 0FBH, 0FCH, 001H, 0F8H, 01FH, 087H, 0FFH, 0F8H
    DB 003H, 000H, 0F8H, 00FH, 0FFH, 0E0H, 01EH, 007H
    DB 0C7H, 0CFH, 0FFH, 0E0H, 078H, 01FH, 007H, 087H
    DB 0FFH, 0E0H, 0F0H, 01EH, 00EH, 00FH, 0FFH, 0E0H
    DB 0F0H, 03EH, 03EH, 00FH, 0FFH, 0E0H, 018H, 03FH
    DB 00FH, 087H, 0FFH, 0F0H, 01EH, 007H, 087H, 083H
    DB 0FFH, 0F8H, 007H, 003H, 0C1H, 0E0H, 0FFH, 0FEH
    DB 003H, 0C1H, 0F0H, 07CH, 01FH, 0BFH, 0C0H, 0F0H
    DB 03EH, 01FH, 007H, 0FFH, 0F0H, 00EH, 003H, 0E0H
    DB 0F8H, 03FH, 0FFH, 081H, 0E0H, 0FCH, 01FH, 007H
    DB 0FFH, 0F0H, 01FH, 003H, 0E0H, 0F8H, 00FH, 0FFH
    DB 0E0H, 078H, 01FH, 007H, 0F0H, 07EH, 0FFH, 000H
    DB 0F0H, 07EH, 00FH, 080H, 0F8H, 0FFH, 0FEH, 001H
    DB 0E0H, 07CH, 01FH, 0C0H, 0F0H, 00FH, 00FH, 0F7H
    DB 0E0H, 01FH, 003H, 0F0H, 07CH, 01FH, 080H, 03EH
MDAT4E:
;
OTOTBL0:
                DW 1451 ; 
                DW  13
                DW 1369
                DW  14
                DW 1291
                DW  15
                DW 1217
                DW  16
                DW 1147
                DW  17
                DW 1083
                DW  18
                DW 1019
                DW  19
                DW  961
                DW  20
                DW  907
                DW  21
                DW  855
                DW  22
                DW  807
                DW  24
                DW  760
                DW  25
;
                DW  717 
                DW  27              
                DW  676
                DW  29
                DW  637
                DW  30
                DW  600
                DW  32
                DW  565
                DW  34            
                DW  533
                DW  36
                DW  501
                DW  38
                DW  472
                DW  40
                DW  445
                DW  43
                DW  419
                DW  46
                DW  395
                DW  48
                DW  372
                DW  52
;
                DW 350 ; 
                DW  55
                DW 330
                DW  58
                DW 310
                DW  62
                DW 292
                DW  66
                DW 274
                DW  70
                DW 258
                DW  74
                DW 242
                DW  79
                DW 228
                DW  84
                DW 214
                DW  89
                DW 201
                DW  95
                DW 189
                DW  101
                DW 178
                DW  108
                DW 1451
                DW   13
;
OTOTBL1:
                DW 1451 ; 
                DW  26
                DW 1369
                DW  28
                DW 1291
                DW  30
                DW 1217
                DW  32
                DW 1147
                DW  33
                DW 1083
                DW  35
                DW 1019
                DW  38
                DW  961
                DW  40
                DW  907
                DW  42
                DW  855
                DW  45
                DW  807
                DW  48
                DW  760
                DW  51
;
                DW  717 
                DW  54              
                DW  676
                DW  57
                DW  637
                DW  60
                DW  600
                DW  64
                DW  565
                DW  68            
                DW  533
                DW  72
                DW  501
                DW  77
                DW  472
                DW  81
                DW  445
                DW  86
                DW  419
                DW  92
                DW  395
                DW  97
                DW  372
                DW  103
;
                DW 350 ; 
                DW  110
                DW 330
                DW  116
                DW 310
                DW  124
                DW 292
                DW  132
                DW 274
                DW  140
                DW 258
                DW  149
                DW 242
                DW  159
                DW 228
                DW  168
                DW 214
                DW  179
                DW 201
                DW  191
                DW 189
                DW  203
                DW 178
                DW  216
                DW 1451
                DW   26
;
;***************
;* CHAR DATA
;***************
NUMDAT:
;		DB	050H,001H
		DB	00EH,01FH,011H,01FH,00EH,000H,000H,000H
		DB	000H,012H,01FH,01FH,010H,000H,000H,000H
		DB	012H,019H,01DH,017H,012H,000H,000H,000H
		DB	00AH,011H,015H,01FH,00AH,000H,000H,000H
		DB	00EH,009H,01FH,01FH,008H,000H,000H,000H
		DB	017H,017H,01DH,01DH,009H,000H,000H,000H
		DB	00EH,01FH,015H,01DH,009H,000H,000H,000H
		DB	003H,001H,01DH,01FH,003H,000H,000H,000H
		DB	00AH,017H,015H,01DH,00AH,000H,000H,000H
		DB	002H,017H,015H,01FH,00EH,000H,000H,000H
ALPDAT:
;		DB	0A0H,002H
		DB	01EH,009H,009H,01FH,01EH,000H,000H,000H ; A
		DB	01FH,01FH,015H,015H,00AH,000H,000H,000H ; B
		DB	00EH,01FH,011H,011H,011H,000H,000H,000H ; C
		DB	01FH,011H,011H,01FH,00EH,000H,000H,000H ; D
		DB	01FH,01FH,015H,015H,011H,000H,000H,000H ; E
		DB	01FH,01FH,005H,005H,001H,000H,000H,000H ; F
		DB	00EH,01FH,011H,015H,01DH,000H,000H,000H ; G
		DB	01FH,01FH,004H,01FH,01FH,000H,000H,000H ; H
		DB	000H,000H,01FH,01FH,000H,000H,000H,000H ; I
		DB	011H,011H,01FH,00FH,001H,000H,000H,000H ; J
		DB	01FH,01FH,004H,00AH,011H,000H,000H,000H ; K
		DB	01FH,01FH,010H,010H,010H,000H,000H,000H ; L
		DB	01FH,002H,004H,002H,01FH,01FH,000H,000H ; M 
		DB	01FH,01FH,006H,008H,01FH,000H,000H,000H ; N
		DB	00EH,01FH,011H,011H,00EH,000H,000H,000H ; O
		DB	01FH,01FH,005H,005H,002H,000H,000H,000H ; P
		DB	00EH,019H,015H,00FH,016H,000H,000H,000H ; Q
		DB	01FH,01FH,009H,01FH,016H,000H,000H,000H ; R
		DB	016H,017H,01DH,01DH,009H,000H,000H,000H ; S
		DB	001H,001H,01FH,01FH,001H,001H,000H,000H ; T
		DB	00FH,01FH,010H,01FH,00FH,000H,000H,000H ; U
		DB	007H,00FH,018H,00FH,007H,000H,000H,000H ; V
		DB	00FH,010H,00FH,010H,01FH,00FH,000H,000H ; W
		DB	01BH,007H,004H,01CH,01BH,000H,000H,000H ; X
		DB	003H,007H,01CH,01CH,007H,003H,000H,000H ; Y
		DB	019H,01DH,01FH,017H,013H,000H,000H,000H ; Z
;
SPCHR:
		DB	003H,01AH,00FH,01AH,003H,000H,000H,000H ; ± (ÆÝ¹ÞÝ)
		DB	01FH,01FH,000H,004H,004H,000H,000H,000H ; ² (I-)
		DB	000H,01FH,01FH,015H,015H,011H,000H,000H ; ³ (E)
		DB	004H,00FH,01FH,00FH,004H,000H,000H,000H ; ´ (¼À Ô¼ÞÙ¼)
		DB	004H,01EH,01FH,01EH,004H,000H,000H,000H ; µ (³´ Ô¼ÞÙ¼)
		DB	00EH,00EH,01FH,00EH,004H,000H,000H,000H ; ¶ (Ð·Þ Ô¼ÞÙ¼)
		DB	004H,00EH,01FH,00EH,00EH,000H,000H,000H ; · (ËÀÞØ Ô¼ÞÙ¼)
		DB	01FH,011H,000H,000H,000H,000H,000H,000H ; ¸ [
		DB	004H,004H,01FH,004H,004H,000H,000H,000H ; ¹ +
		DB	000H,000H,000H,011H,01FH,000H,000H,000H ; º ]
		DB	00AH,00AH,00AH,00AH,00AH,000H,000H,000H ; » =
		DB	00EH,011H,015H,015H,00EH,000H,000H,000H ; ¼ (C)
		DB	00AH,01FH,015H,00AH,014H,000H,000H,000H ; ½ &

;
SPCDAT:
		DB	000H,000H,000H,000H,000H,000H,000H,000H
;ÒÝ ÃÞ°À
VMAP1:
;        INCLUDE VMAP1.DAT
        DB  033H,033H,033H,033H ;130  00723456789ABCDEF
        DB  033H,033H,033H,033H
        DB  033H,033H,033H,033H
        DB  033H,033H,033H,033H
        DB  033H,0E3H,033H,033H
        DB  033H,033H,033H,033H
        DB  033H,033H,0E3H,033H
        DB  03EH,033H,033H,0E3H
        DB  033H,033H,033H,033H
        DB  0FFH,0FFH,0FFH,0FFH ;120  00123456789ABCDEF
        DB  028H,007H,077H,072H ;119
        DB  027H,007H,077H,072H ;118
        DB  020H,000H,000H,002H ;117
        DB  027H,008H,087H,072H ;116
        DB  027H,007H,077H,072H ;115
        DB  027H,002H,027H,072H ;114
        DB  027H,003H,037H,072H ;113
        DB  028H,003H,0E7H,082H ;112
        DB  027H,003H,037H,072H ;111
        DB  020H,002H,025H,062H ;110  00123456789ABCDEF
        DB  020H,073H,037H,082H ;109
        DB  020H,083H,0E8H,072H ;108
        DB  020H,003H,037H,072H ;107
        DB  024H,002H,028H,082H ;106
        DB  027H,007H,077H,072H ;105
        DB  027H,007H,087H,072H ;104
        DB  027H,008H,077H,072H ;103
        DB  0D7H,007H,074H,082H ;102
        DB  027H,007H,077H,072H ;101
        DB  020H,000H,000H,002H ;100  00123456789ABCDEF
        DB  022H,027H,002H,022H ;99
        DB  023H,027H,002H,032H ;98
        DB  023H,027H,002H,032H ;97
        DB  023H,025H,002H,032H ;96
        DB  023H,027H,002H,032H ;95
        DB  022H,020H,002H,022H ;94
        DB  023H,020H,072H,032H ;93
        DB  023H,020H,072H,032H ;92
        DB  023H,020H,072H,032H ;91
        DB  023H,020H,072H,032H ;90   00123456789ABCDEF
        DB  022H,020H,072H,022H ;89
        DB  027H,080H,088H,072H ;88
        DB  020H,000H,077H,072H ;87
        DB  020H,074H,047H,072H ;86
        DB  020H,084H,048H,082H ;85
        DB  020H,074H,047H,072H ;84
        DB  020H,077H,077H,072H ;83
        DB  027H,088H,088H,072H ;82
        DB  027H,077H,077H,002H ;81
        DB  027H,074H,040H,082H ;80   00123456789ABCDEF
        DB  027H,007H,007H,072H ;79
        DB  020H,077H,078H,072H ;78
        DB  027H,072H,020H,072H ;77
        DB  028H,073H,037H,002H ;76
        DB  024H,043H,034H,042H ;75
        DB  028H,073H,037H,072H ;74
        DB  027H,072H,027H,072H ;73
        DB  027H,073H,030H,072H ;72
        DB  027H,073H,037H,082H ;71
        DB  028H,073H,037H,072H ;70   00123456789ABCDEF
        DB  027H,072H,027H,002H ;69
        DB  027H,087H,078H,072H ;68
        DB  027H,077H,077H,072H ;67
        DB  027H,074H,040H,062H ;66
        DB  027H,076H,040H,062H ;65
        DB  026H,074H,040H,002H ;64
        DB  027H,077H,077H,002H ;63
        DB  027H,077H,077H,002H ;62
        DB  027H,077H,087H,002H ;61
        DB  027H,077H,000H,002H ;60   00123456789ABCDEF
        DB  022H,028H,002H,022H ;59
        DB  023H,028H,002H,032H ;58
        DB  023H,028H,002H,032H ;57
        DB  023H,020H,002H,032H ;56
        DB  022H,020H,002H,022H ;55
        DB  023H,020H,042H,032H ;54
        DB  023H,020H,042H,032H ;53
        DB  023H,020H,042H,032H ;52
        DB  022H,020H,072H,022H ;51
        DB  027H,084H,077H,042H ;50   00123456789ABCDEF
        DB  028H,078H,077H,072H ;49
        DB  027H,080H,087H,072H ;48
        DB  027H,008H,078H,072H ;47
        DB  027H,072H,027H,082H ;46
        DB  027H,003H,037H,072H ;45
        DB  024H,003H,037H,082H ;44
        DB  027H,002H,027H,072H ;43
        DB  027H,000H,007H,072H ;42
        DB  024H,077H,000H,072H ;41
        DB  027H,047H,070H,072H ;40   00123456789ABCDEF
        DB  027H,074H,080H,042H ;39
        DB  022H,070H,000H,022H ;38
        DB  032H,074H,047H,023H ;37
        DB  032H,070H,077H,023H ;36
        DB  032H,080H,078H,023H ;35
        DB  022H,000H,077H,022H ;34
        DB  028H,000H,000H,072H ;33
        DB  027H,047H,074H,072H ;32
        DB  028H,000H,000H,082H ;31
        DB  027H,002H,020H,072H ;30   00123456789ABCDEF
        DB  028H,003H,030H,082H ;29
        DB  020H,003H,030H,072H ;28
        DB  020H,043H,034H,072H ;27
        DB  020H,003H,030H,072H ;26
        DB  024H,002H,020H,042H ;25
        DB  028H,004H,047H,082H ;24
        DB  027H,007H,007H,072H ;23
        DB  028H,004H,047H,082H ;22
        DB  027H,000H,000H,072H ;21
        DB  027H,072H,020H,072H ;20   00123456789ABCDEF
        DB  028H,073H,030H,082H ;19
        DB  027H,073H,030H,072H ;18
        DB  027H,043H,034H,072H ;17
        DB  027H,073H,030H,072H ;16
        DB  024H,072H,027H,002H ;15
        DB  027H,087H,078H,072H ;14
        DB  020H,047H,077H,002H ;13
        DB  020H,000H,000H,002H ;12
        DB  022H,024H,002H,022H ;11
        DB  023H,027H,002H,032H ;10   00123456789ABCDEF
        DB  023H,027H,002H,032H ;9
        DB  023H,026H,002H,032H ;8
        DB  022H,027H,002H,022H ;7
        DB  027H,077H,000H,072H ;6
        DB  027H,057H,070H,072H ;5
        DB  027H,077H,070H,072H ;4
        DB  027H,076H,070H,072H ;3
        DB  027H,077H,070H,072H ;2
        DB  027H,001H,010H,072H ;1
        DB  022H,021H,012H,022H ;0
VMAP2:
;        INCLUDE VMAP2.DAT
;1           01   23   45   67 
        DB  033H,033H,033H,033H  ; 0
        DB  033H,033H,033H,033H  ; 1
        DB  033H,033H,033H,033H  ; 2
        DB  033H,033H,033H,033H  ; 3
        DB  033H,033H,033H,033H  ; 4
        DB  033H,033H,033H,033H  ; 5
        DB  033H,03EH,033H,0E3H  ; 6
        DB  03EH,033H,0E3H,033H  ; 7
        DB  033H,033H,033H,033H  ; 8
        DB  03FH,0FFH,0FFH,0F3H  ; 9
        DB  032H,077H,070H,023H  ; 0
        DB  032H,077H,070H,023H  ; 1
        DB  022H,077H,070H,022H  ; 2
        DB  032H,077H,070H,023H  ; 3
        DB  032H,070H,000H,023H  ; 4
        DB  032H,070H,077H,023H  ; 5
        DB  032H,070H,077H,023H  ; 6
        DB  032H,070H,077H,023H  ; 7
        DB  032H,070H,097H,023H  ; 8
        DB  022H,070H,077H,022H  ; 9
        DB  032H,090H,097H,023H  ; 0
        DB  032H,070H,077H,023H  ; 1
        DB  032H,000H,079H,023H  ; 2
        DB  032H,009H,077H,023H  ; 3
        DB  032H,007H,080H,023H  ; 4
        DB  032H,007H,077H,023H  ; 5
        DB  022H,000H,087H,022H  ; 6
        DB  032H,090H,077H,023H  ; 7
        DB  032H,070H,079H,023H  ; 8
        DB  032H,090H,077H,023H  ; 9
        DB  032H,070H,077H,023H  ; 0
        DB  032H,070H,097H,023H  ; 1
        DB  032H,079H,077H,023H  ; 2
        DB  0D2H,090H,077H,022H  ; 3
        DB  032H,070H,079H,023H  ; 4
        DB  032H,070H,077H,023H  ; 5
        DB  032H,070H,077H,023H  ; 6
        DB  032H,080H,077H,023H  ; 7
        DB  032H,070H,078H,023H  ; 8
        DB  032H,070H,077H,023H  ; 9
        DB  022H,000H,000H,022H  ; 0
        DB  027H,072H,027H,082H  ; 1
        DB  028H,073H,037H,072H  ; 2
        DB  027H,073H,037H,082H  ; 3
        DB  028H,072H,027H,072H  ; 4
        DB  027H,077H,077H,072H  ; 5
        DB  022H,077H,077H,022H  ; 6
        DB  032H,077H,097H,023H  ; 7
        DB  032H,077H,077H,023H  ; 8
        DB  032H,077H,077H,023H  ; 9
        DB  032H,097H,077H,023H  ; 0
        DB  032H,077H,077H,023H  ; 1
        DB  032H,077H,079H,023H  ; 2
        DB  027H,077H,077H,07DH  ; 3
        DB  027H,077H,077H,072H  ; 4
        DB  027H,077H,077H,072H  ; 5
        DB  027H,077H,077H,072H  ; 6
        DB  020H,002H,020H,002H  ; 7
        DB  027H,073H,037H,072H  ; 8
        DB  027H,073H,037H,072H  ; 9
        DB  027H,073H,037H,072H  ; 0
        DB  029H,073H,037H,092H  ; 1
        DB  027H,072H,027H,072H  ; 2
        DB  027H,073H,034H,072H  ; 3
        DB  029H,003H,034H,002H  ; 4
        DB  024H,073H,037H,072H  ; 5
        DB  027H,073H,037H,042H  ; 6
        DB  020H,002H,020H,092H  ; 7
        DB  027H,073H,037H,072H  ; 8
        DB  027H,093H,037H,042H  ; 9
        DB  027H,073H,037H,072H  ; 0
        DB  027H,043H,039H,072H  ; 1
        DB  020H,042H,020H,002H  ; 2
        DB  027H,073H,034H,002H  ; 3
        DB  029H,073H,034H,002H  ; 4
        DB  027H,073H,037H,072H  ; 5
        DB  027H,043H,037H,072H  ; 6
        DB  020H,042H,020H,092H  ; 7
        DB  020H,043H,037H,072H  ; 8
        DB  027H,073H,034H,072H  ; 9
        DB  024H,043H,034H,002H  ; 0
        DB  028H,003H,037H,072H  ; 1
        DB  020H,002H,020H,002H  ; 2
        DB  020H,000H,000H,092H  ; 3
        DB  027H,042H,027H,072H  ; 4
        DB  020H,043H,034H,002H  ; 5
        DB  027H,073H,034H,072H  ; 6
        DB  020H,003H,030H,002H  ; 7
        DB  027H,073H,034H,072H  ; 8
        DB  027H,043H,037H,072H  ; 9
        DB  027H,073H,030H,072H  ; 0
        DB  027H,073H,037H,072H  ; 1
        DB  024H,072H,027H,042H  ; 2
        DB  029H,077H,079H,002H  ; 3
        DB  027H,077H,077H,002H  ; 4
        DB  020H,000H,000H,002H  ; 5
        DB  027H,097H,007H,092H  ; 6
        DB  022H,027H,002H,022H  ; 7
        DB  023H,027H,002H,032H  ; 8
        DB  023H,027H,072H,032H  ; 9
        DB  023H,027H,002H,032H  ; 0
        DB  023H,027H,002H,032H  ; 1
        DB  022H,020H,002H,022H  ; 2
        DB  023H,027H,082H,032H  ; 3
        DB  023H,020H,002H,032H  ; 4
        DB  023H,026H,082H,032H  ; 5
        DB  023H,020H,002H,032H  ; 6
        DB  022H,026H,002H,022H  ; 7
        DB  023H,028H,002H,032H  ; 8
        DB  023H,020H,002H,032H  ; 9
        DB  023H,020H,082H,032H  ; 0
        DB  023H,020H,072H,032H  ; 1
        DB  022H,028H,002H,022H  ; 2
        DB  023H,026H,002H,032H  ; 3
        DB  023H,020H,082H,032H  ; 4
        DB  023H,027H,072H,032H  ; 5
        DB  023H,028H,002H,032H  ; 6
        DB  022H,026H,002H,022H  ; 7
        DB  023H,028H,072H,032H  ; 8
        DB  023H,026H,002H,032H  ; 9
        DB  023H,020H,082H,032H  ; 0
        DB  023H,020H,092H,032H  ; 1
        DB  022H,020H,002H,022H  ; 2
        DB  032H,070H,009H,023H  ; 3
        DB  032H,097H,007H,023H  ; 4
        DB  032H,076H,006H,023H  ; 5
        DB  032H,000H,000H,023H  ; 6
        DB  032H,067H,070H,023H  ; 7
        DB  022H,001H,010H,022H  ; 8
        DB  021H,071H,017H,012H  ; 9
VMAP3:
;        INCLUDE VMAP3.DAT
        DB  033H,033H,033H,033H ;130  00123456789ABCDEF
        DB  033H,033H,033H,033H
        DB  033H,033H,033H,033H
        DB  033H,033H,033H,033H
        DB  033H,033H,033H,033H
        DB  033H,033H,033H,033H
        DB  033H,033H,0E3H,033H
        DB  03EH,033H,033H,0E3H
        DB  033H,03EH,033H,033H
        DB  033H,0FFH,0FFH,033H ;120  00123456789ABCDEF
        DB  033H,027H,072H,03EH ;119
        DB  033H,027H,002H,033H ;118
        DB  0E3H,027H,062H,033H ;117
        DB  033H,026H,002H,0E3H ;116
        DB  033H,027H,062H,033H ;115
        DB  033H,027H,002H,033H ;114
        DB  033H,027H,002H,03EH ;113
        DB  03EH,026H,002H,033H ;112
        DB  033H,027H,062H,033H ;111
        DB  022H,027H,002H,022H ;110  00123456789ABCDEF
        DB  02AH,0BCH,000H,082H ;109
        DB  022H,027H,002H,022H ;108
        DB  023H,027H,002H,032H ;107
        DB  023H,027H,002H,032H ;106
        DB  023H,027H,002H,032H ;105
        DB  023H,027H,002H,0E2H ;104
        DB  02EH,020H,002H,032H ;103
        DB  023H,020H,062H,032H ;102
        DB  023H,020H,072H,032H ;101
        DB  022H,026H,062H,022H ;100  00123456789ABCDEF
        DB  020H,007H,0ABH,0C2H ;99
        DB  022H,020H,062H,022H ;98
        DB  023H,020H,072H,032H ;97
        DB  023H,026H,002H,032H ;96
        DB  023H,027H,002H,032H ;95
        DB  023H,026H,062H,032H ;94
        DB  023H,027H,002H,032H ;93
        DB  023H,026H,002H,032H ;92
        DB  023H,027H,062H,032H ;91
        DB  022H,026H,002H,022H ;90   00123456789ABCDEF
        DB  020H,007H,0ABH,0C2H ;89
        DB  022H,020H,002H,022H ;88
        DB  023H,020H,072H,032H ;87
        DB  023H,026H,062H,032H ;86
        DB  023H,020H,072H,032H ;85
        DB  023H,020H,072H,032H ;84
        DB  023H,026H,062H,032H ;83
        DB  023H,020H,072H,032H ;82
        DB  023H,027H,072H,032H ;81
        DB  032H,074H,047H,023H ;80   00123456789ABCDEF
        DB  032H,077H,076H,023H ;79
        DB  032H,077H,078H,023H ;78
        DB  032H,069H,076H,023H ;77
        DB  032H,077H,079H,023H ;76
        DB  032H,047H,074H,023H ;75
        DB  032H,047H,074H,023H ;74
        DB  032H,047H,074H,023H ;73
        DB  032H,097H,074H,023H ;72
        DB  032H,040H,074H,023H ;71
        DB  032H,040H,064H,023H ;70   00123456789ABCDEF
        DB  032H,040H,074H,023H ;69
        DB  022H,040H,094H,022H ;68
        DB  032H,040H,074H,023H ;67
        DB  032H,040H,000H,023H ;66
        DB  032H,044H,070H,023H ;65
        DB  032H,097H,040H,023H ;64
        DB  032H,044H,070H,023H ;63
        DB  032H,040H,000H,023H ;62
        DB  032H,040H,074H,023H ;61
        DB  032H,040H,079H,023H ;60   00123456789ABCDEF
        DB  022H,070H,077H,022H ;59
        DB  027H,070H,077H,072H ;58
        DB  027H,070H,070H,072H ;57
        DB  027H,0ABH,0C0H,072H ;56
        DB  027H,077H,040H,002H ;55
        DB  027H,077H,070H,002H ;54
        DB  020H,000H,000H,002H ;53
        DB  020H,000H,000H,002H ;52
        DB  020H,077H,077H,072H ;51
        DB  020H,077H,0ABH,0C2H ;50   00123456789ABCDEF
        DB  020H,077H,077H,072H ;49
        DB  020H,077H,074H,072H ;48
        DB  020H,000H,000H,002H ;47
        DB  020H,000H,000H,002H ;46
        DB  027H,077H,077H,002H ;45
        DB  02AH,0BCH,077H,002H ;44
        DB  027H,077H,077H,002H ;43
        DB  027H,077H,077H,002H ;42
        DB  027H,077H,077H,002H ;41
        DB  020H,000H,000H,002H ;40   00123456789ABCDEF
        DB  020H,000H,000H,002H ;39
        DB  027H,002H,020H,072H ;38
        DB  027H,043H,034H,072H ;37
        DB  027H,043H,034H,072H ;36
        DB  027H,003H,030H,072H ;35
        DB  027H,002H,020H,072H ;34
        DB  027H,008H,000H,072H ;33
        DB  024H,002H,020H,042H ;32
        DB  024H,073H,037H,042H ;31
        DB  027H,073H,030H,072H ;30   00123456789ABCDEF
        DB  028H,073H,030H,082H ;29
        DB  027H,072H,028H,072H ;28
        DB  027H,048H,074H,082H ;27
        DB  027H,082H,020H,072H ;26
        DB  024H,073H,030H,042H ;25
        DB  028H,073H,037H,082H ;24
        DB  027H,073H,037H,072H ;23
        DB  028H,072H,027H,082H ;22
        DB  027H,077H,077H,072H ;21
        DB  027H,072H,020H,072H ;20   00123456789ABCDEF
        DB  028H,073H,030H,082H ;19
        DB  027H,073H,030H,072H ;18
        DB  027H,043H,034H,072H ;17
        DB  027H,042H,024H,072H ;16
        DB  027H,077H,077H,002H ;15
        DB  027H,077H,040H,002H ;14
        DB  028H,077H,070H,002H ;13
        DB  027H,077H,040H,002H ;12
        DB  020H,000H,000H,002H ;11
        DB  029H,079H,009H,002H ;10   00123456789ABCDEF
        DB  027H,077H,040H,002H ;9
        DB  027H,097H,000H,092H ;8
        DB  027H,077H,000H,002H ;7
        DB  027H,077H,040H,002H ;6
        DB  029H,059H,077H,092H ;5
        DB  027H,077H,077H,002H ;4
        DB  027H,076H,077H,072H ;3
        DB  027H,077H,007H,072H ;2
        DB  021H,001H,010H,012H ;1
        DB  022H,022H,022H,022H ;0
VMAP4:
;        INCLUDE VMAP4.DAT
        DB  023H,033H,033H,032H ;130  00123454789ABCDEF
        DB  023H,033H,033H,032H
        DB  023H,033H,033H,032H
        DB  023H,033H,033H,032H
        DB  023H,033H,033H,032H
        DB  023H,033H,033H,032H
        DB  023H,03EH,033H,032H
        DB  02EH,033H,03EH,032H
        DB  023H,033H,033H,03DH
        DB  02FH,0FEH,03FH,0F2H ;120  00123454789ABCDEF
        DB  020H,003H,0E0H,002H ;119
        DB  020H,003H,030H,002H ;118
        DB  020H,00EH,030H,002H ;117
        DB  020H,003H,030H,002H ;116
        DB  020H,072H,027H,002H ;115
        DB  020H,073H,037H,002H ;114
        DB  020H,073H,037H,002H ;113
        DB  028H,072H,027H,082H ;112
        DB  020H,009H,090H,002H ;111
        DB  025H,052H,025H,042H ;110  00123454789ABCDEF
        DB  027H,073H,037H,072H ;109
        DB  027H,082H,028H,072H ;108
        DB  020H,008H,080H,002H ;107
        DB  024H,072H,028H,082H ;106
        DB  027H,073H,037H,072H ;105
        DB  027H,083H,037H,042H ;104
        DB  027H,07EH,037H,072H ;103
        DB  027H,073H,034H,082H ;102
        DB  027H,002H,027H,072H ;101
        DB  02AH,0BCH,000H,002H ;100  00123454789ABCDEF
        DB  022H,007H,004H,022H ;99
        DB  032H,007H,070H,023H ;98
        DB  032H,007H,044H,023H ;97
        DB  032H,040H,004H,023H ;96
        DB  032H,000H,000H,023H ;95
        DB  032H,000H,044H,023H ;94
        DB  032H,00AH,0BCH,023H ;93
        DB  032H,007H,070H,023H ;92
        DB  032H,087H,040H,023H ;91
        DB  032H,007H,070H,023H ;90   00123454789ABCDEF
        DB  032H,000H,000H,023H ;89
        DB  032H,00AH,0BCH,023H ;88
        DB  022H,000H,000H,022H ;87
        DB  027H,074H,047H,072H ;86
        DB  028H,070H,000H,072H ;85
        DB  027H,077H,047H,072H ;84
        DB  02AH,0BCH,000H,002H ;83
        DB  022H,022H,028H,002H ;82
        DB  023H,033H,037H,072H ;81
        DB  023H,033H,037H,082H ;80   00123454789ABCDEF
        DB  023H,033H,037H,072H ;79
        DB  022H,022H,028H,092H ;78
        DB  029H,008H,080H,002H ;77
        DB  022H,002H,020H,022H ;76
        DB  023H,003H,034H,032H ;75
        DB  023H,003H,030H,032H ;74
        DB  023H,003H,030H,032H ;73
        DB  022H,072H,020H,022H ;72
        DB  027H,077H,040H,082H ;71
        DB  027H,077H,080H,072H ;70   00123454789ABCDEF
        DB  027H,077H,070H,002H ;69
        DB  027H,007H,070H,002H ;68
        DB  02AH,0BCH,070H,002H ;67
        DB  027H,074H,040H,042H ;66
        DB  027H,074H,040H,042H ;65
        DB  024H,074H,040H,072H ;64
        DB  020H,000H,000H,002H ;63
        DB  020H,000H,000H,002H ;62
        DB  0D7H,000H,080H,072H ;61
        DB  027H,000H,000H,072H ;60   00123454789ABCDEF
        DB  027H,070H,077H,002H ;59
        DB  027H,000H,077H,072H ;58
        DB  020H,00AH,0BCH,002H ;57
        DB  020H,002H,022H,022H ;56
        DB  028H,003H,033H,032H ;55
        DB  020H,003H,033H,032H ;54
        DB  020H,003H,033H,032H ;53
        DB  027H,083H,033H,032H ;52
        DB  027H,002H,022H,022H ;51
        DB  020H,080H,0ABH,0C2H ;50   00123454789ABCDEF
        DB  028H,002H,022H,022H ;49
        DB  027H,083H,033H,032H ;48
        DB  027H,003H,033H,032H ;47
        DB  027H,003H,033H,032H ;46
        DB  020H,003H,033H,032H ;45
        DB  024H,002H,022H,022H ;44
        DB  027H,078H,088H,082H ;43
        DB  027H,000H,007H,072H ;42
        DB  024H,077H,000H,072H ;41
        DB  028H,008H,080H,072H ;40   00123454789ABCDEF
        DB  028H,008H,080H,002H ;39
        DB  028H,088H,080H,042H ;38
        DB  028H,008H,080H,072H ;37
        DB  028H,008H,080H,092H ;36
        DB  020H,000H,000H,072H ;35
        DB  028H,088H,000H,002H ;34
        DB  028H,008H,080H,002H ;33
        DB  028H,008H,084H,002H ;32
        DB  028H,088H,080H,072H ;31
        DB  028H,008H,080H,07DH ;30   00120454789ABCDEF
        DB  020H,000H,000H,072H ;29
        DB  020H,088H,007H,042H ;28
        DB  028H,008H,080H,002H ;27
        DB  028H,008H,080H,002H ;26
        DB  028H,088H,000H,002H ;25
        DB  028H,008H,080H,002H ;24
        DB  020H,000H,004H,002H ;23
        DB  028H,008H,080H,072H ;22
        DB  028H,008H,080H,072H ;21
        DB  0D8H,008H,089H,002H ;20   00120454789ABCDEF
        DB  028H,008H,080H,072H ;18
        DB  020H,088H,000H,072H ;19
        DB  020H,000H,000H,072H ;17
        DB  020H,000H,000H,072H ;16
        DB  020H,000H,007H,072H ;15
        DB  027H,047H,077H,072H ;14
        DB  020H,047H,000H,092H ;13
        DB  029H,000H,000H,002H ;12
        DB  020H,090H,077H,002H ;11
        DB  020H,077H,090H,042H ;10   00120454789ABCDEF
        DB  020H,007H,004H,042H ;9
        DB  020H,070H,049H,042H ;8
        DB  027H,077H,077H,002H ;7
        DB  027H,079H,040H,042H ;6
        DB  029H,050H,040H,002H ;5
        DB  027H,077H,077H,092H ;4
        DB  027H,004H,074H,072H ;3
        DB  027H,077H,007H,042H ;2
        DB  020H,001H,010H,042H ;1
        DB  022H,022H,022H,022H ;0
DDATA: ; Ï½¸ ÃÞ°À  ·¬×M2.SET
;       INCLUDE ·¬×M2.SET
;		DB	080H,006H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,03FH,0D9H,026H,078H,026H,0D9H
		DB	03FH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0C0H,0C0H,0C0H,0C0H,0C0H,0C0H,0C0H,0C0H
		DB	0C0H,0C0H,0C0H,0C0H,0C0H,0FFH,0FFH,0FFH
		DB	0EFH,0EFH,0EFH,0EFH,0EFH,0EFH,0EFH,0EFH
		DB	0EFH,0EFH,0EFH,0EFH,0EFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0E7H,09BH,065H,01EH,065H,09BH
		DB	0E7H,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FCH,083H,064H,01EH,065H,09BH
		DB	0E7H,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,06FH,097H,04BH,0BBH,04DH,013H
		DB	0A7H,0CFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0E7H,09BH,065H,01EH,064H,083H
		DB	0FCH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0E7H,0DBH,0BDH,0BDH,0BDH,0BBH,0DBH
		DB	0BDH,0BDH,0BDH,0DBH,0E7H,0FFH,0FFH,0FFH
		DB	0E0H,0E2H,0E2H,0E2H,0E2H,0E2H,0E2H,0E2H
		DB	0E0H,0E2H,0E0H,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0E0H,0E6H,0E6H,0E2H,0E6H,0E6H,0E6H,0E2H
		DB	0E4H,0E6H,0E0H,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0E0H,0E0H,0E0H,0E0H,0E8H,0E8H,0E8H,0E0H
		DB	0E0H,0E0H,0E0H,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0E0H,0E0H,0E0H,0E8H,0E4H,0ECH,0E4H,0E8H
		DB	0E0H,0E0H,0E0H,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0E0H,0E0H,0E0H,0ECH,0EAH,0E6H,0EAH,0ECH
		DB	0E0H,0E0H,0E0H,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0E0H,0E0H,0E0H,0E6H,0EDH,0EBH,0EDH,0E6H
		DB	0E0H,0E0H,0E0H,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0E0H,0E0H,0E8H,0E6H,0EDH,0EBH,0EDH,0E6H
		DB	0E8H,0E0H,0E0H,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0E7H,0DBH,0B5H,0DAH,0EDH,0F3H
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0E0H,0EEH,0EAH,0EAH,0EEH,0E0H
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0F3H,0EDH,0DAH,0B5H,0DBH,0E7H
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,080H,0BEH,0B2H,0BEH,080H,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0F9H,0F6H,0EAH,0EDH,0D3H,0CFH
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0CFH,0D3H,0EDH
		DB	0EAH,0F6H,0F9H,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0F3H,0CBH,0B7H
		DB	057H,06FH,09FH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,09FH,06FH,057H,0B7H,0CBH,0F3H
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,087H,0B7H,0B0H,0BEH,0B0H,087H
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,087H,0B0H,0BEH,080H,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,087H,0B0H,0BEH,0B0H,0B7H
		DB	087H,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,080H,0BEH,0B0H,087H,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0F1H,0EEH,0E8H,0CEH,099H,0B7H,0CFH
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,08FH,077H,047H,077H,09BH,0CDH,0E3H
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0F3H,0EDH,09BH
		DB	073H,017H,077H,08FH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0CFH,0B7H,0D9H,0EEH,0E2H,0EEH,0F1H
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,0F3H,0E9H,0CDH,093H
		DB	04FH,06FH,09FH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,099H,044H,05CH,066H
		DB	099H,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,09FH,04FH,06FH,093H,0E9H
		DB	0EDH,0F3H,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,0E3H,0D9H,0D9H,0DDH,0EBH
		DB	0EBH,0D9H,0D9H,0DDH,0E3H,0FFH,0FFH,0FFH
		DB	0FFH,0BFH,05FH,06FH,0F7H,0DBH,06DH,0B6H
		DB	0DFH,0ECH,0F5H,0FBH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,000H,0FFH,066H,0FFH
		DB	0FFH,000H,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,0FBH,0F5H,0ECH,0DFH
		DB	0B6H,06DH,0DBH,0F7H,06FH,05FH,0BFH,0FFH
		DB	0FFH,0FFH,081H,0B5H,0BDH,0BDH,0B5H,0B5H
		DB	0B5H,0B5H,0BDH,0BDH,0B5H,081H,0FFH,0FFH
		DB	0FFH,0FFH,0F7H,0C9H,0BEH,0D5H,0E3H,0C9H
		DB	0BEH,0D5H,0E3H,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0E3H,0D5H,0BEH,0C9H,0E3H,0D5H
		DB	0BEH,0C9H,0F7H,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0F7H,0C9H,0BEH,0D5H,0E3H,0C9H
		DB	0BEH,0D5H,0E3H,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0E3H,095H,0BEH,0C9H,0E3H,0D5H
		DB	0BEH,0C9H,0F7H,0FFH,0FFH,0FFH,0FFH,0FFH

CDATA: ; ·¬×2.SET
;       INCLUDE ·¬×2.SET
;		DB	080H,008H
		DB	01FH,01FH,01FH,01FH,01FH,01FH,01FH,01FH
		DB	01FH,01FH,01FH,000H,000H,000H,000H,000H
		DB	01FH,011H,019H,015H,011H,011H,011H,015H
		DB	013H,011H,01FH,000H,000H,000H,000H,000H
		DB	01BH,01BH,01BH,018H,01BH,003H,01BH,01BH
		DB	018H,01BH,01BH,000H,000H,000H,000H,000H
		DB	010H,010H,010H,010H,010H,010H,010H,010H
		DB	010H,010H,010H,010H,010H,000H,000H,000H
		DB	000H,000H,000H,018H,064H,01EH,064H,018H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,003H,064H,01EH,064H,018H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,090H,048H,0B8H,04CH,010H
		DB	020H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,018H,064H,01EH,064H,003H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	00CH,012H,021H,021H,021H,022H,012H,021H
		DB	021H,021H,012H,00CH,000H,000H,000H,000H
		DB	01FH,01DH,01DH,01DH,01DH,01DH,01DH,01DH
		DB	01FH,01DH,01FH,000H,000H,000H,000H,000H
		DB	01FH,019H,019H,01DH,019H,019H,019H,01DH
		DB	01BH,019H,01FH,000H,000H,000H,000H,000H
		DB	01FH,01FH,01FH,01FH,017H,017H,017H,01FH
		DB	01FH,01FH,01FH,000H,000H,000H,000H,000H
		DB	01FH,01FH,01FH,017H,01BH,013H,01BH,017H
		DB	01FH,01FH,01FH,000H,000H,000H,000H,000H
		DB	01FH,01FH,01FH,013H,015H,019H,015H,013H
		DB	01FH,01FH,01FH,000H,000H,000H,000H,000H
		DB	01FH,01FH,01FH,019H,012H,014H,012H,019H
		DB	01FH,01FH,01FH,000H,000H,000H,000H,000H
		DB	01FH,01FH,017H,019H,012H,014H,012H,019H
		DB	017H,01FH,01FH,000H,000H,000H,000H,000H
		DB	000H,000H,000H,018H,034H,01AH,00CH,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,00EH,00AH,00AH,00EH,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,00CH,01AH,034H,018H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,03EH,032H,03EH,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,006H,00AH,00CH,010H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,010H,00CH
		DB	00AH,006H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,008H,030H
		DB	050H,060H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,060H,050H,030H,008H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,030H,030H,03EH,030H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,030H,03EH,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,030H,03EH,030H,030H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,03EH,030H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,00EH,008H,00EH,018H,030H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,070H,040H,070H,018H,00CH,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,00CH,018H
		DB	070H,010H,070H,000H,000H,000H,000H,000H
		DB	000H,000H,030H,018H,00EH,002H,00EH,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,00CH,00CH,010H
		DB	060H,060H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,066H,07EH,066H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,060H,060H,010H,00CH
		DB	00CH,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,01CH,01CH,01CH,008H
		DB	008H,01CH,01CH,01CH,000H,000H,000H,000H
		DB	000H,000H,040H,060H,0F0H,0D8H,06CH,036H
		DB	01FH,00CH,004H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,0FFH,066H,0FFH
		DB	0FFH,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,004H,00CH,01FH
		DB	036H,06CH,0D8H,0F0H,060H,040H,000H,000H
		DB	000H,000H,000H,034H,03CH,03CH,034H,034H
		DB	034H,034H,03CH,03CH,034H,000H,000H,000H
		DB	000H,000H,000H,008H,03EH,014H,000H,008H
		DB	03EH,014H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,014H,03EH,008H,000H,014H
		DB	03EH,008H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,008H,03EH,014H,000H,008H
		DB	03EH,014H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,014H,03EH,008H,000H,014H
		DB	03EH,008H,000H,000H,000H,000H,000H,000H
		DB	01BH,01BH,01BH,018H,01BH,003H,01BH,01BH
		DB	018H,01BH,01BH,000H,000H,000H,000H,000H
		DB	01FH,015H,015H,015H,015H,01FH,015H,015H
		DB	015H,015H,01FH,000H,000H,000H,000H,000H
		DB	03FH,024H,036H,03FH,021H,02DH,021H,03FH
		DB	024H,036H,03FH,000H,000H,000H,000H,000H
		DB	03FH,029H,03DH,03FH,015H,015H,015H,03FH
		DB	029H,03DH,03FH,000H,000H,000H,000H,000H
		DB	000H,000H,000H,00EH,01FH,011H,015H,01DH
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,01EH,009H,009H,01FH,01EH
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,01FH,002H,004H,002H,01FH
		DB	01FH,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,01FH,01FH,015H,015H,011H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,00EH,01FH,011H,011H,00EH
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,007H,00FH,018H,00FH,007H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,01FH,01FH,015H,015H,011H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,01FH,01FH,009H,01FH,016H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,01FH,01FH,009H,01FH,016H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,01FH,01FH,015H,015H,015H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,01EH,009H,009H,01FH,01EH
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,01FH,01FH,011H,011H,00EH
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,001H,003H,01EH,01EH,003H
		DB	001H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,017H,003H,000H,017H,003H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,0C0H,026H,078H,026H,0C0H
		DB	000H,000H,000H,000H,000H,000H,000H,000H

;       INCLUDE ·¬×4.SET

;		DB	030H,005H
		DB	0FFH,081H,081H,09DH,0BFH,0A3H,0A3H,0A3H
		DB	081H,0BDH,093H,093H,0BFH,000H,000H,000H
		DB	0BDH,081H,0B3H,0BBH,0ABH,0AFH,0A7H,081H
		DB	0BFH,0BFH,081H,09DH,0A3H,000H,000H,000H
		DB	0A3H,0BFH,09DH,081H,0BDH,0A5H,0ADH,0ADH
		DB	0ADH,0ADH,0BDH,081H,0FFH,000H,000H,000H
		DB	0FFH,0C1H,0C9H,0DDH,0C9H,0E5H,0EFH,0EBH
		DB	0FBH,0D3H,0C1H,0FFH,0FFH,000H,000H,000H
		DB	0C9H,0FFH,0FFH,0C1H,0FDH,0FFH,0D3H,0FFH
		DB	0FDH,0C1H,0FFH,0FFH,0D3H,000H,000H,000H
		DB	0FFH,0EDH,0C1H,0FFH,0FFH,0EBH,0FFH,0D5H
		DB	0C1H,0C9H,0DDH,0C9H,0FFH,000H,000H,000H
		DB	0FFH,081H,0A5H,0B7H,0B3H,0ABH,0AFH,0A5H
		DB	081H,0AFH,0AFH,0ABH,0ABH,000H,000H,000H
		DB	0BBH,093H,081H,09DH,0BFH,0ABH,0ABH,0BBH
		DB	091H,081H,0BFH,0BFH,089H,000H,000H,000H
		DB	09DH,0B7H,0A3H,081H,0BFH,0BFH,0ABH,0ABH
		DB	0BFH,095H,081H,081H,0FFH,000H,000H,000H
		DB	0FFH,0FFH,059H,0CDH,045H,0D1H,059H,0CDH
		DB	077H,0F7H,05BH,0C9H,045H,000H,000H,000H
		DB	0D1H,05BH,07FH,055H,0ABH,0D5H,0ABH,0FDH
		DB	0E7H,0FFH,0FFH,0C7H,087H,000H,000H,000H
		DB	01FH,047H,003H,09FH,0CDH,079H,0FBH,0FFH
		DB	0FBH,055H,0ABH,055H,0FFH,000H,000H,000H
		DB	0FFH,0FAH,095H,09AH,0CDH,0CAH,0EDH,0EEH
		DB	0F5H,0F6H,0FFH,0FEH,0FFH,000H,000H,000H
		DB	0FEH,0FCH,0FEH,0FCH,0FEH,0FFH,0F6H,0CCH
		DB	0FEH,0FEH,0FFH,0BDH,098H,000H,000H,000H
		DB	09DH,0BFH,0BFH,09FH,098H,080H,080H,0FFH
		DB	0ABH,0D5H,0AAH,0D5H,0FFH,000H,000H,000H
CDAT1:
 		DB	9
		DB	0FFH,055H,000H,000H,000H,000H,000H,055H
		DB	0FFH,000H,000H,000H,000H,000H,000H,000H
DDAT1:
  		DB	9
		DB	000H,000H,000H,00AH,007H,00AH,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
;
TITG:   ; À²ÄÙ1.SET
;        INCLUDE À²ÄÙ1.SET
;		DB	0A0H,004H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	0FEH,002H,002H,0F2H,0F2H,002H,006H,0F8H
		DB	040H,040H,0C0H,0C0H,040H,040H,0F8H,048H
		DB	048H,0FEH,002H,002H,0FEH,0C0H,040H,070H
		DB	07EH,002H,002H,0FEH,04CH,04CH,0FCH,07CH
		DB	050H,050H,070H,050H,0D0H,0F0H,0D0H,05EH
		DB	07EH,05CH,05CH,07CH,0D0H,090H,040H,040H
		DB	040H,040H,000H,000H,0FEH,002H,002H,0F2H
		DB	0F2H,002H,006H,0FCH,0C0H,040H,040H,040H
		DB	040H,0C0H,0C0H,0C0H,040H,040H,040H,040H
		DB	0E0H,0E0H,0E0H,060H,060H,060H,040H,0C0H
		DB	0C0H,040H,040H,0C0H,0C0H,040H,040H,0C0H
		DB	0C0H,040H,040H,040H,040H,0C0H,080H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,020H,020H
		DB	020H,020H,020H,020H,020H,020H,020H,020H
		DB	0FFH,000H,000H,07CH,07CH,000H,002H,0FFH
		DB	000H,000H,07FH,07FH,000H,000H,0FFH,000H
		DB	000H,0FFH,000H,000H,0FFH,000H,000H,07EH
		DB	07EH,000H,000H,0FFH,000H,000H,0FFH,000H
		DB	000H,0FEH,0FEH,000H,000H,0FFH,000H,000H
		DB	07EH,07EH,000H,000H,0FFH,024H,055H,055H
		DB	055H,055H,000H,000H,0FFH,000H,000H,0F8H
		DB	0F8H,000H,006H,0FFH,000H,000H,066H,066H
		DB	020H,020H,0FFH,030H,020H,066H,066H,004H
		DB	00CH,0FFH,000H,000H,07EH,07EH,018H,018H
		DB	0FFH,000H,000H,07FH,07FH,000H,000H,0FFH
		DB	000H,000H,066H,066H,020H,020H,0FFH,004H
		DB	004H,004H,004H,004H,004H,004H,004H,004H
		DB	004H,004H,004H,004H,004H,004H,004H,004H
		DB	004H,004H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,020H,020H,020H,020H,020H,020H,020H
		DB	020H,020H,020H,020H,020H,020H,020H,020H
		DB	020H,020H,020H,0A0H,0A0H,0A0H,020H,020H
		DB	020H,020H,020H,020H,020H,000H,000H,000H
		DB	007H,006H,006H,006H,006H,006H,007H,047H
		DB	047H,046H,006H,027H,086H,006H,007H,046H
		DB	046H,047H,046H,046H,047H,047H,006H,0FEH
		DB	0FEH,0FEH,0FEH,0FFH,0FEH,04EH,04FH,0FEH
		DB	04EH,04FH,0FFH,04EH,04EH,0FFH,073H,062H
		DB	0E6H,066H,060H,0F0H,07FH,049H,055H,055H
		DB	055H,055H,000H,0AAH,0AFH,0A6H,0C6H,0AFH
		DB	087H,0C6H,0EEH,0EFH,0AFH,0AEH,0FEH,0FEH
		DB	046H,0FFH,0FFH,027H,0FEH,0FEH,016H,0FEH
		DB	0FFH,08FH,0FFH,006H,0FEH,0FEH,006H,007H
		DB	007H,037H,0FEH,006H,0AFH,0AEH,0AEH,0AFH
		DB	0AFH,0AEH,0AEH,0AEH,0AEH,0AFH,007H,0C0H
		DB	0E0H,080H,080H,080H,0C0H,080H,080H,000H
		DB	000H,000H,000H,000H,000H,000H,000H,000H
		DB	000H,000H,040H,040H,040H,040H,040H,040H
		DB	040H,040H,040H,040H,040H,040H,040H,040H
		DB	000H,000H,000H,000H,000H,000H,011H,044H
		DB	044H,000H,000H,000H,050H,050H,050H,000H
		DB	000H,000H,000H,0AAH,002H,052H,050H,050H
		DB	050H,050H,051H,050H,000H,0FCH,0DCH,0DCH
		DB	0FCH,0DCH,0FCH,0F8H,090H,093H,093H,093H
		DB	093H,093H,090H,092H,090H,090H,090H,095H
		DB	0F5H,055H,055H,055H,055H,055H,000H,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,092H,092H,0FFH
		DB	092H,092H,0FFH,092H,092H,0FFH,092H,092H
		DB	0FFH,092H,092H,0FFH,092H,092H,055H,055H
		DB	055H,055H,0FEH,0FEH,0AAH,0AAH,0AAH,0AAH
		DB	0AAH,000H,000H,000H,000H,000H,0FFH,0FFH
		DB	044H,0FFH,0FFH,022H,0FFH,0FFH,091H,0FFH
		DB	0FFH,048H,0FFH,000H,0FFH,0FFH,000H,000H
		DB	000H,033H,0FFH,000H,0AAH,0AAH,0AAH,0AAH
		DB	0AAH,0AAH,0AAH,0AAH,0AAH,0AAH,000H,0AAH
		DB	0AAH,0AAH,0AAH,0AAH,0AAH,0AAH,0AAH,000H
		DB	000H,050H,050H,050H,058H,050H,010H,018H
		DB	010H,000H,000H,000H,000H,000H,050H,010H
		DB	000H,040H,000H,000H,0A8H,002H,000H,000H
TITH:   ; À²ÄÙ2.SET
;       INCLUDE À²ÄÙ2.SET
;		DB	0A0H,004H
		DB	0FEH,0FEH,0FEH,0FEH,0FEH,0FEH,0FEH,0FEH
		DB	0FEH,0FEH,0FEH,0FEH,0FEH,0FEH,0FEH,0FEH
		DB	0FEH,0FEH,0FEH,0FEH,0FEH,0FEH,0FEH,0FEH
		DB	0FEH,0FEH,0FEH,0FEH,0FEH,0FEH,07EH,07EH
		DB	0FEH,002H,002H,0F2H,0F2H,002H,002H,0FEH
		DB	07EH,07EH,0FEH,0FEH,07EH,07EH,0FEH,04EH
		DB	04EH,0FEH,002H,002H,0FEH,07EH,07EH,05EH
		DB	07EH,002H,002H,0FEH,04EH,04EH,0FEH,05EH
		DB	07EH,07EH,05EH,07EH,0FEH,09EH,07EH,07FH
		DB	05FH,07EH,07EH,05EH,0DEH,09EH,0BEH,0BEH
		DB	0BEH,03EH,0FEH,0FEH,0FEH,002H,002H,0F2H
		DB	0F2H,002H,002H,0FEH,07EH,07EH,07EH,07EH
		DB	07EH,07EH,0FEH,07EH,07EH,07EH,07EH,07EH
		DB	07EH,0FEH,07EH,07EH,07EH,07EH,07EH,07EH
		DB	0FEH,07EH,07EH,0FEH,0FEH,07EH,07EH,0FEH
		DB	07EH,07EH,07EH,05EH,05EH,05EH,09EH,01EH
		DB	03EH,03EH,03EH,03EH,03EH,01EH,01EH,01EH
		DB	01EH,01EH,01EH,03EH,03EH,03EH,03EH,03EH
		DB	03EH,07EH,07EH,0FEH,0FEH,0FEH,0FEH,0FEH
		DB	0FEH,0FEH,0FEH,0FEH,0FEH,0FEH,0FEH,0FEH
		DB	03FH,03FH,03FH,03FH,07FH,0FFH,07FH,07FH
		DB	07FH,07FH,07FH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,0E7H,0E3H,0C3H,0D3H
		DB	0D1H,0D1H,0D8H,0D8H,0D0H,0D0H,0D0H,0D0H
		DB	0FFH,000H,000H,07CH,07CH,000H,000H,0FFH
		DB	000H,000H,07FH,07FH,000H,000H,0FFH,000H
		DB	000H,0FFH,000H,000H,0FFH,000H,000H,07EH
		DB	07EH,000H,000H,0FFH,000H,000H,0FFH,000H
		DB	000H,0FEH,0FEH,000H,000H,0FFH,000H,000H
		DB	07EH,07EH,000H,000H,0FFH,024H,0AAH,0AAH
		DB	0AAH,000H,0CFH,0CFH,0FFH,000H,000H,0F8H
		DB	0F8H,000H,002H,0FFH,000H,000H,066H,066H
		DB	020H,020H,0FFH,020H,020H,066H,066H,004H
		DB	004H,0FFH,000H,000H,07EH,07EH,018H,018H
		DB	0FFH,000H,000H,07FH,07FH,000H,000H,0FFH
		DB	000H,000H,066H,066H,020H,020H,0FFH,0FAH
		DB	0FAH,0FAH,0FBH,0FBH,0FBH,0FAH,0FAH,0FAH
		DB	0FAH,0FAH,0FBH,0FBH,0FAH,0FAH,0FAH,0FAH
		DB	0FAH,0FAH,0FCH,0FCH,0FEH,0FFH,0FFH,0FFH
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	000H,0D0H,0D0H,0D0H,0D8H,05CH,058H,050H
		DB	050H,050H,0D0H,0D0H,0D0H,0D1H,0D1H,0D9H
		DB	0DBH,0D3H,0D3H,053H,053H,057H,0C7H,0C7H
		DB	0C7H,0D7H,0D7H,0D7H,0C7H,0EFH,0FFH,0FFH
		DB	0FFH,0FEH,0FEH,0FEH,0FEH,0FEH,0FEH,0BFH
		DB	0BEH,0BEH,0FEH,09EH,03EH,0BEH,0FFH,09EH
		DB	09EH,09FH,01EH,01EH,01FH,09EH,0FEH,04EH
		DB	04EH,0FEH,04EH,04FH,0FEH,0DEH,0DFH,04EH
		DB	0DEH,0DFH,04FH,0DEH,0DEH,07FH,0F2H,0E2H
		DB	066H,0E6H,0E0H,070H,07FH,049H,0AAH,0AAH
		DB	0AAH,000H,0FFH,055H,057H,05EH,0FEH,057H
		DB	0FFH,0FEH,0F6H,0D7H,056H,056H,046H,046H
		DB	0FEH,026H,027H,0FEH,016H,016H,0FEH,08EH
		DB	08EH,0FFH,0FEH,0FEH,066H,0FEH,0FEH,0FEH
		DB	007H,0CEH,0FEH,0FEH,016H,016H,016H,007H
		DB	046H,046H,056H,056H,046H,056H,007H,03FH
		DB	01FH,07FH,07FH,07FH,03FH,07FH,07FH,0FFH
		DB	0FFH,0FFH,0FFH,0DFH,0DFH,0CFH,0CFH,0C7H
		DB	0C7H,0C7H,0A7H,0A7H,0A3H,0A3H,0A3H,0A1H
		DB	0A1H,083H,087H,083H,0A3H,0A1H,0A0H,0A0H
		DB	000H,0FFH,0FFH,0FFH,0FFH,055H,044H,011H
		DB	011H,055H,0FFH,0FFH,00FH,00FH,0AFH,0FFH
		DB	0FFH,0FFH,0FFH,055H,0FDH,0A5H,027H,007H
		DB	007H,085H,084H,0A4H,0FCH,000H,010H,011H
		DB	000H,010H,005H,0FBH,023H,023H,023H,020H
		DB	020H,020H,023H,020H,022H,022H,023H,022H
		DB	0F8H,0AAH,0A2H,022H,022H,02AH,0FFH,092H
		DB	092H,0FFH,092H,092H,0FFH,0B6H,0B6H,092H
		DB	0B6H,0B6H,092H,0B6H,0B6H,092H,0B6H,0B6H
		DB	092H,0B6H,0B6H,092H,092H,092H,0AAH,0AAH
		DB	0AAH,000H,0AAH,0AAH,054H,054H,054H,054H
		DB	054H,0AAH,0AAH,0AAH,0AAH,0FFH,044H,044H
		DB	0FFH,022H,022H,0FFH,091H,091H,0FFH,048H
		DB	048H,0FFH,0FFH,0FFH,066H,0FFH,0FFH,0FFH
		DB	000H,0CCH,0FFH,0FFH,045H,045H,045H,015H
		DB	014H,010H,010H,015H,051H,055H,000H,055H
		DB	055H,055H,055H,000H,055H,000H,000H,0FFH
		DB	0FDH,0ACH,02CH,02DH,004H,08CH,04CH,065H
		DB	04FH,0FFH,0FFH,0FFH,0FFH,057H,00FH,04FH
		DB	05FH,017H,0FFH,0FFH,003H,0A9H,000H,000H
;
TITC2:
;        INCLUDE ¸Ø±1.SET
;		DB	0A0H,004H
		DB	0FFH,043H,043H,043H,067H,04FH,05FH,05FH
		DB	04FH,047H,047H,047H,067H,04FH,04FH,05FH
		DB	0BFH,0BFH,0FFH,07FH,0BFH,09FH,0AFH,0AFH
		DB	0BFH,0FFH,0F7H,0F7H,0F7H,0F7H,077H,0B7H
		DB	0C7H,007H,07FH,00FH,00FH,00FH,00FH,0FFH
		DB	00FH,0FFH,0EFH,0F7H,0FFH,00FH,0EFH,03FH
		DB	05FH,0BFH,0FFH,0FFH,0FFH,0CFH,0A7H,0A7H
		DB	0A7H,0B7H,0A7H,0AFH,0A7H,0A3H,0FFH,038H
		DB	07CH,0FEH,0E3H,0C3H,0C7H,067H,072H,0F8H
		DB	0FCH,0CCH,0FCH,07CH,038H,0F8H,0FCH,07CH
		DB	00CH,0FCH,0FCH,078H,030H,078H,0FCH,0ECH
		DB	0FCH,0FCH,07CH,0F8H,0FCH,07CH,008H,01CH
		DB	01CH,048H,0E8H,0FCH,0FCH,0FCH,0FCH,078H
		DB	07EH,0FFH,0FFH,0CCH,064H,020H,078H,0FCH
		DB	0FCH,0C0H,0F8H,0FCH,07CH,0F8H,0FCH,07CH
		DB	008H,01CH,01CH,048H,0E8H,0FCH,0FCH,0FCH
		DB	0FCH,078H,07EH,0FFH,0FFH,0CCH,064H,0A8H
		DB	0FEH,0FFH,0FDH,070H,0F8H,0FCH,0CCH,0FCH
		DB	07CH,038H,0F8H,0FCH,07CH,00CH,0FCH,0FCH
		DB	078H,090H,0F8H,0FCH,0FCH,0FCH,07CH,024H
		DB	0FFH,03BH,06FH,02FH,06BH,02FH,06BH,03FH
		DB	07FH,0EFH,0C7H,0CFH,0CFH,0DFH,0BFH,0EFH
		DB	077H,0FDH,0FEH,0FBH,0F4H,0F6H,07DH,09CH
		DB	02EH,017H,09FH,0CFH,0F7H,03FH,00CH,0FFH
		DB	007H,084H,0B3H,0C2H,0F2H,052H,035H,034H
		DB	026H,067H,02BH,00BH,00BH,0B0H,097H,0B0H
		DB	0D0H,0EBH,0F7H,0FBH,0FBH,0D9H,0ADH,0ABH
		DB	0E9H,0E9H,0E1H,02BH,0A3H,037H,0FFH,000H
		DB	000H,000H,000H,000H,000H,000H,080H,000H
		DB	000H,080H,07CH,03EH,094H,07CH,0BEH,0B8H
		DB	05CH,03AH,01CH,03CH,0DEH,0B8H,0DCH,03CH
		DB	09EH,000H,080H,000H,09CH,06EH,03CH,08EH
		DB	0B8H,05CH,03AH,01CH,07CH,0FEH,07CH,03EH
		DB	000H,080H,000H,0C8H,074H,02EH,092H,0F8H
		DB	03CH,07AH,0BCH,0BCH,05EH,0BCH,01EH,07CH
		DB	0FEH,06EH,022H,080H,000H,07CH,0BEH,014H
		DB	008H,07CH,0BEH,07CH,03EH,0E4H,0F6H,06EH
		DB	026H,03CH,05EH,03CH,09EH,07CH,03EH,0FCH
		DB	03EH,0B8H,05CH,0BAH,09CH,080H,000H,080H
		DB	080H,000H,000H,000H,000H,000H,000H,000H
		DB	0FFH,000H,055H,000H,055H,000H,055H,000H
		DB	055H,0FFH,0A9H,020H,029H,0A8H,001H,092H
		DB	007H,097H,0CDH,0FFH,0FFH,0FBH,0FEH,0FFH
		DB	07CH,0F9H,031H,050H,060H,066H,0AAH,0E7H
		DB	0F4H,0FBH,077H,0EFH,0E3H,002H,086H,0A4H
		DB	0D8H,040H,094H,0D9H,0F4H,0E3H,080H,041H
		DB	0C1H,081H,0FFH,0EAH,0AEH,0AFH,0BBH,0AAH
		DB	0FFH,055H,0AAH,000H,080H,082H,0FFH,000H
		DB	000H,000H,000H,000H,01EH,00FH,05EH,0EFH
		DB	0FFH,02FH,0C5H,0FFH,0CFH,0FFH,09FH,0CEH
		DB	0A7H,0C0H,0C0H,0E1H,05FH,0CFH,0E0H,0DFH
		DB	0EFH,0DFH,06FH,01FH,00FH,0D2H,07DH,0CBH
		DB	064H,080H,0C0H,0A0H,0DFH,0CFH,0E5H,0C2H
		DB	0FFH,00FH,01FH,00FH,0D2H,0FDH,0EBH,024H
		DB	092H,0DDH,0ABH,0C4H,0DFH,0EFH,0AEH,057H
		DB	00EH,007H,01FH,0CFH,0E5H,0BFH,04FH,0C0H
		DB	0E0H,01FH,08FH,0D2H,0BDH,0CBH,0C4H,060H
		DB	0C0H,060H,0CEH,0F7H,0CEH,0E7H,047H,0DBH
		DB	0EFH,083H,0DFH,07FH,0BFH,0CAH,0FFH,0CFH
		DB	0F6H,00BH,000H,000H,000H,000H,000H,000H
		DB	0FFH,080H,0D5H,080H,0D5H,080H,0D5H,080H
		DB	0D5H,0FFH,0A2H,0AAH,08AH,0A8H,080H,0C4H
		DB	0FEH,087H,081H,0C0H,0C2H,0EDH,093H,09FH
		DB	0EFH,09EH,089H,0E8H,0DEH,0AFH,0D5H,0F8H
		DB	080H,0C3H,0FCH,0E0H,0FCH,0FEH,0FEH,0FEH
		DB	0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH,0FFH
		DB	0BFH,0FDH,0FFH,0FEH,08EH,0FFH,0EEH,0AAH
		DB	0FFH,0D5H,0AAH,080H,0AAH,0AAH,0FFH,000H
		DB	070H,088H,0A8H,0A8H,070H,000H,028H,03FH
		DB	01BH,000H,017H,0BBH,0AFH,0FBH,077H,003H
		DB	077H,04BH,0FFH,0FBH,041H,007H,003H,0FFH
		DB	0FBH,0AEH,0FBH,050H,000H,078H,0FFH,083H
		DB	0F8H,07BH,005H,073H,0F9H,08FH,0EFH,0EFH
		DB	003H,090H,0B8H,0A8H,0EFH,04BH,000H,070H
		DB	0FBH,08DH,0FBH,071H,007H,0FBH,0FEH,02BH
		DB	028H,008H,000H,00FH,00BH,0F8H,0F8H,00FH
		DB	00FH,002H,057H,0FBH,0AFH,0D3H,0A0H,007H
		DB	0FBH,0F8H,02FH,02BH,00FH,003H,079H,0FFH
		DB	083H,0FBH,07DH,007H,0FBH,0FDH,022H,0FDH
		DB	0DAH,000H,078H,0F8H,080H,0F8H,078H,000H
TITC1:
;        INCLUDE ¸Ø±2.SET
;		DB	0A0H,004H
		DB	0FFH,081H,081H,081H,081H,081H,081H,081H
		DB	081H,081H,081H,081H,081H,081H,081H,081H
		DB	001H,001H,001H,081H,0C1H,061H,071H,071H
		DB	071H,071H,0F9H,0F9H,0F9H,0F9H,0F9H,079H
		DB	039H,019H,089H,089H,089H,089H,089H,009H
		DB	009H,009H,019H,019H,011H,0F1H,031H,0E1H
		DB	0E1H,0C1H,001H,001H,001H,001H,041H,041H
		DB	041H,041H,041H,041H,041H,041H,0FFH,000H
		DB	01CH,03EH,063H,041H,041H,063H,022H,038H
		DB	07CH,044H,044H,07CH,038H,000H,07CH,07CH
		DB	004H,004H,07CH,078H,000H,018H,0BCH,0A4H
		DB	0A4H,0FCH,07CH,000H,07CH,07CH,008H,004H
		DB	00CH,008H,020H,074H,054H,054H,07CH,078H
		DB	004H,03FH,07FH,044H,064H,020H,000H,03CH
		DB	07CH,040H,040H,07CH,07CH,000H,07CH,07CH
		DB	008H,004H,00CH,008H,020H,074H,054H,054H
		DB	07CH,078H,004H,03FH,07FH,044H,064H,020H
		DB	044H,07DH,07DH,040H,038H,07CH,044H,044H
		DB	07CH,038H,000H,07CH,07CH,004H,004H,07CH
		DB	078H,000H,048H,05CH,05CH,074H,074H,024H
		DB	0FFH,0EEH,0AAH,0AAH,0AEH,0EAH,0AEH,0BAH
		DB	0BAH,0EEH,000H,000H,000H,000H,0C0H,0F0H
		DB	0F8H,0FEH,0FFH,0FDH,0FEH,07BH,0F9H,0FCH
		DB	05EH,0AFH,0D7H,05FH,05FH,0C7H,0FFH,0FCH
		DB	0FCH,07FH,04EH,03EH,0FEH,06EH,04EH,04FH
		DB	05CH,01CH,01CH,03CH,05CH,00FH,0F8H,07FH
		DB	03FH,037H,0ACH,0ACH,0A8H,0B0H,0D0H,0D0H
		DB	0D0H,0D0H,090H,090H,010H,000H,0FFH,000H
		DB	000H,000H,000H,000H,000H,000H,080H,000H
		DB	000H,080H,000H,03EH,084H,008H,0BEH,080H
		DB	01CH,022H,01CH,000H,09EH,0A0H,09CH,020H
		DB	09EH,000H,080H,000H,080H,00EH,030H,08EH
		DB	080H,01CH,022H,01CH,000H,0BEH,020H,03EH
		DB	000H,080H,000H,080H,024H,02AH,092H,080H
		DB	03CH,012H,0BCH,080H,01EH,0A0H,01EH,000H
		DB	0BEH,02AH,022H,080H,000H,000H,0BEH,004H
		DB	008H,004H,0BEH,000H,03EH,080H,0B2H,02AH
		DB	026H,000H,01EH,020H,09EH,000H,03EH,088H
		DB	03EH,080H,01CH,0A2H,09CH,080H,000H,080H
		DB	080H,000H,000H,000H,000H,000H,000H,000H
		DB	0FFH,0FFH,0AAH,0AAH,0AAH,0FFH,0AAH,0AAH
		DB	0AAH,0FFH,054H,056H,056H,054H,0FFH,049H
		DB	0FFH,0CBH,0FFH,0CFH,0E7H,0EEH,0FFH,0FFH
		DB	0FFH,078H,098H,031H,031H,0A1H,0F5H,0BFH
		DB	0FFH,0FCH,0F8H,076H,076H,0C6H,0A4H,0A0H
		DB	0A0H,098H,058H,05EH,05FH,05FH,07FH,0FEH
		DB	0FEH,0FEH,0FFH,0BFH,0FBH,0FAH,0EEH,0FFH
		DB	0FFH,0AAH,0FFH,0FFH,040H,040H,0FFH,000H
		DB	000H,000H,000H,000H,000H,00FH,004H,02FH
		DB	0E0H,02FH,001H,0E2H,08FH,0E0H,00FH,0C8H
		DB	027H,0C0H,000H,0E0H,040H,08FH,0E0H,000H
		DB	0EFH,082H,06FH,000H,00FH,000H,069H,08AH
		DB	064H,000H,0C0H,020H,0C0H,00FH,0E1H,002H
		DB	0E1H,00FH,000H,00FH,000H,0E9H,0AAH,024H
		DB	000H,0C9H,02AH,0C4H,000H,0EFH,0A0H,047H
		DB	008H,007H,000H,00FH,0E1H,0A2H,04FH,000H
		DB	0E0H,000H,00FH,0C0H,029H,0CAH,004H,060H
		DB	080H,060H,000H,0E7H,008H,0E7H,040H,083H
		DB	0ECH,003H,0C0H,02FH,0AAH,00AH,0E0H,00FH
		DB	0E4H,00BH,000H,000H,000H,000H,000H,000H
		DB	0FFH,0FFH,0AAH,0AAH,0AAH,0FFH,0AAH,0AAH
		DB	0AAH,0FFH,0D5H,0D5H,0D5H,0D5H,0FFH,0F2H
		DB	09FH,081H,080H,081H,0C1H,0A3H,0BFH,0BFH
		DB	0FFH,09FH,08AH,08BH,0AFH,0D7H,0ADH,0F9H
		DB	081H,081H,082H,09CH,0F8H,080H,080H,080H
		DB	080H,080H,0C0H,0B8H,088H,080H,080H,080H
		DB	0C3H,0FEH,081H,083H,0FFH,0FAH,0BBH,0FFH
		DB	0FFH,0AAH,0FFH,0FFH,0D5H,0D5H,0FFH,000H
		DB	070H,088H,0A8H,0A8H,070H,000H,028H,038H
		DB	01BH,000H,010H,0BBH,0A8H,0FBH,070H,003H
		DB	071H,04BH,0F8H,0FBH,040H,000H,003H,0F8H
		DB	0FBH,0A8H,0FBH,050H,000H,078H,0F8H,083H
		DB	0F8H,078H,001H,072H,0F9H,088H,0EBH,0EAH
		DB	003H,090H,0B8H,0A8H,0E8H,04BH,000H,070H
		DB	0F8H,089H,0FAH,071H,000H,0FBH,0F8H,02BH
		DB	028H,008H,000H,008H,00BH,0F8H,0F8H,008H
		DB	00BH,002H,050H,0FBH,0A9H,0D3H,0A0H,000H
		DB	0FBH,0F8H,028H,02BH,008H,003H,078H,0F8H
		DB	083H,0F8H,079H,002H,0FBH,0F8H,022H,0F8H
		DB	0DAH,000H,078H,0F8H,080H,0F8H,078H,000H
DTBL:
        DB  2,0,0,0,0,0,0,2
        DB  2,0,0,0,0,0,0,2
        DB  2,1,1,0,0,1,0,2
        DB  2,1,1,1,0,1,0,2
        DB  2,1,1,0,1,1,0,2
        DB  2,1,1,0,0,1,0,2
        DB  2,0,0,1,1,1,0,2
        DB  2,0,1,0,0,1,1,2
        DB  2,0,1,0,0,1,1,2
        DB  2,0,1,0,0,1,1,2
        DB  2,0,0,1,1,1,0,2
        DB  2,0,0,0,0,0,0,2
        DB  2,1,0,0,0,1,0,2
        DB  2,0,0,0,0,0,0,2
        DB  2,0,0,1,1,0,0,2
        DB  2,2,2,2,2,2,2,2
;
PDAT0:          DB      'H²SC ',0
PDAT2:          DB      'SCR  ',0
PDAT4:          DB      'TIM³ ',0
PDAT6:          DB      'FLOOR ',0 
PDAT8:          DB      'ROUND  ±  ',0
;
;            01234567890123456789012345678
ADAT0: DB   '±KEY FUNCTION±',0
ADAT1: DB   '   LEFT              RIGHT',0
ADAT2: DB   '  ¸SHIFTº     µ      ¸ » º',0
ADAT3: DB   '  ¸CTRL º   · ± ¶    ¸ ¹ º',0
ADAT4: DB   '¸BASICº QUIT   ¼1994 BUGSOFT',0
;            123456
UFOC1:
        DB 14
		DB	000H,010H,018H,030H,03CH,014H,01EH,014H
   		DB	03CH,030H,018H,010H,000H,000H,000H,000H
UFOD1:
        DB 14
		DB	0EFH,0D7H,09BH,0B3H,0BDH,095H,09EH,095H
		DB	0BDH,0B3H,09BH,0D7H,0EFH,0FFH,0FFH,0FFH
;
VRAM1:   DS 192
         DS 192
         DS 192
         DS 192
         DS 192
         DS 192
;
STBL:
VRAM2:   
         DS 192
         DS 192
         DS 192
QTBL:    DS  92
WTBL:    DS 100
;
        END

