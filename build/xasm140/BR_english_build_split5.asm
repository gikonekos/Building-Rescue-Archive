; c0001
; c0002
; c0003
; c0004
; c0005
; c0006
; c0007
; c0008
; c0009
; c0010
; c0011
	ORG 0BB000H
DEMOT: EQU 300 ; c0012
; c0013
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
; c0014
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
; c0015
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
; c0016
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
; c0017
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
; c0018
        CALLF VRAMCL2
        CALLF VRAMCL1
        CALLF VRAMPP
; c0019
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
; c0020
        CALLF VRAMCL1
        CALLF VRAMPP
; c0021
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
; c0022
        MV I,40000
        WAIT 
; c0023
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
; c0024
        MV A,(MZ)
        CALLF PUTD
        CALLF PUTC
; c0025
        CALLF READY
        CALLF VRAMPP
        CMP (PCNT),1
        JRZ PT1
        MV Y,OTOTBL1
        MV X,MUSIC1L ; c0026
        CALLF MPLAY
        JR PT2
PT1:
        MV Y,OTOTBL1
        MV X,MUSIC1S ; c0027
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
; c0028
        CALLF VRAMPP
        MV (0FBH),080H
        INC (TIME)
        CMP (DEAD),0
        JRZ LOPXX
; c0029
        MV (0FBH),0
        CMP (DEAD),3
        JPZ LEND ; c0030
        CMP (DEAD),1
        JPZ MDEAD ; c0031
CLEAR:   
        MV (0FBH),0
        CALLF VRAMCL1
        CALLF TIT
        MV (AX),(MX)
        MV (AY),(MYY)
        MV A,(MZ)
        CALLF PUTD
        CALLF PUTC
; c0032
        CALLF DISP
        CALLF VRAMPP
        MV X,MUSIC6
        MV Y,OTOTBL1
        CALLF MPLAY
; c0033
        MV I,20000
        WAIT  
        CALLF BONS
; c0034
        MV A,(ROUND)
        AND A,3
        JRNZ CLL1
; c0035
; c0036
; c0037
; c0038

        CALLF VRAMCL2
        CALLF VRAMCL1
        CALLF VRAMPP
; c0039
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
; c0040
CLL01:
        CALLF VRAMCL1
        CALLF VRAMPP
; c0041
CLL1:
        INC (ROUND)
        MV (DEAD),0
        MV (FLOOR),1
        MV (MY),128
        MV I,40000
        WAIT
        MV (PCNT),0
        JP UUR
; c0042
MDEAD:  
        MV (0FDH),0
        CALLF VRAMCL1
        CALLF TIT
        CALLF DISP
        CALLF VRAMPP
        CALLF DOWN
        MV X,MUSIC3 ; c0043
        MV Y,OTOTBL1
        CALLF MPLAY
        DEC (MAN)
        JRZ PP1
; c0044
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
; c0045
        JP AGIN
; c0046
; c0047
; c0048
; c0049
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
; c0050
; c0051
; c0052
; c0053
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
; c0054
MUFO:
        CMP (UFOF),0
        JPZ KEND
        CMP (UFOM),0
        JPZ MUXX
        MV (UFOF),0
; c0055
        CMP (UFOX),6*13
        JPZ KEND
; c0056
        MV (UFOF),1
        XOR (UFOCNT),1
        MV A,(UFOCNT)
; c0057
        SUB (UFOX),A
        MV (GX),(UFOX)
        MV (GY),(UFOY)
; c0058
        MV X,UFOD1
        CALLF GDELV1
        MV X,UFOC1
        CALLF GPRTV1
; c0059
        MV A,(UFOCNT)
        CMP A,6
        JRZ UF1
        DEC (UFOAX)
UF1:
        JR UF1X
; c0060
MUXX:
        MV (UFOF),0
        CMP (UFOX),6*13+13*7
        JPZ KEND
; c0061
        MV (UFOF),1
        XOR (UFOCNT),1
        MV A,(UFOCNT)
; c0062
        ADD (UFOX),A
        MV (GX),(UFOX)
        MV (GY),(UFOY)
; c0063
        MV X,UFOD1
        CALLF GDELV1
        MV X,UFOC1
        CALLF GPRTV1
; c0064
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
; c0065
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
; c0066
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
; c0067
; c0068
; c0069
; c0070
; c0071
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
; c0072
; c0073
; c0074
; c0075
; c0076
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
; c0077
; c0078
; c0079
; c0080
; c0081
HITT:
        CALLF SCRUV1
        CALLF SCRUV1
        CALLF VRAMPP
; c0082
        MV I,40000
        WAIT
; c0083
        CALLF SCRDV1
        CALLF SCRDV1
        CALLF VRAMPP
; c0084
        MV I,40000
        WAIT
; c0085
        CALLF SCRUV1
        CALLF SCRUV1
        CALLF VRAMPP
; c0086
        MV I,40000
        WAIT
; c0087
        CALLF SCRDV1
        CALLF SCRDV1
        CALLF VRAMPP
; c0088
        MV I,40000
        WAIT
        RETF
; c0089
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
; c0090
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
; c0091
; c0092
; c0093
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
; c0094
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
; c0095
PLAY2:
        XOR (0FDH),010H ; c0096
        MV I,(QQQ)      ; c0097
        WAIT            ; c0098
        DEC BA          ; c0099
        JRNZ PLAY2     ; c0100
        AND (0FDH),0EFH 
        RETF            
; c0101
REST2:
        AND (0FDH),0EFH
        MV I,(QQQ)
        WAIT
        DEC BA
        JRNZ REST2
        RETF
; c0102
; c0103
; c0104
; c0105
; c0106
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
; c0107
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
; c0108
; c0109
; c0110
; c0111
; c0112
PUTC:
        PUSHU A
        PUSHU X
        MV (GG1),0
        CMP A,03FH ; c0113
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
; c0114
        ADD (AX),6
        MV (GX),(AX)
        MV A,(AX)
        ADD A,A
        ADD A,(AX)
        ADD A,A
        ADD A,A
        ADD (GX),A
        SUB (AX),6
; c0115
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
; c0116
; c0117
; c0118
; c0119
; c0120
PUTD:   
        PUSHU A
        PUSHU X
        MV (GG1),0
        CMP A,01 ; c0121
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
; c0122
        MV (GX),(AX)
        MV A,(AX)
        ADD A,A
        ADD A,(AX)
        ADD A,A
        ADD A,A
        ADD (GX),A
        SUB (AX),6
; c0123
        CALLF GDELV1
        MV A,(TI)
        MV [X],A
        POPU X
        POPU A
        RETF
; c0124
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
; c0125
        CALLF GDELV1
        MV A,(TI)
        MV [X],A
        POPU X
        POPU A
        POPU I
        RETF
; c0126
; c0127
; c0128
; c0129
; c0130
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
; c0131
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
; c0132
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
; c0133
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
; c0134
; c0135
; c0136
; c0137
; c0138
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
; c0139
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
; c0140
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
; c0141
; c0142
; c0143
; c0144
; c0145
; c0146
SPK:    
        PUSHU I
        MV A,[X++]
        MV (SPEED),A
        MVW (WS),[X++] ; c0147
SPK01:   
        MV A,[X++]
        MV IL,8
SPK02:  ROL A
        JRNC SPK05       
SPK03:
        CMP (OTF),0
        JRZ SPK30
        OR (OTO),010H ; c0148
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
        AND (OTO),080H ; c0149
        PUSHU A
        MV A,(SPEED)
SPK06:  DEC A
        JRNZ SPK06
        POPU A
        JR SPK07
; c0150
SPK07:
        DEC IL
        JRNZ SPK02
        MV I,(WS)
        DEC I
        MV (WS),I
        JRNZ SPK01
        POPU I
        RETF
; c0151
DTITG:
        MV X,VRAM1+192+8
        CALLF DGSUB
        RETF
DTITH:
        MV X,VRAM2+8
        CALLF DGSUB
        RETF
; c0152
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
; c0153
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
; c0154
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
; c0155
        PUSHU Y
        MV IL,160
DG3:    MV A,[Y++]
        MV [X++],A
        DEC IL
        JRNZ DG3
        POPU Y
        RETF
; c0156
; c0157
; c0158
; c0159
; c0160
DSCORE: PUSHU X
        PUSHU I
        MV BA,(SCORE)
        MV I,10000
        MV (WK5),'0'
DSC0:   SUB BA,I
        JRC DSC1
        INC (WK5)
        JR DSC0
; c0161
DSC1:
        ADD BA,I
        MV (WK4),'0'
        MV I,1000
DSC2:   SUB BA,I
        JRC DSC3
        INC (WK4)
        JR DSC2
; c0162
DSC3:
        ADD BA,I
        MV (WK3),'0'
        MV I,100
DSC4:   SUB BA,I
        JRC DSC5
        INC (WK3)
        JR DSC4
; c0163
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
; c0164
        MV (AX),4
        MV (AY),1
        MV (QZ),(WK5)
        CALLF PUTK
; c0165
        MV (AX),5
        MV (AY),1
        MV (QZ),(WK4)
        CALLF PUTK
; c0166
        MV (AX),6
        MV (AY),1
        MV (QZ),(WK3)
        CALLF PUTK
; c0167
        MV (AX),7
        MV (AY),1
        MV (QZ),(WK2)
        CALLF PUTK
; c0168
        MV (AX),8
        MV (AY),1
        MV (QZ),(WK1)
        CALLF PUTK
; c0169
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
; c0170
; c0171
; c0172
; c0173
; c0174
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
; c0175
DFU1:
        ADD BA,I
        MV (WK4),'0'
        MV I,1000
DFU2:   SUB BA,I
        JRC DFU3
        INC (WK4)
        JR DFU2
; c0176
DFU3:
        ADD BA,I
        MV (WK3),'0'
        MV I,100
DFU4:   SUB BA,I
        JRC DFU5
        INC (WK3)
        JR DFU4
; c0177
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
; c0178
        MV (AX),7
        MV (AY),2
        MV (QZ),(WK3)
        CALLF PUTK
; c0179
        MV (AX),8
        MV (AY),2
        MV (QZ),(WK2)
        CALLF PUTK
; c0180
        MV (AX),9
        MV (AY),2
        MV (QZ),(WK1)
        CALLF PUTK
; c0181
        POPU I
        POPU X
        RETF
; c0182
; c0183
; c0184
; c0185
; c0186
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
; c0187
DFL1:
        ADD BA,I
        MV (WK4),'0'
        MV I,1000
DFL2:   SUB BA,I
        JRC DFL3
        INC (WK4)
        JR DFL2
; c0188
DFL3:
        ADD BA,I
        MV (WK3),'0'
        MV I,100
DFL4:   SUB BA,I
        JRC DFL5
        INC (WK3)
        JR DFL4
; c0189
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
; c0190
        MV (AX),7
        MV (AY),3
        MV (QZ),(WK3)
        CALLF PUTK
; c0191
        MV (AX),8
        MV (AY),3
        MV (QZ),(WK2)
        CALLF PUTK
; c0192
        MV (AX),9
        MV (AY),3
        MV (QZ),(WK1)
        CALLF PUTK
        POPU I
        POPU X
        RETF
; c0193
; c0194
; c0195
; c0196
; c0197
DHC:    PUSHU I
        PUSHU X
        MV BA,(HIS)
        MV I,10000
        MV (WK5),'0'
DHC0:   SUB BA,I
        JRC DHC1
        INC (WK5)
        JR DHC0
; c0198
DHC1:
        ADD BA,I
        MV (WK4),'0'
        MV I,1000
DHC2:   SUB BA,I
        JRC DHC3
        INC (WK4)
        JR DHC2
; c0199
DHC3:
        ADD BA,I
        MV (WK3),'0'
        MV I,100
DHC4:   SUB BA,I
        JRC DHC5
        INC (WK3)
        JR DHC4
; c0200
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
; c0201
        MV (AX),4
        MV (AY),0
        MV (QZ),(WK5)
        CALLF PUTK
; c0202
        MV (AX),5
        MV (AY),0
        MV (QZ),(WK4)
        CALLF PUTK
; c0203
        MV (AX),6
        MV (AY),0
        MV (QZ),(WK3)
        CALLF PUTK
; c0204
        MV (AX),7
        MV (AY),0
        MV (QZ),(WK2)
        CALLF PUTK
; c0205
        MV (AX),8
        MV (AY),0
        MV (QZ),(WK1)
        CALLF PUTK
; c0206
        MV (AX),9
        MV (AY),0
        MV (QZ),'0'
        CALLF PUTK
        POPU X
        POPU I
        RETF
; c0207
; c0208
; c0209
; c0210
; c0211
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
; c0212
DST1:
        ADD BA,I
        MV (WK4),'0'
        MV I,1000
DST2:   SUB BA,I
        JRC DST3
        INC (WK4)
        JR DST2
; c0213
DST3:
        ADD BA,I
        MV (WK3),'0'
        MV I,100
DST4:   SUB BA,I
        JRC DST5
        INC (WK3)
        JR DST4
; c0214
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
; c0215
        MV (AX),5
        MV (AY),4
        MV (QZ),(WK2)
        CALLF PUTK
; c0216
        MV (AX),6
        MV (AY),4
        MV (QZ),(WK1)
        CALLF PUTK
        POPU X
        POPU I
        RETF
; c0217
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
; c0218
; c0219
; c0220
; c0221
; c0222
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
; c0223
; c0224
; c0225
; c0226
; c0227
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
; c0228
DOWN:
        MV (WO),0
DO1:
        MV IL,6*8-8
        MV X,WTBL
        MV Y,WTBL+8
; c0229
DO0:        
        MV A,[Y++]
        MV [X++],A
        DEC IL
        JRNZ DO0
; c0230
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
        MV A,01 ; c0231
        CALLF PUTD
        MV A,03FH ; c0232
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
; c0233
DO20:        
        MV A,[Y++]
        MV [X++],A
        DEC IL
        JRNZ DO20
; c0234
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
; c0235
; c0236
; c0237
; c0238
; c0239
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
; c0240
        INC  (TIME9)
        AND (TIME9),31
        JPNZ KC00
        MV X,MDAT4 ; c0241
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
; c0242
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
; c0243
KT01:   
        CMP A,9 ; c0244
        JRNZ KT02
        MV (MZ),4
        MV (RX),(MX)
        MV (RY),(MYY)
        CALLF RADR
        CMP A,1 ; c0245
        JRNZ KT011
        MV (DEAD),1
KT011:
        RETF   
; c0246
; c0247
; c0248
; c0249
KT02:               
        MV (TIME9),0 ; c0250
        CMP A,4 ; c0251
        JRNZ KY01
        CMP (MX),1
        JPZ KEND
; c0252
        CMP (MZ),4
        JRZ KT02A
        CMP (MZ),6
        JRZ KT02A
        JR  KT02B
KT02A:
        MV (MZ),4   ; c0253
        MV (RX),(MX)
        MV (RY),(MYY)
        CALLF RADR
        CMP A,1 ; c0254
        JRNZ KT02B0
        MV (DEAD),1
        RETF 
; c0255
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
        CMP A,1 ; c0256
        JRZ KT021
        CMP A,2 ; c0257
        JRZ KT021
        CMP A,3 ; c0258
        JPZ KYCLR
        CMP A,8 ; c0259
        JRZ KT021
        CMP A,9 ; c0260
        JRZ KT021
        CMP A,12 ; c0261
        JRZ KT021
        CMP A,13 ; c0262
        JRZ KT021
        CMP A,14 ; c0263
        JRZ KT021
        CMP A,15 ; c0264
        JRZ KT021
        CMP A,16 ; c0265
        JRZ KT021
; c0266
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
; c0267
; c0268
; c0269
KY01:
        CMP A,6 ; c0270
        JRNZ KY02
        CMP (MX),6
        JPZ KEND
        CMP (MZ),4
        JRZ KY01A
        CMP (MZ),6
        JRZ KY01A
        JR  KY01B
KY01A:
        MV (MZ),4 ; c0271
        MV (RX),(MX)
        MV (RY),(MYY)
        CALLF RADR
        CMP A,1 ; c0272
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
        CMP A,1 ; c0273
        JRZ KY011
        CMP A,2 ; c0274
        JRZ KY011
        CMP A,3 ; c0275
        JPZ KYCLR
        CMP A,8 ; c0276
        JRZ KY011
        CMP A,9 ; c0277
        JRZ KY011
        CMP A,12 ; c0278
        JRZ KY011
        CMP A,13 ; c0279
        JRZ KY011
        CMP A,14 ; c0280
        JRZ KY011
        CMP A,15 ; c0281
        JRZ KY011
        CMP A,16 ; c0282
        JRZ KY011
; c0283
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
; c0284
; c0285
; c0286
KY02:
        CMP A,8 ; c0287
        JPNZ KY03
; c0288
        CMP (MZ),4
        JRZ KY02W
        CMP (MZ),5
        JRZ KY02L
        CMP (MZ),6
        JRZ KY02T
        CMP (MZ),7
        JR KY02R
KY02W:  ; c0289
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
        MV (MZ),5 ; c0290
        RETF
KY02L: ; c0291
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
        CMP A,1 ; c0292
        JRZ KY02L1
        CMP A,2 ; c0293
        JRZ KY02L1
        CMP A,3 ; c0294
        JPZ KYCLR
        CMP A,8 ; c0295
        JRZ KY02L1
        CMP A,9 ; c0296
        JRZ KY02L1
        CMP A,12 ; c0297
        JRZ KY02L1
        CMP A,13 ; c0298
        JRZ KY02L1
        CMP A,14 ; c0299
        JRZ KY02L1
        CMP A,15 ; c0300
        JRZ KY02L1
        CMP A,16 ; c0301
        JRZ KY02L1
; c0302
        MV (MZ),4
        DEC (MY)
        INC (FLOOR)
        MV BA,(SCORE)
        INC BA ; c0303
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
; c0304
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
        CMP A,1 ; c0305
        JRZ KY02R1
        CMP A,2 ; c0306
        JRZ KY02R1
        CMP A,3 ; c0307
        JPZ KYCLR
        CMP A,8 ; c0308
        JRZ KY02R1
        CMP A,9 ; c0309
        JRZ KY02R1
        CMP A,12 ; c0310
        JRZ KY02R1
        CMP A,13 ; c0311
        JRZ KY02R1
        CMP A,14 ; c0312
        JRZ KY02R1
        CMP A,15 ; c0313
        JRZ KY02R1
        CMP A,16 ; c0314
        JRZ KY02R1
; c0315
        MV (MZ),5
        DEC (MY)
        INC (FLOOR)
        MV BA,(SCORE)
        INC BA ; c0316
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
; c0317
KY03: ; c0318
        CMP A,2 ; c0319
        JPNZ KY04
; c0320
        CMP (MZ),4
        JRZ KY03W
        CMP (MZ),5
        JRZ KY03L
        CMP (MZ),6
        JRZ KY03T
        CMP (MZ),7
        JR KY03R
KY03W:  ; c0321
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
        MV (MZ),7 ; c0322
        RETF
KY03L: ; c0323
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
        CMP A,1 ; c0324
        JRZ KY03L1
        CMP A,2 ; c0325
        JRZ KY03L1
        CMP A,3 ; c0326
        JPZ KYCLR
        CMP A,8 ; c0327
        JRZ KY03L1
        CMP A,9 ; c0328
        JRZ KY03L1
        CMP A,12 ; c0329
        JRZ KY03L1
        CMP A,13 ; c0330
        JRZ KY03L1
        CMP A,14 ; c0331
        JRZ KY03L1
        CMP A,15 ; c0332
        JRZ KY03L1
        CMP A,16 ; c0333
        JRZ KY03L1

        MV (MZ),7
        DEC (MY)
        INC (FLOOR)
        MV BA,(SCORE)
        INC BA ; c0334
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
; c0335
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
        CMP A,1 ; c0336
        JRZ KY03R1
        CMP A,2 ; c0337
        JRZ KY03R1
        CMP A,3 ; c0338
        JPZ KYCLR
        CMP A,8 ; c0339
        JRZ KY03R1
        CMP A,9 ; c0340
        JRZ KY03R1
        CMP A,12 ; c0341
        JRZ KY03R1
        CMP A,13 ; c0342
        JRZ KY03R1
        CMP A,14 ; c0343
        JRZ KY03R1
        CMP A,15 ; c0344
        JRZ KY03R1
        CMP A,16 ; c0345
        JRZ KY03R1

        MV (MZ),4
        DEC (MY)
        INC (FLOOR)
        MV BA,(SCORE)
        INC BA ; c0346
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
; c0347
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
; c0348
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
        INC BA ; c0349
        INC BA
        INC BA
        INC BA
        INC BA
        MV (SCORE),BA
        CALLF FWIN
        MV (DEAD),2
        RETF
; c0350
BONS:  ; c0351
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
; c0352
; c0353
; c0354
; c0355
; c0356
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
; c0357
; c0358
; c0359
; c0360
; c0361
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
; c0362
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
; c0363
        MV A,[X++]
        MV [Y],A
; c0364
        MV A,[X++]
        MV [Y],A
; c0365
        MV A,[X++]
        MV [Y],A
; c0366
        MV A,[X++]
        MV [Y],A
; c0367
        MV A,[X++]
        MV [Y],A
; c0368
        MV A,[X++]
        MV [Y],A
; c0369
        MV A,[X++]
        MV [Y],A
; c0370
        DEC IL
        JRNZ CC2
        MV Y,200AH
        MV IL,7
CC3:
        MV A,[X++]
        MV [Y],A
; c0371
        MV A,[X++]
        MV [Y],A
; c0372
        MV A,[X++]
        MV [Y],A
; c0373
        MV A,[X++]
        MV [Y],A
; c0374
        MV A,[X++]
        MV [Y],A
; c0375
        MV A,[X++]
        MV [Y],A
; c0376
        MV A,[X++]
        MV [Y],A
; c0377
        MV A,[X++]
        MV [Y],A
; c0378
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
; c0379
        MV A,[--X]
        MV [Y],A
; c0380
        MV A,[--X]
        MV [Y],A
; c0381
        MV A,[--X]
        MV [Y],A
; c0382
        MV A,[--X]
        MV [Y],A
; c0383
        MV A,[--X]
        MV [Y],A
; c0384
        MV A,[--X]
        MV [Y],A
; c0385
        MV A,[--X]
        MV [Y],A
; c0386
        DEC IL
        JRNZ CC4
        MV A,16+56
        ADD X,A
        MV A,B
        INC A
        CMP A,0BCH
        JPNZ CC1
        RETF
; c0387
; c0388
; c0389
; c0390
; c0391
; c0392
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
; c0393
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
        CMP (QZ),0B1H
        JRC PRXX
        CMP (QZ),0DBH+1
        JRNC PRXX
        MV Y,SPCHR
        MV A,(QZ)
        SUB A,0B1H
PRXX:
        CALLF PUTV
        POPU X
        RETF
; c0394
; c0395
; c0396
; c0397
; c0398
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
; c0399
        MV X,Y
        CALLF GPRTV1
        MV A,(TI)
        MV [Y],A
        POPU X
        POPU Y
        POPU A
        POPU I
        RETF
; c0400
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
; c0401
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
; c0402
        MV (AX),0
        MV (AY),0
        MV X,PDAT0
        CALLF PUTR
; c0403
        CALLF DHC
; c0404
        MV (AX),0
        MV (AY),1
        MV X,PDAT2
        CALLF PUTR
; c0405
        CALLF DSCORE
; c0406
        MV (AX),0
        MV (AY),2
        MV X,PDAT4
        CALLF PUTR
; c0407
        CALLF DTIME
; c0408
        MV (AX),0
        MV (AY),3
        MV X,PDAT6 ; c0409
        CALLF PUTR
        CALLF DFLOOR
; c0410
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
; c0411
; c0412
; c0413
TITS:
        MV (AX),0
        MV (AY),0
        MV X,ADAT0
        CALLF PUTR
; c0414
        MV (AX),0
        MV (AY),1
        MV X,ADAT1
        CALLF PUTR
; c0415
        MV (AX),0
        MV (AY),2
        MV X,ADAT2
        CALLF PUTR
; c0416
        MV (AX),0
        MV (AY),3
        MV X,ADAT3
        CALLF PUTR
; c0417
        MV (AX),0
        MV (AY),4
        MV X,ADAT4
        CALLF PUTR
        RETF
; c0418
; c0419
; c0420
; c0421
; c0422
; c0423
; c0424
STICK:
        MVW (KO),01H
        NOP
        NOP
        NOP
        MV A,(KI)
        AND A,10H
        JRZ ST00 ; c0425
        MV A,255
        RETF
ST00: ; c0426
        MV (KEY),0
        MVW (KO),01H
        NOP
        NOP
        MV A,(KI) 
        AND A,40H
        JPZ ST1
        MV (KEY),08H
ST1: ; c0427
        MVW (KO),0200H
        NOP
        NOP
        MV A,(KI)
        AND A,80H
        JPZ ST2
        OR (KEY),04H
ST2: ; c0428
        MVW (KO),01H
        NOP
        NOP
        MV A,(KI)
        AND A,80H
        JPZ ST3
        OR (KEY),02H
ST3: ; c0429
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
; c0430
TRIG0:  ; c0431
        MVW (KO),01H
        NOP
        NOP
        NOP
        MV A,(KI)
        AND A,10H
        JRZ TR000 ; c0432
        MV A,255
        RETF
TR000:
; c0433
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
; c0434
KEND:
        RETF
; c0435
; c0436
; c0437
; c0438
; c0439
; c0440
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
; c0441
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
; c0442
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
; c0443
        CALLF DISP
        CALLF VRAMPP
; c0444
        MV I,20000
        WAIT     
        RETF
; c0445
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
; c0446
        MV I,20000
        WAIT     
        RETF

; c0447
; c0448
; c0449
; c0450
QINT:
        MV X,QTBL
        MV IL,8*10
        MV A,0
QI0:
        MV [X++],A
        DEC IL
        JRNZ QI0
        RETF
; c0451
; c0452
; c0453
; c0454
; c0455
SINT:
        MV X,STBL
        MV I,8*6*8
        MV A,0
SI0:
        MV [X++],A
        DEC I
        JRNZ SI0
        RETF
; c0456
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
; c0457
        MV X,STBL+8*48
        MV Y,STBL+8*48-8*8
        MV I,8*48-8*8
FW1:
        MV A,[--Y]
        MV [--X],A
        DEC I
        JRNZ FW1
; c0458
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
; c0459
        CMP A,0  ; c0460
        JRNZ FS2
        MV A,0
        MV [Y+3],A
        JR FS99
FS2:    ; c0461
        CMP A,1  ; c0462
        JRNZ FS3
        MV A,1
        MV [Y+3],A
        JR FS99
FS3:    ; c0463
        CMP A,2 ; c0464
        JRNZ FS4
        MV A,2
        MV [Y+3],A
        JR FS99
FS4:    ; c0465
        CMP A,3 ; c0466
        JRNZ FS5
        MV A,8
        MV [Y+3],A
        JR FS99
FS5:
        CMP A,4 ; c0467
        JRNZ FS6
        MV A,0
        MV [Y+3],A
        JR FS99
FS6:
        CMP A,5 ; c0468
        JRNZ FS7
        MV A,0
        MV [Y+3],A
        JR FS99
FS7:
        CMP A,6 ; c0469
        JRNZ FS8
        MV A,0
        MV [Y+3],A
        JR FS99
FS8:
        CMP A,7 ; c0470
        JRNZ FS9
        MV A,0
        MV [Y+3],A
        JR FS99
FS9: 
        CMP A,8 ; c0471
        JRNZ FSA
        MV A,0
        MV [Y+3],A
        JR FS99
FSA:
        CMP A,9 ; c0472
        JRNZ FSB
        MV A,0
        MV [Y+3],A
        JR FS99
FSB:
        CMP A,10 ; c0473
        JRNZ FSC
        MV A,4
        MV [Y+3],A
        JR FS99
FSC:
        CMP A,11 ; c0474
        JRNZ FSD
        MV A,4
        MV [Y+3],A
        JR FS99
FSD:
        CMP A,12 ; c0475
        JRNZ FSE
        MV A,4
        MV [Y+3],A
        JR FS99
FSE:
        CMP A,13 ; c0476
        JRNZ FSF
        MV A,2
        MV [Y+3],A
        JR FS99
FSF:
        CMP A,14  ; c0477
        JRNZ FSG
        MV A,9
        MV [Y+3],A
        JR FS99

FSG:       
        CMP A,15 ; c0478
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
       ; c0479
; c0480
; c0481
; c0482
; c0483
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
; c0484
        CMP A,0  ; c0485
        JRNZ SS2
        MV A,0
        MV [Y+3],A
        JR SS99
SS2:    ; c0486
        CMP A,1  ; c0487
        JRNZ SS3
        MV A,1
        MV [Y+3],A
        JR SS99
SS3:    ; c0488
        CMP A,2 ; c0489
        JRNZ SS4
        MV A,2
        MV [Y+3],A
        JR SS99
SS4:    ; c0490
        CMP A,3 ; c0491
        JRNZ SS5
        MV A,8
        MV [Y+3],A
        JR SS99
SS5:
        CMP A,4 ; c0492
        JRNZ SS6
        MV A,0
        MV [Y+3],A
        JR SS99
SS6:
        CMP A,5 ; c0493
        JRNZ SS7
        MV A,0
        MV [Y+3],A
        JR SS99
SS7:
        CMP A,6 ; c0494
        JRNZ SS8
        MV A,0
        MV [Y+3],A
        JR SS99
SS8:
        CMP A,7 ; c0495
        JRNZ SS9
        MV A,0
        MV [Y+3],A
        JR SS99
SS9:
        CMP A,8 ; c0496
        JRNZ SSA
        MV A,0
        MV [Y+3],A
        JR SS99
SSA:
        CMP A,9 ; c0497
        JRNZ SSB
        MV A,0
        MV [Y+3],A
        JR SS99
SSB:
        CMP A,10 ; c0498
        JRNZ SSC
        MV A,0
        MV [Y+3],A
        JR SS99
SSC:
        CMP A,11 ; c0499
        JRNZ SSD
        MV A,0
        MV [Y+3],A
        JR SS99
SSD:
        CMP A,12 ; c0500
        JRNZ SSE
        MV A,0
        MV [Y+3],A
        JR SS99
SSE:
        CMP A,13 ; c0501
        JRNZ SSF
        MV A,2
        MV [Y+3],A
        JR SS99
SSF:
        CMP A,14 ; c0502
        JRNZ SSG
        MV A,9
        MV [Y+3],A
        JR SS99
SSG:
        CMP A,15 ; c0503
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
; c0504
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
        CMP A,14  ; c0505
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
; c0506
MW00:   ; c0507
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,0
       CALLF SADR
       RETF
MW10:   ; c0508
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,1
       CALLF SADR
       RETF
MW20:   ; c0509
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,2
       CALLF SADR
       RETF
MW30:   ; c0510
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
MW40:   ; c0511
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
MW50:   ; c0512
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
MW60:   ; c0513
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
MW70:   ; c0514
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
; c0515
MW80:   ; c0516
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
       CMP A,16 ; c0517
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
; c0518
MW90:   ; c0519
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,0
       CALLF SADR
; c0520
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
MWA0:   ; c0521
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
       CMP A,16 ; c0522
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
; c0523
MWB0:   ; c0524
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
       CMP A,16 ; c0525
       JRNZ MWB4
       MV A,[X+2]
       CMP A,1
       JRNC MWB4
       MV (MONOS),3      
       MV (MONO),(MONOC)
       INC (MONO)
       CALLF VMONO
MWB4:  RETF
; c0526
MWC0:   ; c0527
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
       CMP A,16 ; c0528
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
; c0529
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
; c0530
MWE0:   ; c0531
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,9
       CALLF SADR
       RETF
; c0532
MWF0:   ; c0533
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,3
       CALLF SADR
       RETF

; c0534
; c0535
; c0536
; c0537
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
; c0538
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
; c0539
; c0540
; c0541
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
; c0542
        MV A,[X+1]
        CMP (MGX),A
        JRNZ MNO3
; c0543
        MV (WW1),[X+2]
        MV (WW2),(MGY)
        ADD (WW2),3
        MV A,(WW2)
        SUB A,(WW1)
        CMP A,6
        JRNC MNO3
; c0544
        MV A,[X+4]
        CMP A,021H
        JPNC MNO4
; c0545
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
; c0546
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
; c0547
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
; c0548
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
; c0549
; c0550
; c0551
; c0552
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
; c0553
VW00:   ; c0554
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
VW10:   ; c0555
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
VW20:   ; c0556
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
VW30:   ; c0557
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
VW40:   ; c0558
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL4
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
VW50:   ; c0559
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL5
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
; c0560
VW60:   ; c0561
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL6
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
; c0562
VW70:   ; c0563
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL7
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
; c0564
VW80:   ; c0565
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
; c0566
VW90:   ; c0567
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,0
       CALLF SADR
       RETF
; c0568
VWA0:   ; c0569
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
; c0570
VWB0:   ; c0571
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
; c0572
VWC0:   ; c0573
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       MV Y,MTBL8
       ADD Y,A
       MV A,[Y]
       CALLF SADR
       RETF
VWD0:   ; c0574
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
; c0575
VWE0:   ; c0576
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF
; c0577
VWF0:   ; c0578
       MV (RX),[X+1]
       MV (RY),[X+2]
       MV A,[X+3]
       CALLF SADR
       RETF

; c0579
MTBL0: DB 0
; c0580
MTBL1: DB 1
; c0581
MTBL2: DB 2
; c0582
MTBL3: DB 3
; c0583
MTBL4: DB 0,10,11,1,11
    DB 10,0
; c0584
MTBL5: DB 0,0,0,10,10
    DB 10,11,11,11,1
    DB 1,1,1,11,11
    DB 11,10,10,10,0
    DB 0,0
; c0585
MTBL6: DB 0,0,0,0,10
    DB 10,10,10,11,11
    DB 11,11,1,1,1
    DB 1,11,11,11,11
    DB 10,10,10,10
        DB 0,0,0,0
; c0586
MTBL7: DB 0,0,0,0,0
    DB 0,0,0,0,0
    DB 0,0,0
; c0587
MTBL8: DB 0,12,13,14,15
    DB 16,15,14,13,12
    DB 0
; c0588
; c0589
; c0590
; c0591
; c0592
; c0593
; c0594
; c0595
; c0596
; c0597
; c0598
; c0599
; c0600
; c0601
; c0602
; c0603
; c0604
; c0605
; c0606
; c0607
; c0608
; c0609
KTBL:           ; c0610
; c0611
        DB 0; c0612
        DB 6; c0613
        DB 4; c0614
        DB 9; c0615
        DB 2; c0616
        DB 6; c0617
        DB 4; c0618
        DB 9; c0619
        DB 8; c0620
        DB 6; c0621
        DB 4; c0622
        DB 9; c0623
        DB 0; c0624
        DB 6; c0625
        DB 4; c0626
        DB 9; c0627
; c0628
MUSIC1L: 
; c0629
; c0630
; c0631
; c0632
; c0633
; c0634
        DB _O5C,_O4C
        DB _RR,_RR
        DB _O5G,_RR
        DB _O5E,_RR
        DB _O5D,_O3G
        DB _O5D,_RR
        DB _O5D,_RR
        DB _O5D,_RR
        DB _O5D,_O4C
        DB _RR,_RR
        DB _O4G,_RR
        DB _O5C,_RR
        DB _O5D,_O3G
        DB _RR,_RR
        DB _O5E,_RR
        DB _RR,_RR
        DB _O5G,_O4C
        DB _RR,_RR
        DB _O5A,_RR
        DB _O5E,_RR
        DB _O5G,_O4C
        DB _RR,_RR
        DB _O5A,_O4CS
        DB _O5C,_RR
        DB _O5D,_O4D
        DB _O4A,_RR
        DB _O5A,_RR
        DB _O5F,_RR
        DB _O5D,_O3A
        DB _O4A,_RR
        DB _O5A,_RR
        DB _O5F,_RR
; c0635
        DB _O5C,_O4C
        DB _RR,_RR
        DB _O5G,_RR
        DB _O5E,_RR
        DB _O5D,_O3G
        DB _O5D,_RR
        DB _O5D,_RR
        DB _O5D,_RR
        DB _O5D,_O4C
        DB _RR,_RR
        DB _O4G,_RR
        DB _O5C,_RR
        DB _O5D,_O3G
        DB _RR,_RR
        DB _O5E,_RR
        DB _RR,_RR
MUSIC1S:        
        DB _O5G,_O4G
        DB _O4G,_RR
        DB _O5A,_RR
        DB _O5E,_RR
        DB _O5G,_O3G
        DB _RR,_RR
        DB _O5A,_O3G
        DB _RR,_RR
        DB _O5B,_O3D
        DB _O5B,_O3D
        DB _O5B,_O3D
        DB _O5B,_O3D
        DB _O5B,_O3D
        DB _O5B,_O3D
        DB _O5B,_O3D
        DB _O5B,_O3D
        DB _END
; c0636
MUSIC3: ; c0637
; c0638
; c0639

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
; c0640
MUSIC41: ; c0641
; c0642
	DB _O4F,_O4A,_O4B,_RR,_O4F
	DB _O4A,_O4B,_RR,_END
MUSIC42:
; c0643
	DB _O3F,_O3A,_O3B,_RR,_O3F
	DB _O3A,_O3B,_RR,_END

MUSIC5: ; c0644
    DB _O3C,_O3E,_O4C,_O4E,_END
MUSIC6:
; c0645
; c0646

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
; c0647
; c0648
MUSIC7:
    DB _O4C
    DB _O4E
    DB _O4G
    DB _RR
    DB _END
MUSIC8: ; c0649
; c0650
    DB _O5B,_END
    DB _O5G,_END
    DB _O5E,_END
    DB _O5C,_END
; c0651
MUSIC9: ; c0652
; c0653
    DB _O3C,_END
    DB _O4C,_END
    DB _RR,_END
    DB _RR,_END
; c0654
MUSICA:
; c0655
; c0656
; c0657
; c0658
; c0659
; c0660
        DB _O5C,_END,_O4C,_END
        DB _RR,_END,_RR,_END
        DB _O5G,_END,_RR,_END
        DB _O5E,_END,_RR,_END
        DB _O5D,_END,_O3G,_END
        DB _O5D,_END,_RR,_END
        DB _O5D,_END,_RR,_END
        DB _O5D,_END,_RR,_END
        DB _O5D,_END,_O4C,_END
        DB _RR,_END,_RR,_END
        DB _O4G,_END,_RR,_END
        DB _O5C,_END,_RR,_END
        DB _O5D,_END,_O3G,_END
        DB _RR,_END,_RR,_END
        DB _O5E,_END,_RR,_END
        DB _RR,_END,_RR,_END
        DB _O5G,_END,_O4C,_END
        DB _RR,_END,_RR,_END
        DB _O5A,_END,_RR,_END
        DB _O5E,_END,_RR,_END
        DB _O5G,_END,_O4C,_END
        DB _RR,_END,_RR,_END
        DB _O5A,_END,_O4CS,_END
        DB _O5C,_END,_RR,_END
        DB _O5D,_END,_O4D,_END
        DB _O4A,_END,_RR,_END
        DB _O5A,_END,_RR,_END
        DB _O5F,_END,_RR,_END
        DB _O5D,_END,_O3A,_END
        DB _O4A,_END,_RR,_END
        DB _O5A,_END,_RR,_END
        DB _O5F,_END,_RR,_END
        DB _O5C,_END,_O4C,_END
        DB _RR,_END,_RR,_END
        DB _O5G,_END,_RR,_END
        DB _O5E,_END,_RR,_END
        DB _O5D,_END,_O3G,_END
        DB _O5D,_END,_RR,_END
        DB _O5D,_END,_RR,_END
        DB _O5D,_END,_RR,_END
        DB _O5D,_END,_O4C,_END
        DB _RR,_END,_RR,_END
        DB _O4G,_END,_RR,_END
        DB _O5C,_END,_RR,_END
        DB _O5D,_END,_O3G,_END
        DB _RR,_END,_RR,_END
        DB _O5E,_END,_RR,_END
        DB _RR,_END,_RR,_END
        DB _O5G,_END,_O4G,_END
        DB _O4G,_END,_RR,_END
        DB _O5A,_END,_RR,_END
        DB _O5E,_END,_RR,_END
        DB _O5G,_END,_O3G,_END
        DB _RR,_END,_RR,_END
        DB _O5A,_END,_O3G,_END
        DB _RR,_END,_RR,_END
        DB _O5B,_END,_O3D,_END
        DB _O5B,_END,_O3D,_END
        DB _O5B,_END,_O3D,_END
        DB _O5B,_END,_O3D,_END
        DB _O5B,_END,_O3D,_END
        DB _O5B,_END,_O3D,_END
        DB _O5B,_END,_O3D,_END
        DB _O5B,_END,_O3D,_END
MUSICB: ; c0661
        DB _O4E,_END
; c0662
MDAT3: ; c0663
        DB 8
        DW (MDAT3E-MDAT3S)
MDAT3S:
; c0664
    DB 000H,03EH,000H,007H,003H
    DB 000H,03FH,0E1H
    DB 007H,007H,0C0H,001H,0E1H
    DB 080H,000H,07FH
    DB 0F0H,007H,0DFH,0FCH,007H
    DB 0C0H,0FEH,001H
    DB 0F0H,01FH,0E0H,0FFH,007H
    DB 0E0H,07FH,007H
    DB 0F8H,01FH,081H,0FCH,003H
    DB 0E0H,0FFH,007H
    DB 0F0H,03FH,003H,0F8H,03FH
    DB 0C1H,0F0H,01FH
    DB 080H,0F8H,03FH,0C0H,0F8H
    DB 01FH,0E0H,0F8H
    DB 03FH,0C0H,07CH,01FH,0E0H
    DB 0F8H,03FH,0C1H
    DB 0E0H,01FH,0E0H,0F0H,03FH
    DB 083H,0E0H,0FFH
    DB 007H,0C1H,0FEH,00FH,081H
    DB 0F8H,01FH,007H
    DB 0F0H,07CH,01FH,0F8H,0F0H
    DB 03FH,081H,0E0H
    DB 0FFH,007H,081H,0F8H,03CH
    DB 01FH,0E0H,0F8H
    DB 03FH,081H,0E3H,0FCH,007H
    DB 007H,07EH,03CH
    DB 01CH,0FCH,0F8H,039H,0F1H
    DB 0E0H,063H,0E3H
    DB 0C0H,0C7H,083H,083H,0C3H
    DB 0E7H,0C1H,0C3H
    DB 0C3H,0E3H,0E0H,0F8H,0F0H
    DB 070H,07BH,0E3H
    DB 080H,0E0H,0CFH,0C0H,073H
    DB 0E0H,0E0H,0E0H
    DB 0F0H,078H,07CH,018H,0F0H
    DB 0F0H,0F8H,030H
    DB 061H,0F8H,018H,00FH,070H
    DB 030H,03CH,00EH
    DB 000H,07EH,003H,080H,003H
    DB 018H,006H,000H
    DB 007H,083H,080H,007H,03EH
    DB 000H,007H,083H
    DB 003H,001H,0C0H,070H,003H
    DB 0E0H,0E0H,00FH
    DB 001H,081H,0FCH,03FH,007H
    DB 0E0H,0F0H,003H
    DB 083H,0E0H,000H,001H,0C0H
    DB 003H,080H,003H
    DB 0EFH,000H,000H,008H,07FH
    DB 0FFH,000H
MDAT3E:
MDAT4: ; c0665
        DB 6
        DW (MDAT4E-MDAT4S)
MDAT4S: 
; c0666
    DB 0E3H,000H,0F9H,0CFH,08CH
    DB 060H,01FH,000H
    DB 010H,0CFH,0E0H,00FH,0C1H
    DB 0FFH,0FFH,000H
    DB 070H,01FH,00FH,0FFH,0FCH
    DB 003H,083H,0E0H
    DB 0FFH,0FFH,0F0H,01CH,03CH
    DB 01EH,01FH,0FFH
    DB 081H,080H,070H,0E1H,0FFH
    DB 0FFH,001H,083H
    DB 083H,0E7H,0FFH,0FEH,004H
    DB 003H,01FH,0EFH
    DB 0FFH,0FCH,00CH,01FH,01CH
    DB 03FH,0FFH,0F8H
    DB 020H,01CH,0E3H,0FFH,0FFH
    DB 0E0H,020H,0E0H
    DB 0FFH,0FFH,0FFH,001H,003H
    DB 0C3H,0BFH,0FFH
    DB 0F8H,000H,01CH,039H,0FFH
    DB 0FFH,0E0H,000H
    DB 078H,0E7H,0FFH,0FCH,00CH
    DB 007H,087H,0FFH
    DB 0FFH,0E0H,070H,01EH,01FH
    DB 0FFH,0FEH,000H
    DB 000H,07FH,0FFH,0FFH,0FEH
    DB 000H,001H,0FFH
    DB 0FFH,0FFH,080H,000H,00FH
    DB 0FFH,0FFH,0FCH
    DB 000H,000H,07FH,0FFH,0FFH
    DB 080H,000H,003H
    DB 0FFH,0FFH,0F0H,000H,000H
    DB 0FFH,0FFH,0FFH
    DB 000H,000H,00FH,0FFH,0FFH
    DB 0F0H,000H,000H
    DB 0FFH,0FFH,0FEH,000H,000H
    DB 00FH,0FFH,0FFH
    DB 0C0H,000H,003H,0FFH,0FFH
    DB 0FCH,000H,000H
    DB 07FH,0FFH,0FFH,0C0H,000H
    DB 007H,0FFH,0FFH
    DB 0F8H,000H,000H,07FH,0FFH
    DB 0FFH,0C0H,000H
    DB 00FH,0FFH,0FFH,0F8H,000H
    DB 000H,0FFH,0FFH
    DB 0FFH,0C0H,000H,01FH,0FFH
    DB 0FFH,0FCH,000H
    DB 001H,0FFH,0FFH,0FFH,0E0H
    DB 000H,00FH,0FFH
    DB 0FFH,0F8H,000H,000H,03FH
    DB 0FFH,0FFH,000H
    DB 000H,001H,0FFH,0FFH,0C0H
    DB 000H,000H,00FH
    DB 0FFH,0FCH,000H,000H,000H
    DB 01FH,0FFH,0E0H
    DB 000H,0FCH,000H,003H,0FFH
    DB 0FFH,0FEH,0F8H
    DB 000H,001H,0FFH,0FFH,000H
    DB 0FEH,001H,0F0H
    DB 07FH,01FH,0FFH,0C0H,0F0H
    DB 03CH,01FH,0FFH
    DB 0F8H,038H,00EH,00FH,09FH
    DB 0FFH,081H,0C0H
    DB 030H,0F1H,0FFH,0FFH,006H
    DB 003H,0C3H,08FH
    DB 0FFH,0F8H,038H,03CH,03EH
    DB 078H,0FFH,0C0H
    DB 0C0H,0F0H,0F3H,0F7H,0FFH
    DB 082H,001H,0C3H
    DB 08FH,0BFH,0FFH,018H,00EH
    DB 00EH,01CH,0FFH
    DB 0F0H,080H,030H,070H,0F7H
    DB 0FFH,0C0H,081H
    DB 0C1H,083H,0FFH,0FFH,000H
    DB 00FH,08FH,00FH
    DB 0BFH,0F8H,01EH,01EH,01EH
    DB 01FH,0FFH,0F0H
    DB 030H,03CH,07CH,01FH,0FFH
    DB 0C0H,070H,030H
    DB 07CH,07FH,0FFH,081H,0C0H
    DB 07CH,07CH,0FFH
    DB 0FEH,001H,0F3H,09FH,0F0H
    DB 07FH,0FFH,000H
    DB 00FH,0FFH,000H,0FFH,0FFH
    DB 0C0H,001H,0FFH
    DB 080H,07FH,0F9H,070H,000H
    DB 0FFH,0E0H,01FH
    DB 0FBH,0FCH,001H,0F8H,01FH
    DB 087H,0FFH,0F8H
    DB 003H,000H,0F8H,00FH,0FFH
    DB 0E0H,01EH,007H
    DB 0C7H,0CFH,0FFH,0E0H,078H
    DB 01FH,007H,087H
    DB 0FFH,0E0H,0F0H,01EH,00EH
    DB 00FH,0FFH,0E0H
    DB 0F0H,03EH,03EH,00FH,0FFH
    DB 0E0H,018H,03FH
    DB 00FH,087H,0FFH,0F0H,01EH
    DB 007H,087H,083H
    DB 0FFH,0F8H,007H,003H,0C1H
    DB 0E0H,0FFH,0FEH
    DB 003H,0C1H,0F0H,07CH,01FH
    DB 0BFH,0C0H,0F0H
    DB 03EH,01FH,007H,0FFH,0F0H
    DB 00EH,003H,0E0H
    DB 0F8H,03FH,0FFH,081H,0E0H
    DB 0FCH,01FH,007H
    DB 0FFH,0F0H,01FH,003H,0E0H
    DB 0F8H,00FH,0FFH
    DB 0E0H,078H,01FH,007H,0F0H
    DB 07EH,0FFH,000H
    DB 0F0H,07EH,00FH,080H,0F8H
    DB 0FFH,0FEH,001H
    DB 0E0H,07CH,01FH,0C0H,0F0H
    DB 00FH,00FH,0F7H
    DB 0E0H,01FH,003H,0F0H,07CH
    DB 01FH,080H,03EH
MDAT4E:
; c0667
OTOTBL0:
                DW 1451 ; c0668
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
; c0669
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
; c0670
                DW 350 ; c0671
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
; c0672
OTOTBL1:
                DW 1451 ; c0673
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
; c0674
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
; c0675
                DW 350 ; c0676
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
; c0677
; c0678
; c0679
; c0680
NUMDAT:
; c0681
		DB 00EH,01FH,011H,01FH,00EH
		DB 000H,000H,000H
		DB 000H,012H,01FH,01FH,010H
		DB 000H,000H,000H
		DB 012H,019H,01DH,017H,012H
		DB 000H,000H,000H
		DB 00AH,011H,015H,01FH,00AH
		DB 000H,000H,000H
		DB 00EH,009H,01FH,01FH,008H
		DB 000H,000H,000H
		DB 017H,017H,01DH,01DH,009H
		DB 000H,000H,000H
		DB 00EH,01FH,015H,01DH,009H
		DB 000H,000H,000H
		DB 003H,001H,01DH,01FH,003H
		DB 000H,000H,000H
		DB 00AH,017H,015H,01DH,00AH
		DB 000H,000H,000H
		DB 002H,017H,015H,01FH,00EH
		DB 000H,000H,000H
ALPDAT:
; c0682
		DB 01EH; c0683
		DB 009H
		DB 009H
		DB 01FH
		DB 01EH
		DB 000H,000H,000H
		DB 01FH; c0684
		DB 01FH
		DB 015H
		DB 015H
		DB 00AH
		DB 000H,000H,000H
		DB 00EH; c0685
		DB 01FH
		DB 011H
		DB 011H
		DB 011H
		DB 000H,000H,000H
		DB 01FH; c0686
		DB 011H
		DB 011H
		DB 01FH
		DB 00EH
		DB 000H,000H,000H
		DB 01FH; c0687
		DB 01FH
		DB 015H
		DB 015H
		DB 011H
		DB 000H,000H,000H
		DB 01FH; c0688
		DB 01FH
		DB 005H
		DB 005H
		DB 001H
		DB 000H,000H,000H
		DB 00EH; c0689
		DB 01FH
		DB 011H
		DB 015H
		DB 01DH
		DB 000H,000H,000H
		DB 01FH; c0690
		DB 01FH
		DB 004H
		DB 01FH
		DB 01FH
		DB 000H,000H,000H
		DB 000H; c0691
		DB 000H
		DB 01FH
		DB 01FH
		DB 000H
		DB 000H,000H,000H
		DB 011H; c0692
		DB 011H
		DB 01FH
		DB 00FH
		DB 001H
		DB 000H,000H,000H
		DB 01FH; c0693
		DB 01FH
		DB 004H
		DB 00AH
		DB 011H
		DB 000H,000H,000H
		DB 01FH; c0694
		DB 01FH
		DB 010H
		DB 010H
		DB 010H
		DB 000H,000H,000H
		DB 01FH; c0695
		DB 002H
		DB 004H
		DB 002H
		DB 01FH
		DB 01FH,000H,000H
		DB 01FH; c0696
		DB 01FH
		DB 006H
		DB 008H
		DB 01FH
		DB 000H,000H,000H
		DB 00EH; c0697
		DB 01FH
		DB 011H
		DB 011H
		DB 00EH
		DB 000H,000H,000H
		DB 01FH; c0698
		DB 01FH
		DB 005H
		DB 005H
		DB 002H
		DB 000H,000H,000H
		DB 00EH; c0699
		DB 019H
		DB 015H
		DB 00FH
		DB 016H
		DB 000H,000H,000H
		DB 01FH; c0700
		DB 01FH
		DB 009H
		DB 01FH
		DB 016H
		DB 000H,000H,000H
		DB 016H; c0701
		DB 017H
		DB 01DH
		DB 01DH
		DB 009H
		DB 000H,000H,000H
		DB 001H; c0702
		DB 001H
		DB 01FH
		DB 01FH
		DB 001H
		DB 001H,000H,000H
		DB 00FH; c0703
		DB 01FH
		DB 010H
		DB 01FH
		DB 00FH
		DB 000H,000H,000H
		DB 007H; c0704
		DB 00FH
		DB 018H
		DB 00FH
		DB 007H
		DB 000H,000H,000H
		DB 00FH; c0705
		DB 010H
		DB 00FH
		DB 010H
		DB 01FH
		DB 00FH,000H,000H
		DB 01BH; c0706
		DB 007H
		DB 004H
		DB 01CH
		DB 01BH
		DB 000H,000H,000H
		DB 003H; c0707
		DB 007H
		DB 01CH
		DB 01CH
		DB 007H
		DB 003H,000H,000H
		DB 019H; c0708
		DB 01DH
		DB 01FH
		DB 017H
		DB 013H
		DB 000H,000H,000H
; c0709
SPCHR:
		DB 003H; c0710
		DB 01AH
		DB 00FH
		DB 01AH
		DB 003H
		DB 000H,000H,000H
		DB 01FH; c0711
		DB 01FH
		DB 000H
		DB 004H
		DB 004H
		DB 000H,000H,000H
		DB 000H; c0712
		DB 01FH
		DB 01FH
		DB 015H
		DB 015H
		DB 011H,000H,000H
		DB 004H; c0713
		DB 00FH
		DB 01FH
		DB 00FH
		DB 004H
		DB 000H,000H,000H
		DB 004H; c0714
		DB 01EH
		DB 01FH
		DB 01EH
		DB 004H
		DB 000H,000H,000H
		DB 00EH; c0715
		DB 00EH
		DB 01FH
		DB 00EH
		DB 004H
		DB 000H,000H,000H
		DB 004H; c0716
		DB 00EH
		DB 01FH
		DB 00EH
		DB 00EH
		DB 000H,000H,000H
		DB 01FH; c0717
		DB 011H
		DB 000H
		DB 000H
		DB 000H
		DB 000H,000H,000H
		DB 004H; c0718
		DB 004H
		DB 01FH
		DB 004H
		DB 004H
		DB 000H,000H,000H
		DB 000H; c0719
		DB 000H
		DB 000H
		DB 011H
		DB 01FH
		DB 000H,000H,000H
		DB 00AH; c0720
		DB 00AH
		DB 00AH
		DB 00AH
		DB 00AH
		DB 000H,000H,000H
		DB 00EH; c0721
		DB 011H
		DB 015H
		DB 015H
		DB 00EH
		DB 000H,000H,000H
		DB 00AH; c0722
		DB 01FH
		DB 015H
		DB 00AH
		DB 014H
		DB 000H,000H,000H

; c0723
SPCDAT:
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
; c0724
VMAP1:
; c0725
        DB 033H,033H,033H,033H; c0726
        DB 033H,033H,033H,033H
        DB 033H,033H,033H,033H
        DB 033H,033H,033H,033H
        DB 033H,0E3H,033H,033H
        DB 033H,033H,033H,033H
        DB 033H,033H,0E3H,033H
        DB 03EH,033H,033H,0E3H
        DB 033H,033H,033H,033H
        DB 0FFH,0FFH,0FFH,0FFH; c0727
        DB 028H,007H,077H,072H; c0728
        DB 027H,007H,077H,072H; c0729
        DB 020H,000H,000H,002H; c0730
        DB 027H,008H,087H,072H; c0731
        DB 027H,007H,077H,072H; c0732
        DB 027H,002H,027H,072H; c0733
        DB 027H,003H,037H,072H; c0734
        DB 028H,003H,0E7H,082H; c0735
        DB 027H,003H,037H,072H; c0736
        DB 020H,002H,025H,062H; c0737
        DB 020H,073H,037H,082H; c0738
        DB 020H,083H,0E8H,072H; c0739
        DB 020H,003H,037H,072H; c0740
        DB 024H,002H,028H,082H; c0741
        DB 027H,007H,077H,072H; c0742
        DB 027H,007H,087H,072H; c0743
        DB 027H,008H,077H,072H; c0744
        DB 0D7H,007H,074H,082H; c0745
        DB 027H,007H,077H,072H; c0746
        DB 020H,000H,000H,002H; c0747
        DB 022H,027H,002H,022H; c0748
        DB 023H,027H,002H,032H; c0749
        DB 023H,027H,002H,032H; c0750
        DB 023H,025H,002H,032H; c0751
        DB 023H,027H,002H,032H; c0752
        DB 022H,020H,002H,022H; c0753
        DB 023H,020H,072H,032H; c0754
        DB 023H,020H,072H,032H; c0755
        DB 023H,020H,072H,032H; c0756
        DB 023H,020H,072H,032H; c0757
        DB 022H,020H,072H,022H; c0758
        DB 027H,080H,088H,072H; c0759
        DB 020H,000H,077H,072H; c0760
        DB 020H,074H,047H,072H; c0761
        DB 020H,084H,048H,082H; c0762
        DB 020H,074H,047H,072H; c0763
        DB 020H,077H,077H,072H; c0764
        DB 027H,088H,088H,072H; c0765
        DB 027H,077H,077H,002H; c0766
        DB 027H,074H,040H,082H; c0767
        DB 027H,007H,007H,072H; c0768
        DB 020H,077H,078H,072H; c0769
        DB 027H,072H,020H,072H; c0770
        DB 028H,073H,037H,002H; c0771
        DB 024H,043H,034H,042H; c0772
        DB 028H,073H,037H,072H; c0773
        DB 027H,072H,027H,072H; c0774
        DB 027H,073H,030H,072H; c0775
        DB 027H,073H,037H,082H; c0776
        DB 028H,073H,037H,072H; c0777
        DB 027H,072H,027H,002H; c0778
        DB 027H,087H,078H,072H; c0779
        DB 027H,077H,077H,072H; c0780
        DB 027H,074H,040H,062H; c0781
        DB 027H,076H,040H,062H; c0782
        DB 026H,074H,040H,002H; c0783
        DB 027H,077H,077H,002H; c0784
        DB 027H,077H,077H,002H; c0785
        DB 027H,077H,087H,002H; c0786
        DB 027H,077H,000H,002H; c0787
        DB 022H,028H,002H,022H; c0788
        DB 023H,028H,002H,032H; c0789
        DB 023H,028H,002H,032H; c0790
        DB 023H,020H,002H,032H; c0791
        DB 022H,020H,002H,022H; c0792
        DB 023H,020H,042H,032H; c0793
        DB 023H,020H,042H,032H; c0794
        DB 023H,020H,042H,032H; c0795
        DB 022H,020H,072H,022H; c0796
        DB 027H,084H,077H,042H; c0797
        DB 028H,078H,077H,072H; c0798
        DB 027H,080H,087H,072H; c0799
        DB 027H,008H,078H,072H; c0800
        DB 027H,072H,027H,082H; c0801
        DB 027H,003H,037H,072H; c0802
        DB 024H,003H,037H,082H; c0803
        DB 027H,002H,027H,072H; c0804
        DB 027H,000H,007H,072H; c0805
        DB 024H,077H,000H,072H; c0806
        DB 027H,047H,070H,072H; c0807
        DB 027H,074H,080H,042H; c0808
        DB 022H,070H,000H,022H; c0809
        DB 032H,074H,047H,023H; c0810
        DB 032H,070H,077H,023H; c0811
        DB 032H,080H,078H,023H; c0812
        DB 022H,000H,077H,022H; c0813
        DB 028H,000H,000H,072H; c0814
        DB 027H,047H,074H,072H; c0815
        DB 028H,000H,000H,082H; c0816
        DB 027H,002H,020H,072H; c0817
        DB 028H,003H,030H,082H; c0818
        DB 020H,003H,030H,072H; c0819
        DB 020H,043H,034H,072H; c0820
        DB 020H,003H,030H,072H; c0821
        DB 024H,002H,020H,042H; c0822
        DB 028H,004H,047H,082H; c0823
        DB 027H,007H,007H,072H; c0824
        DB 028H,004H,047H,082H; c0825
        DB 027H,000H,000H,072H; c0826
        DB 027H,072H,020H,072H; c0827
        DB 028H,073H,030H,082H; c0828
        DB 027H,073H,030H,072H; c0829
        DB 027H,043H,034H,072H; c0830
        DB 027H,073H,030H,072H; c0831
        DB 024H,072H,027H,002H; c0832
        DB 027H,087H,078H,072H; c0833
        DB 020H,047H,077H,002H; c0834
        DB 020H,000H,000H,002H; c0835
        DB 022H,024H,002H,022H; c0836
        DB 023H,027H,002H,032H; c0837
        DB 023H,027H,002H,032H; c0838
        DB 023H,026H,002H,032H; c0839
        DB 022H,027H,002H,022H; c0840
        DB 027H,077H,000H,072H; c0841
        DB 027H,057H,070H,072H; c0842
        DB 027H,077H,070H,072H; c0843
        DB 027H,076H,070H,072H; c0844
        DB 027H,077H,070H,072H; c0845
        DB 027H,001H,010H,072H; c0846
        DB 022H,021H,012H,022H; c0847
VMAP2:
; c0848
; c0849
        DB 033H,033H,033H,033H; c0850
        DB 033H,033H,033H,033H; c0851
        DB 033H,033H,033H,033H; c0852
        DB 033H,033H,033H,033H; c0853
        DB 033H,033H,033H,033H; c0854
        DB 033H,033H,033H,033H; c0855
        DB 033H,03EH,033H,0E3H; c0856
        DB 03EH,033H,0E3H,033H; c0857
        DB 033H,033H,033H,033H; c0858
        DB 03FH,0FFH,0FFH,0F3H; c0859
        DB 032H,077H,070H,023H; c0860
        DB 032H,077H,070H,023H; c0861
        DB 022H,077H,070H,022H; c0862
        DB 032H,077H,070H,023H; c0863
        DB 032H,070H,000H,023H; c0864
        DB 032H,070H,077H,023H; c0865
        DB 032H,070H,077H,023H; c0866
        DB 032H,070H,077H,023H; c0867
        DB 032H,070H,097H,023H; c0868
        DB 022H,070H,077H,022H; c0869
        DB 032H,090H,097H,023H; c0870
        DB 032H,070H,077H,023H; c0871
        DB 032H,000H,079H,023H; c0872
        DB 032H,009H,077H,023H; c0873
        DB 032H,007H,080H,023H; c0874
        DB 032H,007H,077H,023H; c0875
        DB 022H,000H,087H,022H; c0876
        DB 032H,090H,077H,023H; c0877
        DB 032H,070H,079H,023H; c0878
        DB 032H,090H,077H,023H; c0879
        DB 032H,070H,077H,023H; c0880
        DB 032H,070H,097H,023H; c0881
        DB 032H,079H,077H,023H; c0882
        DB 0D2H,090H,077H,022H; c0883
        DB 032H,070H,079H,023H; c0884
        DB 032H,070H,077H,023H; c0885
        DB 032H,070H,077H,023H; c0886
        DB 032H,080H,077H,023H; c0887
        DB 032H,070H,078H,023H; c0888
        DB 032H,070H,077H,023H; c0889
        DB 022H,000H,000H,022H; c0890
        DB 027H,072H,027H,082H; c0891
        DB 028H,073H,037H,072H; c0892
        DB 027H,073H,037H,082H; c0893
        DB 028H,072H,027H,072H; c0894
        DB 027H,077H,077H,072H; c0895
        DB 022H,077H,077H,022H; c0896
        DB 032H,077H,097H,023H; c0897
        DB 032H,077H,077H,023H; c0898
        DB 032H,077H,077H,023H; c0899
        DB 032H,097H,077H,023H; c0900
        DB 032H,077H,077H,023H; c0901
        DB 032H,077H,079H,023H; c0902
        DB 027H,077H,077H,07DH; c0903
        DB 027H,077H,077H,072H; c0904
        DB 027H,077H,077H,072H; c0905
        DB 027H,077H,077H,072H; c0906
        DB 020H,002H,020H,002H; c0907
        DB 027H,073H,037H,072H; c0908
        DB 027H,073H,037H,072H; c0909
        DB 027H,073H,037H,072H; c0910
        DB 029H,073H,037H,092H; c0911
        DB 027H,072H,027H,072H; c0912
        DB 027H,073H,034H,072H; c0913
        DB 029H,003H,034H,002H; c0914
        DB 024H,073H,037H,072H; c0915
        DB 027H,073H,037H,042H; c0916
        DB 020H,002H,020H,092H; c0917
        DB 027H,073H,037H,072H; c0918
        DB 027H,093H,037H,042H; c0919
        DB 027H,073H,037H,072H; c0920
        DB 027H,043H,039H,072H; c0921
        DB 020H,042H,020H,002H; c0922
        DB 027H,073H,034H,002H; c0923
        DB 029H,073H,034H,002H; c0924
        DB 027H,073H,037H,072H; c0925
        DB 027H,043H,037H,072H; c0926
        DB 020H,042H,020H,092H; c0927
        DB 020H,043H,037H,072H; c0928
        DB 027H,073H,034H,072H; c0929
        DB 024H,043H,034H,002H; c0930
        DB 028H,003H,037H,072H; c0931
        DB 020H,002H,020H,002H; c0932
        DB 020H,000H,000H,092H; c0933
        DB 027H,042H,027H,072H; c0934
        DB 020H,043H,034H,002H; c0935
        DB 027H,073H,034H,072H; c0936
        DB 020H,003H,030H,002H; c0937
        DB 027H,073H,034H,072H; c0938
        DB 027H,043H,037H,072H; c0939
        DB 027H,073H,030H,072H; c0940
        DB 027H,073H,037H,072H; c0941
        DB 024H,072H,027H,042H; c0942
        DB 029H,077H,079H,002H; c0943
        DB 027H,077H,077H,002H; c0944
        DB 020H,000H,000H,002H; c0945
        DB 027H,097H,007H,092H; c0946
        DB 022H,027H,002H,022H; c0947
        DB 023H,027H,002H,032H; c0948
        DB 023H,027H,072H,032H; c0949
        DB 023H,027H,002H,032H; c0950
        DB 023H,027H,002H,032H; c0951
        DB 022H,020H,002H,022H; c0952
        DB 023H,027H,082H,032H; c0953
        DB 023H,020H,002H,032H; c0954
        DB 023H,026H,082H,032H; c0955
        DB 023H,020H,002H,032H; c0956
        DB 022H,026H,002H,022H; c0957
        DB 023H,028H,002H,032H; c0958
        DB 023H,020H,002H,032H; c0959
        DB 023H,020H,082H,032H; c0960
        DB 023H,020H,072H,032H; c0961
        DB 022H,028H,002H,022H; c0962
        DB 023H,026H,002H,032H; c0963
        DB 023H,020H,082H,032H; c0964
        DB 023H,027H,072H,032H; c0965
        DB 023H,028H,002H,032H; c0966
        DB 022H,026H,002H,022H; c0967
        DB 023H,028H,072H,032H; c0968
        DB 023H,026H,002H,032H; c0969
        DB 023H,020H,082H,032H; c0970
        DB 023H,020H,092H,032H; c0971
        DB 022H,020H,002H,022H; c0972
        DB 032H,070H,009H,023H; c0973
        DB 032H,097H,007H,023H; c0974
        DB 032H,076H,006H,023H; c0975
        DB 032H,000H,000H,023H; c0976
        DB 032H,067H,070H,023H; c0977
        DB 022H,001H,010H,022H; c0978
        DB 021H,071H,017H,012H; c0979
VMAP3:
; c0980
        DB 033H,033H,033H,033H; c0981
        DB 033H,033H,033H,033H
        DB 033H,033H,033H,033H
        DB 033H,033H,033H,033H
        DB 033H,033H,033H,033H
        DB 033H,033H,033H,033H
        DB 033H,033H,0E3H,033H
        DB 03EH,033H,033H,0E3H
        DB 033H,03EH,033H,033H
        DB 033H,0FFH,0FFH,033H; c0982
        DB 033H,027H,072H,03EH; c0983
        DB 033H,027H,002H,033H; c0984
        DB 0E3H,027H,062H,033H; c0985
        DB 033H,026H,002H,0E3H; c0986
        DB 033H,027H,062H,033H; c0987
        DB 033H,027H,002H,033H; c0988
        DB 033H,027H,002H,03EH; c0989
        DB 03EH,026H,002H,033H; c0990
        DB 033H,027H,062H,033H; c0991
        DB 022H,027H,002H,022H; c0992
        DB 02AH,0BCH,000H,082H; c0993
        DB 022H,027H,002H,022H; c0994
        DB 023H,027H,002H,032H; c0995
        DB 023H,027H,002H,032H; c0996
        DB 023H,027H,002H,032H; c0997
        DB 023H,027H,002H,0E2H; c0998
        DB 02EH,020H,002H,032H; c0999
        DB 023H,020H,062H,032H; c1000
        DB 023H,020H,072H,032H; c1001
        DB 022H,026H,062H,022H; c1002
        DB 020H,007H,0ABH,0C2H; c1003
        DB 022H,020H,062H,022H; c1004
        DB 023H,020H,072H,032H; c1005
        DB 023H,026H,002H,032H; c1006
        DB 023H,027H,002H,032H; c1007
        DB 023H,026H,062H,032H; c1008
        DB 023H,027H,002H,032H; c1009
        DB 023H,026H,002H,032H; c1010
        DB 023H,027H,062H,032H; c1011
        DB 022H,026H,002H,022H; c1012
        DB 020H,007H,0ABH,0C2H; c1013
        DB 022H,020H,002H,022H; c1014
        DB 023H,020H,072H,032H; c1015
        DB 023H,026H,062H,032H; c1016
        DB 023H,020H,072H,032H; c1017
        DB 023H,020H,072H,032H; c1018
        DB 023H,026H,062H,032H; c1019
        DB 023H,020H,072H,032H; c1020
        DB 023H,027H,072H,032H; c1021
        DB 032H,074H,047H,023H; c1022
        DB 032H,077H,076H,023H; c1023
        DB 032H,077H,078H,023H; c1024
        DB 032H,069H,076H,023H; c1025
        DB 032H,077H,079H,023H; c1026
        DB 032H,047H,074H,023H; c1027
        DB 032H,047H,074H,023H; c1028
        DB 032H,047H,074H,023H; c1029
        DB 032H,097H,074H,023H; c1030
        DB 032H,040H,074H,023H; c1031
        DB 032H,040H,064H,023H; c1032
        DB 032H,040H,074H,023H; c1033
        DB 022H,040H,094H,022H; c1034
        DB 032H,040H,074H,023H; c1035
        DB 032H,040H,000H,023H; c1036
        DB 032H,044H,070H,023H; c1037
        DB 032H,097H,040H,023H; c1038
        DB 032H,044H,070H,023H; c1039
        DB 032H,040H,000H,023H; c1040
        DB 032H,040H,074H,023H; c1041
        DB 032H,040H,079H,023H; c1042
        DB 022H,070H,077H,022H; c1043
        DB 027H,070H,077H,072H; c1044
        DB 027H,070H,070H,072H; c1045
        DB 027H,0ABH,0C0H,072H; c1046
        DB 027H,077H,040H,002H; c1047
        DB 027H,077H,070H,002H; c1048
        DB 020H,000H,000H,002H; c1049
        DB 020H,000H,000H,002H; c1050
        DB 020H,077H,077H,072H; c1051
        DB 020H,077H,0ABH,0C2H; c1052
        DB 020H,077H,077H,072H; c1053
        DB 020H,077H,074H,072H; c1054
        DB 020H,000H,000H,002H; c1055
        DB 020H,000H,000H,002H; c1056
        DB 027H,077H,077H,002H; c1057
        DB 02AH,0BCH,077H,002H; c1058
        DB 027H,077H,077H,002H; c1059
        DB 027H,077H,077H,002H; c1060
        DB 027H,077H,077H,002H; c1061
        DB 020H,000H,000H,002H; c1062
        DB 020H,000H,000H,002H; c1063
        DB 027H,002H,020H,072H; c1064
        DB 027H,043H,034H,072H; c1065
        DB 027H,043H,034H,072H; c1066
        DB 027H,003H,030H,072H; c1067
        DB 027H,002H,020H,072H; c1068
        DB 027H,008H,000H,072H; c1069
        DB 024H,002H,020H,042H; c1070
        DB 024H,073H,037H,042H; c1071
        DB 027H,073H,030H,072H; c1072
        DB 028H,073H,030H,082H; c1073
        DB 027H,072H,028H,072H; c1074
        DB 027H,048H,074H,082H; c1075
        DB 027H,082H,020H,072H; c1076
        DB 024H,073H,030H,042H; c1077
        DB 028H,073H,037H,082H; c1078
        DB 027H,073H,037H,072H; c1079
        DB 028H,072H,027H,082H; c1080
        DB 027H,077H,077H,072H; c1081
        DB 027H,072H,020H,072H; c1082
        DB 028H,073H,030H,082H; c1083
        DB 027H,073H,030H,072H; c1084
        DB 027H,043H,034H,072H; c1085
        DB 027H,042H,024H,072H; c1086
        DB 027H,077H,077H,002H; c1087
        DB 027H,077H,040H,002H; c1088
        DB 028H,077H,070H,002H; c1089
        DB 027H,077H,040H,002H; c1090
        DB 020H,000H,000H,002H; c1091
        DB 029H,079H,009H,002H; c1092
        DB 027H,077H,040H,002H; c1093
        DB 027H,097H,000H,092H; c1094
        DB 027H,077H,000H,002H; c1095
        DB 027H,077H,040H,002H; c1096
        DB 029H,059H,077H,092H; c1097
        DB 027H,077H,077H,002H; c1098
        DB 027H,076H,077H,072H; c1099
        DB 027H,077H,007H,072H; c1100
        DB 021H,001H,010H,012H; c1101
        DB 022H,022H,022H,022H; c1102
VMAP4:
; c1103
        DB 023H,033H,033H,032H; c1104
        DB 023H,033H,033H,032H
        DB 023H,033H,033H,032H
        DB 023H,033H,033H,032H
        DB 023H,033H,033H,032H
        DB 023H,033H,033H,032H
        DB 023H,03EH,033H,032H
        DB 02EH,033H,03EH,032H
        DB 023H,033H,033H,03DH
        DB 02FH,0FEH,03FH,0F2H; c1105
        DB 020H,003H,0E0H,002H; c1106
        DB 020H,003H,030H,002H; c1107
        DB 020H,00EH,030H,002H; c1108
        DB 020H,003H,030H,002H; c1109
        DB 020H,072H,027H,002H; c1110
        DB 020H,073H,037H,002H; c1111
        DB 020H,073H,037H,002H; c1112
        DB 028H,072H,027H,082H; c1113
        DB 020H,009H,090H,002H; c1114
        DB 025H,052H,025H,042H; c1115
        DB 027H,073H,037H,072H; c1116
        DB 027H,082H,028H,072H; c1117
        DB 020H,008H,080H,002H; c1118
        DB 024H,072H,028H,082H; c1119
        DB 027H,073H,037H,072H; c1120
        DB 027H,083H,037H,042H; c1121
        DB 027H,07EH,037H,072H; c1122
        DB 027H,073H,034H,082H; c1123
        DB 027H,002H,027H,072H; c1124
        DB 02AH,0BCH,000H,002H; c1125
        DB 022H,007H,004H,022H; c1126
        DB 032H,007H,070H,023H; c1127
        DB 032H,007H,044H,023H; c1128
        DB 032H,040H,004H,023H; c1129
        DB 032H,000H,000H,023H; c1130
        DB 032H,000H,044H,023H; c1131
        DB 032H,00AH,0BCH,023H; c1132
        DB 032H,007H,070H,023H; c1133
        DB 032H,087H,040H,023H; c1134
        DB 032H,007H,070H,023H; c1135
        DB 032H,000H,000H,023H; c1136
        DB 032H,00AH,0BCH,023H; c1137
        DB 022H,000H,000H,022H; c1138
        DB 027H,074H,047H,072H; c1139
        DB 028H,070H,000H,072H; c1140
        DB 027H,077H,047H,072H; c1141
        DB 02AH,0BCH,000H,002H; c1142
        DB 022H,022H,028H,002H; c1143
        DB 023H,033H,037H,072H; c1144
        DB 023H,033H,037H,082H; c1145
        DB 023H,033H,037H,072H; c1146
        DB 022H,022H,028H,092H; c1147
        DB 029H,008H,080H,002H; c1148
        DB 022H,002H,020H,022H; c1149
        DB 023H,003H,034H,032H; c1150
        DB 023H,003H,030H,032H; c1151
        DB 023H,003H,030H,032H; c1152
        DB 022H,072H,020H,022H; c1153
        DB 027H,077H,040H,082H; c1154
        DB 027H,077H,080H,072H; c1155
        DB 027H,077H,070H,002H; c1156
        DB 027H,007H,070H,002H; c1157
        DB 02AH,0BCH,070H,002H; c1158
        DB 027H,074H,040H,042H; c1159
        DB 027H,074H,040H,042H; c1160
        DB 024H,074H,040H,072H; c1161
        DB 020H,000H,000H,002H; c1162
        DB 020H,000H,000H,002H; c1163
        DB 0D7H,000H,080H,072H; c1164
        DB 027H,000H,000H,072H; c1165
        DB 027H,070H,077H,002H; c1166
        DB 027H,000H,077H,072H; c1167
        DB 020H,00AH,0BCH,002H; c1168
        DB 020H,002H,022H,022H; c1169
        DB 028H,003H,033H,032H; c1170
        DB 020H,003H,033H,032H; c1171
        DB 020H,003H,033H,032H; c1172
        DB 027H,083H,033H,032H; c1173
        DB 027H,002H,022H,022H; c1174
        DB 020H,080H,0ABH,0C2H; c1175
        DB 028H,002H,022H,022H; c1176
        DB 027H,083H,033H,032H; c1177
        DB 027H,003H,033H,032H; c1178
        DB 027H,003H,033H,032H; c1179
        DB 020H,003H,033H,032H; c1180
        DB 024H,002H,022H,022H; c1181
        DB 027H,078H,088H,082H; c1182
        DB 027H,000H,007H,072H; c1183
        DB 024H,077H,000H,072H; c1184
        DB 028H,008H,080H,072H; c1185
        DB 028H,008H,080H,002H; c1186
        DB 028H,088H,080H,042H; c1187
        DB 028H,008H,080H,072H; c1188
        DB 028H,008H,080H,092H; c1189
        DB 020H,000H,000H,072H; c1190
        DB 028H,088H,000H,002H; c1191
        DB 028H,008H,080H,002H; c1192
        DB 028H,008H,084H,002H; c1193
        DB 028H,088H,080H,072H; c1194
        DB 028H,008H,080H,07DH; c1195
        DB 020H,000H,000H,072H; c1196
        DB 020H,088H,007H,042H; c1197
        DB 028H,008H,080H,002H; c1198
        DB 028H,008H,080H,002H; c1199
        DB 028H,088H,000H,002H; c1200
        DB 028H,008H,080H,002H; c1201
        DB 020H,000H,004H,002H; c1202
        DB 028H,008H,080H,072H; c1203
        DB 028H,008H,080H,072H; c1204
        DB 0D8H,008H,089H,002H; c1205
        DB 028H,008H,080H,072H; c1206
        DB 020H,088H,000H,072H; c1207
        DB 020H,000H,000H,072H; c1208
        DB 020H,000H,000H,072H; c1209
        DB 020H,000H,007H,072H; c1210
        DB 027H,047H,077H,072H; c1211
        DB 020H,047H,000H,092H; c1212
        DB 029H,000H,000H,002H; c1213
        DB 020H,090H,077H,002H; c1214
        DB 020H,077H,090H,042H; c1215
        DB 020H,007H,004H,042H; c1216
        DB 020H,070H,049H,042H; c1217
        DB 027H,077H,077H,002H; c1218
        DB 027H,079H,040H,042H; c1219
        DB 029H,050H,040H,002H; c1220
        DB 027H,077H,077H,092H; c1221
        DB 027H,004H,074H,072H; c1222
        DB 027H,077H,007H,042H; c1223
        DB 020H,001H,010H,042H; c1224
        DB 022H,022H,022H,022H; c1225
DDATA: ; c1226
; c1227
; c1228
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,03FH,0D9H,026H
		DB 078H,026H,0D9H
		DB 03FH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0C0H,0C0H,0C0H,0C0H,0C0H
		DB 0C0H,0C0H,0C0H
		DB 0C0H,0C0H,0C0H,0C0H,0C0H
		DB 0FFH,0FFH,0FFH
		DB 0EFH,0EFH,0EFH,0EFH,0EFH
		DB 0EFH,0EFH,0EFH
		DB 0EFH,0EFH,0EFH,0EFH,0EFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0E7H,09BH,065H
		DB 01EH,065H,09BH
		DB 0E7H,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FCH,083H,064H
		DB 01EH,065H,09BH
		DB 0E7H,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,06FH,097H,04BH
		DB 0BBH,04DH,013H
		DB 0A7H,0CFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0E7H,09BH,065H
		DB 01EH,064H,083H
		DB 0FCH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0E7H,0DBH,0BDH,0BDH
		DB 0BDH,0BBH,0DBH
		DB 0BDH,0BDH,0BDH,0DBH,0E7H
		DB 0FFH,0FFH,0FFH
		DB 0E0H,0E2H,0E2H,0E2H,0E2H
		DB 0E2H,0E2H,0E2H
		DB 0E0H,0E2H,0E0H,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0E0H,0E6H,0E6H,0E2H,0E6H
		DB 0E6H,0E6H,0E2H
		DB 0E4H,0E6H,0E0H,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0E0H,0E0H,0E0H,0E0H,0E8H
		DB 0E8H,0E8H,0E0H
		DB 0E0H,0E0H,0E0H,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0E0H,0E0H,0E0H,0E8H,0E4H
		DB 0ECH,0E4H,0E8H
		DB 0E0H,0E0H,0E0H,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0E0H,0E0H,0E0H,0ECH,0EAH
		DB 0E6H,0EAH,0ECH
		DB 0E0H,0E0H,0E0H,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0E0H,0E0H,0E0H,0E6H,0EDH
		DB 0EBH,0EDH,0E6H
		DB 0E0H,0E0H,0E0H,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0E0H,0E0H,0E8H,0E6H,0EDH
		DB 0EBH,0EDH,0E6H
		DB 0E8H,0E0H,0E0H,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0E7H,0DBH,0B5H
		DB 0DAH,0EDH,0F3H
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0E0H,0EEH,0EAH
		DB 0EAH,0EEH,0E0H
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0F3H,0EDH,0DAH
		DB 0B5H,0DBH,0E7H
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,080H,0BEH,0B2H
		DB 0BEH,080H,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0F9H,0F6H,0EAH
		DB 0EDH,0D3H,0CFH
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0CFH,0D3H,0EDH
		DB 0EAH,0F6H,0F9H,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0F3H,0CBH,0B7H
		DB 057H,06FH,09FH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,09FH,06FH,057H
		DB 0B7H,0CBH,0F3H
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,087H,0B7H,0B0H
		DB 0BEH,0B0H,087H
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,087H,0B0H
		DB 0BEH,080H,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,087H,0B0H
		DB 0BEH,0B0H,0B7H
		DB 087H,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,080H,0BEH
		DB 0B0H,087H,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0F1H,0EEH,0E8H,0CEH
		DB 099H,0B7H,0CFH
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,08FH,077H,047H,077H
		DB 09BH,0CDH,0E3H
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0F3H,0EDH,09BH
		DB 073H,017H,077H,08FH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0CFH,0B7H,0D9H,0EEH
		DB 0E2H,0EEH,0F1H
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,0F3H
		DB 0E9H,0CDH,093H
		DB 04FH,06FH,09FH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,099H
		DB 044H,05CH,066H
		DB 099H,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,09FH,04FH
		DB 06FH,093H,0E9H
		DB 0EDH,0F3H,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,0E3H,0D9H
		DB 0D9H,0DDH,0EBH
		DB 0EBH,0D9H,0D9H,0DDH,0E3H
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0BFH,05FH,06FH,0F7H
		DB 0DBH,06DH,0B6H
		DB 0DFH,0ECH,0F5H,0FBH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,000H
		DB 0FFH,066H,0FFH
		DB 0FFH,000H,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,0FBH
		DB 0F5H,0ECH,0DFH
		DB 0B6H,06DH,0DBH,0F7H,06FH
		DB 05FH,0BFH,0FFH
		DB 0FFH,0FFH,081H,0B5H,0BDH
		DB 0BDH,0B5H,0B5H
		DB 0B5H,0B5H,0BDH,0BDH,0B5H
		DB 081H,0FFH,0FFH
		DB 0FFH,0FFH,0F7H,0C9H,0BEH
		DB 0D5H,0E3H,0C9H
		DB 0BEH,0D5H,0E3H,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0E3H,0D5H,0BEH
		DB 0C9H,0E3H,0D5H
		DB 0BEH,0C9H,0F7H,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0F7H,0C9H,0BEH
		DB 0D5H,0E3H,0C9H
		DB 0BEH,0D5H,0E3H,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0E3H,095H,0BEH
		DB 0C9H,0E3H,0D5H
		DB 0BEH,0C9H,0F7H,0FFH,0FFH
		DB 0FFH,0FFH,0FFH

CDATA: ; c1229
; c1230
; c1231
		DB 01FH,01FH,01FH,01FH,01FH
		DB 01FH,01FH,01FH
		DB 01FH,01FH,01FH,000H,000H
		DB 000H,000H,000H
		DB 01FH,011H,019H,015H,011H
		DB 011H,011H,015H
		DB 013H,011H,01FH,000H,000H
		DB 000H,000H,000H
		DB 01BH,01BH,01BH,018H,01BH
		DB 003H,01BH,01BH
		DB 018H,01BH,01BH,000H,000H
		DB 000H,000H,000H
		DB 010H,010H,010H,010H,010H
		DB 010H,010H,010H
		DB 010H,010H,010H,010H,010H
		DB 000H,000H,000H
		DB 000H,000H,000H,018H,064H
		DB 01EH,064H,018H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,003H,064H
		DB 01EH,064H,018H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,090H,048H
		DB 0B8H,04CH,010H
		DB 020H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,018H,064H
		DB 01EH,064H,003H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 00CH,012H,021H,021H,021H
		DB 022H,012H,021H
		DB 021H,021H,012H,00CH,000H
		DB 000H,000H,000H
		DB 01FH,01DH,01DH,01DH,01DH
		DB 01DH,01DH,01DH
		DB 01FH,01DH,01FH,000H,000H
		DB 000H,000H,000H
		DB 01FH,019H,019H,01DH,019H
		DB 019H,019H,01DH
		DB 01BH,019H,01FH,000H,000H
		DB 000H,000H,000H
		DB 01FH,01FH,01FH,01FH,017H
		DB 017H,017H,01FH
		DB 01FH,01FH,01FH,000H,000H
		DB 000H,000H,000H
		DB 01FH,01FH,01FH,017H,01BH
		DB 013H,01BH,017H
		DB 01FH,01FH,01FH,000H,000H
		DB 000H,000H,000H
		DB 01FH,01FH,01FH,013H,015H
		DB 019H,015H,013H
		DB 01FH,01FH,01FH,000H,000H
		DB 000H,000H,000H
		DB 01FH,01FH,01FH,019H,012H
		DB 014H,012H,019H
		DB 01FH,01FH,01FH,000H,000H
		DB 000H,000H,000H
		DB 01FH,01FH,017H,019H,012H
		DB 014H,012H,019H
		DB 017H,01FH,01FH,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,018H,034H
		DB 01AH,00CH,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,00EH,00AH
		DB 00AH,00EH,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,00CH,01AH
		DB 034H,018H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,03EH,032H
		DB 03EH,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,006H,00AH
		DB 00CH,010H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,010H,00CH
		DB 00AH,006H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,008H,030H
		DB 050H,060H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,060H,050H
		DB 030H,008H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,030H,030H
		DB 03EH,030H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,030H
		DB 03EH,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,030H
		DB 03EH,030H,030H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,03EH
		DB 030H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,00EH,008H,00EH
		DB 018H,030H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,070H,040H,070H
		DB 018H,00CH,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,00CH,018H
		DB 070H,010H,070H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,030H,018H,00EH
		DB 002H,00EH,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 00CH,00CH,010H
		DB 060H,060H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 066H,07EH,066H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,060H
		DB 060H,010H,00CH
		DB 00CH,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,01CH
		DB 01CH,01CH,008H
		DB 008H,01CH,01CH,01CH,000H
		DB 000H,000H,000H
		DB 000H,000H,040H,060H,0F0H
		DB 0D8H,06CH,036H
		DB 01FH,00CH,004H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 0FFH,066H,0FFH
		DB 0FFH,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 004H,00CH,01FH
		DB 036H,06CH,0D8H,0F0H,060H
		DB 040H,000H,000H
		DB 000H,000H,000H,034H,03CH
		DB 03CH,034H,034H
		DB 034H,034H,03CH,03CH,034H
		DB 000H,000H,000H
		DB 000H,000H,000H,008H,03EH
		DB 014H,000H,008H
		DB 03EH,014H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,014H,03EH
		DB 008H,000H,014H
		DB 03EH,008H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,008H,03EH
		DB 014H,000H,008H
		DB 03EH,014H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,014H,03EH
		DB 008H,000H,014H
		DB 03EH,008H,000H,000H,000H
		DB 000H,000H,000H
		DB 01BH,01BH,01BH,018H,01BH
		DB 003H,01BH,01BH
		DB 018H,01BH,01BH,000H,000H
		DB 000H,000H,000H
		DB 01FH,015H,015H,015H,015H
		DB 01FH,015H,015H
		DB 015H,015H,01FH,000H,000H
		DB 000H,000H,000H
		DB 03FH,024H,036H,03FH,021H
		DB 02DH,021H,03FH
		DB 024H,036H,03FH,000H,000H
		DB 000H,000H,000H
		DB 03FH,029H,03DH,03FH,015H
		DB 015H,015H,03FH
		DB 029H,03DH,03FH,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,00EH,01FH
		DB 011H,015H,01DH
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,01EH,009H
		DB 009H,01FH,01EH
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,01FH,002H
		DB 004H,002H,01FH
		DB 01FH,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,01FH,01FH
		DB 015H,015H,011H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,00EH,01FH
		DB 011H,011H,00EH
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,007H,00FH
		DB 018H,00FH,007H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,01FH,01FH
		DB 015H,015H,011H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,01FH,01FH
		DB 009H,01FH,016H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,01FH,01FH
		DB 009H,01FH,016H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,01FH,01FH
		DB 015H,015H,015H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,01EH,009H
		DB 009H,01FH,01EH
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,01FH,01FH
		DB 011H,011H,00EH
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,001H,003H
		DB 01EH,01EH,003H
		DB 001H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,017H,003H
		DB 000H,017H,003H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,0C0H,026H
		DB 078H,026H,0C0H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H

; c1232

; c1233
		DB 0FFH,081H,081H,09DH,0BFH
		DB 0A3H,0A3H,0A3H
		DB 081H,0BDH,093H,093H,0BFH
		DB 000H,000H,000H
		DB 0BDH,081H,0B3H,0BBH,0ABH
		DB 0AFH,0A7H,081H
		DB 0BFH,0BFH,081H,09DH,0A3H
		DB 000H,000H,000H
		DB 0A3H,0BFH,09DH,081H,0BDH
		DB 0A5H,0ADH,0ADH
		DB 0ADH,0ADH,0BDH,081H,0FFH
		DB 000H,000H,000H
		DB 0FFH,0C1H,0C9H,0DDH,0C9H
		DB 0E5H,0EFH,0EBH
		DB 0FBH,0D3H,0C1H,0FFH,0FFH
		DB 000H,000H,000H
		DB 0C9H,0FFH,0FFH,0C1H,0FDH
		DB 0FFH,0D3H,0FFH
		DB 0FDH,0C1H,0FFH,0FFH,0D3H
		DB 000H,000H,000H
		DB 0FFH,0EDH,0C1H,0FFH,0FFH
		DB 0EBH,0FFH,0D5H
		DB 0C1H,0C9H,0DDH,0C9H,0FFH
		DB 000H,000H,000H
		DB 0FFH,081H,0A5H,0B7H,0B3H
		DB 0ABH,0AFH,0A5H
		DB 081H,0AFH,0AFH,0ABH,0ABH
		DB 000H,000H,000H
		DB 0BBH,093H,081H,09DH,0BFH
		DB 0ABH,0ABH,0BBH
		DB 091H,081H,0BFH,0BFH,089H
		DB 000H,000H,000H
		DB 09DH,0B7H,0A3H,081H,0BFH
		DB 0BFH,0ABH,0ABH
		DB 0BFH,095H,081H,081H,0FFH
		DB 000H,000H,000H
		DB 0FFH,0FFH,059H,0CDH,045H
		DB 0D1H,059H,0CDH
		DB 077H,0F7H,05BH,0C9H,045H
		DB 000H,000H,000H
		DB 0D1H,05BH,07FH,055H,0ABH
		DB 0D5H,0ABH,0FDH
		DB 0E7H,0FFH,0FFH,0C7H,087H
		DB 000H,000H,000H
		DB 01FH,047H,003H,09FH,0CDH
		DB 079H,0FBH,0FFH
		DB 0FBH,055H,0ABH,055H,0FFH
		DB 000H,000H,000H
		DB 0FFH,0FAH,095H,09AH,0CDH
		DB 0CAH,0EDH,0EEH
		DB 0F5H,0F6H,0FFH,0FEH,0FFH
		DB 000H,000H,000H
		DB 0FEH,0FCH,0FEH,0FCH,0FEH
		DB 0FFH,0F6H,0CCH
		DB 0FEH,0FEH,0FFH,0BDH,098H
		DB 000H,000H,000H
		DB 09DH,0BFH,0BFH,09FH,098H
		DB 080H,080H,0FFH
		DB 0ABH,0D5H,0AAH,0D5H,0FFH
		DB 000H,000H,000H
CDAT1:
 		DB 9
		DB 0FFH,055H,000H,000H,000H
		DB 000H,000H,055H
		DB 0FFH,000H,000H,000H,000H
		DB 000H,000H,000H
DDAT1:
  		DB 9
		DB 000H,000H,000H,00AH,007H
		DB 00AH,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
; c1234
TITG:   ; c1235
; c1236
; c1237
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 0FEH,002H,002H,0F2H,0F2H
		DB 002H,006H,0F8H
		DB 040H,040H,0C0H,0C0H,040H
		DB 040H,0F8H,048H
		DB 048H,0FEH,002H,002H,0FEH
		DB 0C0H,040H,070H
		DB 07EH,002H,002H,0FEH,04CH
		DB 04CH,0FCH,07CH
		DB 050H,050H,070H,050H,0D0H
		DB 0F0H,0D0H,05EH
		DB 07EH,05CH,05CH,07CH,0D0H
		DB 090H,040H,040H
		DB 040H,040H,000H,000H,0FEH
		DB 002H,002H,0F2H
		DB 0F2H,002H,006H,0FCH,0C0H
		DB 040H,040H,040H
		DB 040H,0C0H,0C0H,0C0H,040H
		DB 040H,040H,040H
		DB 0E0H,0E0H,0E0H,060H,060H
		DB 060H,040H,0C0H
		DB 0C0H,040H,040H,0C0H,0C0H
		DB 040H,040H,0C0H
		DB 0C0H,040H,040H,040H,040H
		DB 0C0H,080H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,020H,020H
		DB 020H,020H,020H,020H,020H
		DB 020H,020H,020H
		DB 0FFH,000H,000H,07CH,07CH
		DB 000H,002H,0FFH
		DB 000H,000H,07FH,07FH,000H
		DB 000H,0FFH,000H
		DB 000H,0FFH,000H,000H,0FFH
		DB 000H,000H,07EH
		DB 07EH,000H,000H,0FFH,000H
		DB 000H,0FFH,000H
		DB 000H,0FEH,0FEH,000H,000H
		DB 0FFH,000H,000H
		DB 07EH,07EH,000H,000H,0FFH
		DB 024H,055H,055H
		DB 055H,055H,000H,000H,0FFH
		DB 000H,000H,0F8H
		DB 0F8H,000H,006H,0FFH,000H
		DB 000H,066H,066H
		DB 020H,020H,0FFH,030H,020H
		DB 066H,066H,004H
		DB 00CH,0FFH,000H,000H,07EH
		DB 07EH,018H,018H
		DB 0FFH,000H,000H,07FH,07FH
		DB 000H,000H,0FFH
		DB 000H,000H,066H,066H,020H
		DB 020H,0FFH,004H
		DB 004H,004H,004H,004H,004H
		DB 004H,004H,004H
		DB 004H,004H,004H,004H,004H
		DB 004H,004H,004H
		DB 004H,004H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,020H,020H,020H,020H
		DB 020H,020H,020H
		DB 020H,020H,020H,020H,020H
		DB 020H,020H,020H
		DB 020H,020H,020H,0A0H,0A0H
		DB 0A0H,020H,020H
		DB 020H,020H,020H,020H,020H
		DB 000H,000H,000H
		DB 007H,006H,006H,006H,006H
		DB 006H,007H,047H
		DB 047H,046H,006H,027H,086H
		DB 006H,007H,046H
		DB 046H,047H,046H,046H,047H
		DB 047H,006H,0FEH
		DB 0FEH,0FEH,0FEH,0FFH,0FEH
		DB 04EH,04FH,0FEH
		DB 04EH,04FH,0FFH,04EH,04EH
		DB 0FFH,073H,062H
		DB 0E6H,066H,060H,0F0H,07FH
		DB 049H,055H,055H
		DB 055H,055H,000H,0AAH,0AFH
		DB 0A6H,0C6H,0AFH
		DB 087H,0C6H,0EEH,0EFH,0AFH
		DB 0AEH,0FEH,0FEH
		DB 046H,0FFH,0FFH,027H,0FEH
		DB 0FEH,016H,0FEH
		DB 0FFH,08FH,0FFH,006H,0FEH
		DB 0FEH,006H,007H
		DB 007H,037H,0FEH,006H,0AFH
		DB 0AEH,0AEH,0AFH
		DB 0AFH,0AEH,0AEH,0AEH,0AEH
		DB 0AFH,007H,0C0H
		DB 0E0H,080H,080H,080H,0C0H
		DB 080H,080H,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 000H,000H,040H,040H,040H
		DB 040H,040H,040H
		DB 040H,040H,040H,040H,040H
		DB 040H,040H,040H
		DB 000H,000H,000H,000H,000H
		DB 000H,011H,044H
		DB 044H,000H,000H,000H,050H
		DB 050H,050H,000H
		DB 000H,000H,000H,0AAH,002H
		DB 052H,050H,050H
		DB 050H,050H,051H,050H,000H
		DB 0FCH,0DCH,0DCH
		DB 0FCH,0DCH,0FCH,0F8H,090H
		DB 093H,093H,093H
		DB 093H,093H,090H,092H,090H
		DB 090H,090H,095H
		DB 0F5H,055H,055H,055H,055H
		DB 055H,000H,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 092H,092H,0FFH
		DB 092H,092H,0FFH,092H,092H
		DB 0FFH,092H,092H
		DB 0FFH,092H,092H,0FFH,092H
		DB 092H,055H,055H
		DB 055H,055H,0FEH,0FEH,0AAH
		DB 0AAH,0AAH,0AAH
		DB 0AAH,000H,000H,000H,000H
		DB 000H,0FFH,0FFH
		DB 044H,0FFH,0FFH,022H,0FFH
		DB 0FFH,091H,0FFH
		DB 0FFH,048H,0FFH,000H,0FFH
		DB 0FFH,000H,000H
		DB 000H,033H,0FFH,000H,0AAH
		DB 0AAH,0AAH,0AAH
		DB 0AAH,0AAH,0AAH,0AAH,0AAH
		DB 0AAH,000H,0AAH
		DB 0AAH,0AAH,0AAH,0AAH,0AAH
		DB 0AAH,0AAH,000H
		DB 000H,050H,050H,050H,058H
		DB 050H,010H,018H
		DB 010H,000H,000H,000H,000H
		DB 000H,050H,010H
		DB 000H,040H,000H,000H,0A8H
		DB 002H,000H,000H
TITH:   ; c1238
; c1239
; c1240
		DB 0FEH,0FEH,0FEH,0FEH,0FEH
		DB 0FEH,0FEH,0FEH
		DB 0FEH,0FEH,0FEH,0FEH,0FEH
		DB 0FEH,0FEH,0FEH
		DB 0FEH,0FEH,0FEH,0FEH,0FEH
		DB 0FEH,0FEH,0FEH
		DB 0FEH,0FEH,0FEH,0FEH,0FEH
		DB 0FEH,07EH,07EH
		DB 0FEH,002H,002H,0F2H,0F2H
		DB 002H,002H,0FEH
		DB 07EH,07EH,0FEH,0FEH,07EH
		DB 07EH,0FEH,04EH
		DB 04EH,0FEH,002H,002H,0FEH
		DB 07EH,07EH,05EH
		DB 07EH,002H,002H,0FEH,04EH
		DB 04EH,0FEH,05EH
		DB 07EH,07EH,05EH,07EH,0FEH
		DB 09EH,07EH,07FH
		DB 05FH,07EH,07EH,05EH,0DEH
		DB 09EH,0BEH,0BEH
		DB 0BEH,03EH,0FEH,0FEH,0FEH
		DB 002H,002H,0F2H
		DB 0F2H,002H,002H,0FEH,07EH
		DB 07EH,07EH,07EH
		DB 07EH,07EH,0FEH,07EH,07EH
		DB 07EH,07EH,07EH
		DB 07EH,0FEH,07EH,07EH,07EH
		DB 07EH,07EH,07EH
		DB 0FEH,07EH,07EH,0FEH,0FEH
		DB 07EH,07EH,0FEH
		DB 07EH,07EH,07EH,05EH,05EH
		DB 05EH,09EH,01EH
		DB 03EH,03EH,03EH,03EH,03EH
		DB 01EH,01EH,01EH
		DB 01EH,01EH,01EH,03EH,03EH
		DB 03EH,03EH,03EH
		DB 03EH,07EH,07EH,0FEH,0FEH
		DB 0FEH,0FEH,0FEH
		DB 0FEH,0FEH,0FEH,0FEH,0FEH
		DB 0FEH,0FEH,0FEH
		DB 03FH,03FH,03FH,03FH,07FH
		DB 0FFH,07FH,07FH
		DB 07FH,07FH,07FH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,0E7H
		DB 0E3H,0C3H,0D3H
		DB 0D1H,0D1H,0D8H,0D8H,0D0H
		DB 0D0H,0D0H,0D0H
		DB 0FFH,000H,000H,07CH,07CH
		DB 000H,000H,0FFH
		DB 000H,000H,07FH,07FH,000H
		DB 000H,0FFH,000H
		DB 000H,0FFH,000H,000H,0FFH
		DB 000H,000H,07EH
		DB 07EH,000H,000H,0FFH,000H
		DB 000H,0FFH,000H
		DB 000H,0FEH,0FEH,000H,000H
		DB 0FFH,000H,000H
		DB 07EH,07EH,000H,000H,0FFH
		DB 024H,0AAH,0AAH
		DB 0AAH,000H,0CFH,0CFH,0FFH
		DB 000H,000H,0F8H
		DB 0F8H,000H,002H,0FFH,000H
		DB 000H,066H,066H
		DB 020H,020H,0FFH,020H,020H
		DB 066H,066H,004H
		DB 004H,0FFH,000H,000H,07EH
		DB 07EH,018H,018H
		DB 0FFH,000H,000H,07FH,07FH
		DB 000H,000H,0FFH
		DB 000H,000H,066H,066H,020H
		DB 020H,0FFH,0FAH
		DB 0FAH,0FAH,0FBH,0FBH,0FBH
		DB 0FAH,0FAH,0FAH
		DB 0FAH,0FAH,0FBH,0FBH,0FAH
		DB 0FAH,0FAH,0FAH
		DB 0FAH,0FAH,0FCH,0FCH,0FEH
		DB 0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 000H,0D0H,0D0H,0D0H,0D8H
		DB 05CH,058H,050H
		DB 050H,050H,0D0H,0D0H,0D0H
		DB 0D1H,0D1H,0D9H
		DB 0DBH,0D3H,0D3H,053H,053H
		DB 057H,0C7H,0C7H
		DB 0C7H,0D7H,0D7H,0D7H,0C7H
		DB 0EFH,0FFH,0FFH
		DB 0FFH,0FEH,0FEH,0FEH,0FEH
		DB 0FEH,0FEH,0BFH
		DB 0BEH,0BEH,0FEH,09EH,03EH
		DB 0BEH,0FFH,09EH
		DB 09EH,09FH,01EH,01EH,01FH
		DB 09EH,0FEH,04EH
		DB 04EH,0FEH,04EH,04FH,0FEH
		DB 0DEH,0DFH,04EH
		DB 0DEH,0DFH,04FH,0DEH,0DEH
		DB 07FH,0F2H,0E2H
		DB 066H,0E6H,0E0H,070H,07FH
		DB 049H,0AAH,0AAH
		DB 0AAH,000H,0FFH,055H,057H
		DB 05EH,0FEH,057H
		DB 0FFH,0FEH,0F6H,0D7H,056H
		DB 056H,046H,046H
		DB 0FEH,026H,027H,0FEH,016H
		DB 016H,0FEH,08EH
		DB 08EH,0FFH,0FEH,0FEH,066H
		DB 0FEH,0FEH,0FEH
		DB 007H,0CEH,0FEH,0FEH,016H
		DB 016H,016H,007H
		DB 046H,046H,056H,056H,046H
		DB 056H,007H,03FH
		DB 01FH,07FH,07FH,07FH,03FH
		DB 07FH,07FH,0FFH
		DB 0FFH,0FFH,0FFH,0DFH,0DFH
		DB 0CFH,0CFH,0C7H
		DB 0C7H,0C7H,0A7H,0A7H,0A3H
		DB 0A3H,0A3H,0A1H
		DB 0A1H,083H,087H,083H,0A3H
		DB 0A1H,0A0H,0A0H
		DB 000H,0FFH,0FFH,0FFH,0FFH
		DB 055H,044H,011H
		DB 011H,055H,0FFH,0FFH,00FH
		DB 00FH,0AFH,0FFH
		DB 0FFH,0FFH,0FFH,055H,0FDH
		DB 0A5H,027H,007H
		DB 007H,085H,084H,0A4H,0FCH
		DB 000H,010H,011H
		DB 000H,010H,005H,0FBH,023H
		DB 023H,023H,020H
		DB 020H,020H,023H,020H,022H
		DB 022H,023H,022H
		DB 0F8H,0AAH,0A2H,022H,022H
		DB 02AH,0FFH,092H
		DB 092H,0FFH,092H,092H,0FFH
		DB 0B6H,0B6H,092H
		DB 0B6H,0B6H,092H,0B6H,0B6H
		DB 092H,0B6H,0B6H
		DB 092H,0B6H,0B6H,092H,092H
		DB 092H,0AAH,0AAH
		DB 0AAH,000H,0AAH,0AAH,054H
		DB 054H,054H,054H
		DB 054H,0AAH,0AAH,0AAH,0AAH
		DB 0FFH,044H,044H
		DB 0FFH,022H,022H,0FFH,091H
		DB 091H,0FFH,048H
		DB 048H,0FFH,0FFH,0FFH,066H
		DB 0FFH,0FFH,0FFH
		DB 000H,0CCH,0FFH,0FFH,045H
		DB 045H,045H,015H
		DB 014H,010H,010H,015H,051H
		DB 055H,000H,055H
		DB 055H,055H,055H,000H,055H
		DB 000H,000H,0FFH
		DB 0FDH,0ACH,02CH,02DH,004H
		DB 08CH,04CH,065H
		DB 04FH,0FFH,0FFH,0FFH,0FFH
		DB 057H,00FH,04FH
		DB 05FH,017H,0FFH,0FFH,003H
		DB 0A9H,000H,000H
; c1241
TITC2:
; c1242
; c1243
		DB 0FFH,043H,043H,043H,067H
		DB 04FH,05FH,05FH
		DB 04FH,047H,047H,047H,067H
		DB 04FH,04FH,05FH
		DB 0BFH,0BFH,0FFH,07FH,0BFH
		DB 09FH,0AFH,0AFH
		DB 0BFH,0FFH,0F7H,0F7H,0F7H
		DB 0F7H,077H,0B7H
		DB 0C7H,007H,07FH,00FH,00FH
		DB 00FH,00FH,0FFH
		DB 00FH,0FFH,0EFH,0F7H,0FFH
		DB 00FH,0EFH,03FH
		DB 05FH,0BFH,0FFH,0FFH,0FFH
		DB 0CFH,0A7H,0A7H
		DB 0A7H,0B7H,0A7H,0AFH,0A7H
		DB 0A3H,0FFH,038H
		DB 07CH,0FEH,0E3H,0C3H,0C7H
		DB 067H,072H,0F8H
		DB 0FCH,0CCH,0FCH,07CH,038H
		DB 0F8H,0FCH,07CH
		DB 00CH,0FCH,0FCH,078H,030H
		DB 078H,0FCH,0ECH
		DB 0FCH,0FCH,07CH,0F8H,0FCH
		DB 07CH,008H,01CH
		DB 01CH,048H,0E8H,0FCH,0FCH
		DB 0FCH,0FCH,078H
		DB 07EH,0FFH,0FFH,0CCH,064H
		DB 020H,078H,0FCH
		DB 0FCH,0C0H,0F8H,0FCH,07CH
		DB 0F8H,0FCH,07CH
		DB 008H,01CH,01CH,048H,0E8H
		DB 0FCH,0FCH,0FCH
		DB 0FCH,078H,07EH,0FFH,0FFH
		DB 0CCH,064H,0A8H
		DB 0FEH,0FFH,0FDH,070H,0F8H
		DB 0FCH,0CCH,0FCH
		DB 07CH,038H,0F8H,0FCH,07CH
		DB 00CH,0FCH,0FCH
		DB 078H,090H,0F8H,0FCH,0FCH
		DB 0FCH,07CH,024H
		DB 0FFH,03BH,06FH,02FH,06BH
		DB 02FH,06BH,03FH
		DB 07FH,0EFH,0C7H,0CFH,0CFH
		DB 0DFH,0BFH,0EFH
		DB 077H,0FDH,0FEH,0FBH,0F4H
		DB 0F6H,07DH,09CH
		DB 02EH,017H,09FH,0CFH,0F7H
		DB 03FH,00CH,0FFH
		DB 007H,084H,0B3H,0C2H,0F2H
		DB 052H,035H,034H
		DB 026H,067H,02BH,00BH,00BH
		DB 0B0H,097H,0B0H
		DB 0D0H,0EBH,0F7H,0FBH,0FBH
		DB 0D9H,0ADH,0ABH
		DB 0E9H,0E9H,0E1H,02BH,0A3H
		DB 037H,0FFH,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,080H,000H
		DB 000H,080H,07CH,03EH,094H
		DB 07CH,0BEH,0B8H
		DB 05CH,03AH,01CH,03CH,0DEH
		DB 0B8H,0DCH,03CH
		DB 09EH,000H,080H,000H,09CH
		DB 06EH,03CH,08EH
		DB 0B8H,05CH,03AH,01CH,07CH
		DB 0FEH,07CH,03EH
		DB 000H,080H,000H,0C8H,074H
		DB 02EH,092H,0F8H
		DB 03CH,07AH,0BCH,0BCH,05EH
		DB 0BCH,01EH,07CH
		DB 0FEH,06EH,022H,080H,000H
		DB 07CH,0BEH,014H
		DB 008H,07CH,0BEH,07CH,03EH
		DB 0E4H,0F6H,06EH
		DB 026H,03CH,05EH,03CH,09EH
		DB 07CH,03EH,0FCH
		DB 03EH,0B8H,05CH,0BAH,09CH
		DB 080H,000H,080H
		DB 080H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 0FFH,000H,055H,000H,055H
		DB 000H,055H,000H
		DB 055H,0FFH,0A9H,020H,029H
		DB 0A8H,001H,092H
		DB 007H,097H,0CDH,0FFH,0FFH
		DB 0FBH,0FEH,0FFH
		DB 07CH,0F9H,031H,050H,060H
		DB 066H,0AAH,0E7H
		DB 0F4H,0FBH,077H,0EFH,0E3H
		DB 002H,086H,0A4H
		DB 0D8H,040H,094H,0D9H,0F4H
		DB 0E3H,080H,041H
		DB 0C1H,081H,0FFH,0EAH,0AEH
		DB 0AFH,0BBH,0AAH
		DB 0FFH,055H,0AAH,000H,080H
		DB 082H,0FFH,000H
		DB 000H,000H,000H,000H,01EH
		DB 00FH,05EH,0EFH
		DB 0FFH,02FH,0C5H,0FFH,0CFH
		DB 0FFH,09FH,0CEH
		DB 0A7H,0C0H,0C0H,0E1H,05FH
		DB 0CFH,0E0H,0DFH
		DB 0EFH,0DFH,06FH,01FH,00FH
		DB 0D2H,07DH,0CBH
		DB 064H,080H,0C0H,0A0H,0DFH
		DB 0CFH,0E5H,0C2H
		DB 0FFH,00FH,01FH,00FH,0D2H
		DB 0FDH,0EBH,024H
		DB 092H,0DDH,0ABH,0C4H,0DFH
		DB 0EFH,0AEH,057H
		DB 00EH,007H,01FH,0CFH,0E5H
		DB 0BFH,04FH,0C0H
		DB 0E0H,01FH,08FH,0D2H,0BDH
		DB 0CBH,0C4H,060H
		DB 0C0H,060H,0CEH,0F7H,0CEH
		DB 0E7H,047H,0DBH
		DB 0EFH,083H,0DFH,07FH,0BFH
		DB 0CAH,0FFH,0CFH
		DB 0F6H,00BH,000H,000H,000H
		DB 000H,000H,000H
		DB 0FFH,080H,0D5H,080H,0D5H
		DB 080H,0D5H,080H
		DB 0D5H,0FFH,0A2H,0AAH,08AH
		DB 0A8H,080H,0C4H
		DB 0FEH,087H,081H,0C0H,0C2H
		DB 0EDH,093H,09FH
		DB 0EFH,09EH,089H,0E8H,0DEH
		DB 0AFH,0D5H,0F8H
		DB 080H,0C3H,0FCH,0E0H,0FCH
		DB 0FEH,0FEH,0FEH
		DB 0FFH,0FFH,0FFH,0FFH,0FFH
		DB 0FFH,0FFH,0FFH
		DB 0BFH,0FDH,0FFH,0FEH,08EH
		DB 0FFH,0EEH,0AAH
		DB 0FFH,0D5H,0AAH,080H,0AAH
		DB 0AAH,0FFH,000H
		DB 070H,088H,0A8H,0A8H,070H
		DB 000H,028H,03FH
		DB 01BH,000H,017H,0BBH,0AFH
		DB 0FBH,077H,003H
		DB 077H,04BH,0FFH,0FBH,041H
		DB 007H,003H,0FFH
		DB 0FBH,0AEH,0FBH,050H,000H
		DB 078H,0FFH,083H
		DB 0F8H,07BH,005H,073H,0F9H
		DB 08FH,0EFH,0EFH
		DB 003H,090H,0B8H,0A8H,0EFH
		DB 04BH,000H,070H
		DB 0FBH,08DH,0FBH,071H,007H
		DB 0FBH,0FEH,02BH
		DB 028H,008H,000H,00FH,00BH
		DB 0F8H,0F8H,00FH
		DB 00FH,002H,057H,0FBH,0AFH
		DB 0D3H,0A0H,007H
		DB 0FBH,0F8H,02FH,02BH,00FH
		DB 003H,079H,0FFH
		DB 083H,0FBH,07DH,007H,0FBH
		DB 0FDH,022H,0FDH
		DB 0DAH,000H,078H,0F8H,080H
		DB 0F8H,078H,000H
TITC1:
; c1244
; c1245
		DB 0FFH,081H,081H,081H,081H
		DB 081H,081H,081H
		DB 081H,081H,081H,081H,081H
		DB 081H,081H,081H
		DB 001H,001H,001H,081H,0C1H
		DB 061H,071H,071H
		DB 071H,071H,0F9H,0F9H,0F9H
		DB 0F9H,0F9H,079H
		DB 039H,019H,089H,089H,089H
		DB 089H,089H,009H
		DB 009H,009H,019H,019H,011H
		DB 0F1H,031H,0E1H
		DB 0E1H,0C1H,001H,001H,001H
		DB 001H,041H,041H
		DB 041H,041H,041H,041H,041H
		DB 041H,0FFH,000H
		DB 01CH,03EH,063H,041H,041H
		DB 063H,022H,038H
		DB 07CH,044H,044H,07CH,038H
		DB 000H,07CH,07CH
		DB 004H,004H,07CH,078H,000H
		DB 018H,0BCH,0A4H
		DB 0A4H,0FCH,07CH,000H,07CH
		DB 07CH,008H,004H
		DB 00CH,008H,020H,074H,054H
		DB 054H,07CH,078H
		DB 004H,03FH,07FH,044H,064H
		DB 020H,000H,03CH
		DB 07CH,040H,040H,07CH,07CH
		DB 000H,07CH,07CH
		DB 008H,004H,00CH,008H,020H
		DB 074H,054H,054H
		DB 07CH,078H,004H,03FH,07FH
		DB 044H,064H,020H
		DB 044H,07DH,07DH,040H,038H
		DB 07CH,044H,044H
		DB 07CH,038H,000H,07CH,07CH
		DB 004H,004H,07CH
		DB 078H,000H,048H,05CH,05CH
		DB 074H,074H,024H
		DB 0FFH,0EEH,0AAH,0AAH,0AEH
		DB 0EAH,0AEH,0BAH
		DB 0BAH,0EEH,000H,000H,000H
		DB 000H,0C0H,0F0H
		DB 0F8H,0FEH,0FFH,0FDH,0FEH
		DB 07BH,0F9H,0FCH
		DB 05EH,0AFH,0D7H,05FH,05FH
		DB 0C7H,0FFH,0FCH
		DB 0FCH,07FH,04EH,03EH,0FEH
		DB 06EH,04EH,04FH
		DB 05CH,01CH,01CH,03CH,05CH
		DB 00FH,0F8H,07FH
		DB 03FH,037H,0ACH,0ACH,0A8H
		DB 0B0H,0D0H,0D0H
		DB 0D0H,0D0H,090H,090H,010H
		DB 000H,0FFH,000H
		DB 000H,000H,000H,000H,000H
		DB 000H,080H,000H
		DB 000H,080H,000H,03EH,084H
		DB 008H,0BEH,080H
		DB 01CH,022H,01CH,000H,09EH
		DB 0A0H,09CH,020H
		DB 09EH,000H,080H,000H,080H
		DB 00EH,030H,08EH
		DB 080H,01CH,022H,01CH,000H
		DB 0BEH,020H,03EH
		DB 000H,080H,000H,080H,024H
		DB 02AH,092H,080H
		DB 03CH,012H,0BCH,080H,01EH
		DB 0A0H,01EH,000H
		DB 0BEH,02AH,022H,080H,000H
		DB 000H,0BEH,004H
		DB 008H,004H,0BEH,000H,03EH
		DB 080H,0B2H,02AH
		DB 026H,000H,01EH,020H,09EH
		DB 000H,03EH,088H
		DB 03EH,080H,01CH,0A2H,09CH
		DB 080H,000H,080H
		DB 080H,000H,000H,000H,000H
		DB 000H,000H,000H
		DB 0FFH,0FFH,0AAH,0AAH,0AAH
		DB 0FFH,0AAH,0AAH
		DB 0AAH,0FFH,054H,056H,056H
		DB 054H,0FFH,049H
		DB 0FFH,0CBH,0FFH,0CFH,0E7H
		DB 0EEH,0FFH,0FFH
		DB 0FFH,078H,098H,031H,031H
		DB 0A1H,0F5H,0BFH
		DB 0FFH,0FCH,0F8H,076H,076H
		DB 0C6H,0A4H,0A0H
		DB 0A0H,098H,058H,05EH,05FH
		DB 05FH,07FH,0FEH
		DB 0FEH,0FEH,0FFH,0BFH,0FBH
		DB 0FAH,0EEH,0FFH
		DB 0FFH,0AAH,0FFH,0FFH,040H
		DB 040H,0FFH,000H
		DB 000H,000H,000H,000H,000H
		DB 00FH,004H,02FH
		DB 0E0H,02FH,001H,0E2H,08FH
		DB 0E0H,00FH,0C8H
		DB 027H,0C0H,000H,0E0H,040H
		DB 08FH,0E0H,000H
		DB 0EFH,082H,06FH,000H,00FH
		DB 000H,069H,08AH
		DB 064H,000H,0C0H,020H,0C0H
		DB 00FH,0E1H,002H
		DB 0E1H,00FH,000H,00FH,000H
		DB 0E9H,0AAH,024H
		DB 000H,0C9H,02AH,0C4H,000H
		DB 0EFH,0A0H,047H
		DB 008H,007H,000H,00FH,0E1H
		DB 0A2H,04FH,000H
		DB 0E0H,000H,00FH,0C0H,029H
		DB 0CAH,004H,060H
		DB 080H,060H,000H,0E7H,008H
		DB 0E7H,040H,083H
		DB 0ECH,003H,0C0H,02FH,0AAH
		DB 00AH,0E0H,00FH
		DB 0E4H,00BH,000H,000H,000H
		DB 000H,000H,000H
		DB 0FFH,0FFH,0AAH,0AAH,0AAH
		DB 0FFH,0AAH,0AAH
		DB 0AAH,0FFH,0D5H,0D5H,0D5H
		DB 0D5H,0FFH,0F2H
		DB 09FH,081H,080H,081H,0C1H
		DB 0A3H,0BFH,0BFH
		DB 0FFH,09FH,08AH,08BH,0AFH
		DB 0D7H,0ADH,0F9H
		DB 081H,081H,082H,09CH,0F8H
		DB 080H,080H,080H
		DB 080H,080H,0C0H,0B8H,088H
		DB 080H,080H,080H
		DB 0C3H,0FEH,081H,083H,0FFH
		DB 0FAH,0BBH,0FFH
		DB 0FFH,0AAH,0FFH,0FFH,0D5H
		DB 0D5H,0FFH,000H
		DB 070H,088H,0A8H,0A8H,070H
		DB 000H,028H,038H
		DB 01BH,000H,010H,0BBH,0A8H
		DB 0FBH,070H,003H
		DB 071H,04BH,0F8H,0FBH,040H
		DB 000H,003H,0F8H
		DB 0FBH,0A8H,0FBH,050H,000H
		DB 078H,0F8H,083H
		DB 0F8H,078H,001H,072H,0F9H
		DB 088H,0EBH,0EAH
		DB 003H,090H,0B8H,0A8H,0E8H
		DB 04BH,000H,070H
		DB 0F8H,089H,0FAH,071H,000H
		DB 0FBH,0F8H,02BH
		DB 028H,008H,000H,008H,00BH
		DB 0F8H,0F8H,008H
		DB 00BH,002H,050H,0FBH,0A9H
		DB 0D3H,0A0H,000H
		DB 0FBH,0F8H,028H,02BH,008H
		DB 003H,078H,0F8H
		DB 083H,0F8H,079H,002H,0FBH
		DB 0F8H,022H,0F8H
		DB 0DAH,000H,078H,0F8H,080H
		DB 0F8H,078H,000H
DTBL:
        DB 2,0,0,0,0
        DB 0,0,2
        DB 2,0,0,0,0
        DB 0,0,2
        DB 2,1,1,0,0
        DB 1,0,2
        DB 2,1,1,1,0
        DB 1,0,2
        DB 2,1,1,0,1
        DB 1,0,2
        DB 2,1,1,0,0
        DB 1,0,2
        DB 2,0,0,1,1
        DB 1,0,2
        DB 2,0,1,0,0
        DB 1,1,2
        DB 2,0,1,0,0
        DB 1,1,2
        DB 2,0,1,0,0
        DB 1,1,2
        DB 2,0,0,1,1
        DB 1,0,2
        DB 2,0,0,0,0
        DB 0,0,2
        DB 2,1,0,0,0
        DB 1,0,2
        DB 2,0,0,0,0
        DB 0,0,2
        DB 2,0,0,1,1
        DB 0,0,2
        DB 2,2,2,2,2
        DB 2,2,2
; c1246
PDAT0: DB 048H,0B2H,053H,043H,020H
    DB 0
PDAT2: DB 053H,043H,052H,020H,020H
    DB 0
PDAT4: DB 054H,049H,04DH,0B3H,020H
    DB 0
PDAT6: DB 046H,04CH,04FH,04FH,052H
    DB 020H,0
PDAT8: DB 052H,04FH,055H,04EH,044H
    DB 020H,020H,0B1H,020H,020H
    DB 0
; c1247
; c1248
ADAT0: DB 0B1H,04BH,045H,059H,020H
    DB 046H,055H,04EH,043H,054H
    DB 049H,04FH,04EH,0B1H,0
ADAT1: DB 020H,020H,020H,04CH,045H
    DB 046H,054H,020H,020H,020H
    DB 020H,020H,020H,020H,020H
    DB 020H,020H,020H,020H,020H
    DB 020H,052H,049H,047H,048H
    DB 054H,0
ADAT2: DB 020H,020H,0B8H,053H,048H
    DB 049H,046H,054H,0BAH,020H
    DB 020H,020H,020H,020H,0B5H
    DB 020H,020H,020H,020H,020H
    DB 020H,0B8H,020H,0BBH,020H
    DB 0BAH,0
ADAT3: DB 020H,020H,0B8H,043H,054H
    DB 052H,04CH,020H,0BAH,020H
    DB 020H,020H,0B7H,020H,0B1H
    DB 020H,0B6H,020H,020H,020H
    DB 020H,0B8H,020H,0B9H,020H
    DB 0BAH,0
ADAT4: DB 0B8H,042H,041H,053H,049H
    DB 043H,0BAH,020H,051H,055H
    DB 049H,054H,020H,020H,020H
    DB 0BCH,031H,039H,039H,034H
    DB 020H,042H,055H,047H,053H
    DB 04FH,046H,054H,0
; c1249
UFOC1:
        DB 14
		DB 000H,010H,018H,030H,03CH
		DB 014H,01EH,014H
   		DB 03CH,030H,018H,010H,000H
   		DB 000H,000H,000H
UFOD1:
        DB 14
		DB 0EFH,0D7H,09BH,0B3H,0BDH
		DB 095H,09EH,095H
		DB 0BDH,0B3H,09BH,0D7H,0EFH
		DB 0FFH,0FFH,0FFH
; c1250
VRAM1:   DS 192
         DS 192
         DS 192
         DS 192
         DS 192
         DS 192
; c1251
STBL:
VRAM2:   
         DS 192
         DS 192
         DS 192
QTBL:    DS  92
WTBL:    DS 100
; c1252
        END

