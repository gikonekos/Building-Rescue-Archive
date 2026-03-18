# Building Rescue Ending Audio Analysis

Analysis of sound usage during the ending sequence in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015

Related routines:

- `MPLAY` at `&BB36A`
- `SPK`   at `&BB642`


# 1 Conclusion

The ending sequence does not appear to use the `SPK` waveform playback routine.

Instead, the ending uses the ordinary note-based sound system:

- `MPLAY`
- note tables such as `OTOTBL0`
- music data pointed to by `MUSICA`

This matches the observed behaviour:

- pseudo 4-level grayscale display
- ordinary single-tone buzzer BGM
- no PCM-like voice effect during the ending


# 2 Ending Loop Structure

The ending begins in the block marked:

    ;* ENDING

Relevant structure:

    CALLF VRAMCL2
    CALLF VRAMCL1
    CALLF VRAMPP

    MV Y,TITC1
    CALLF DTITG
    MV Y,TITC2
    CALLF DTITH
    MV (MCNT),0
    MV (MFLG),0

Main loop:

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

This clearly shows that the ending loop calls `MPLAY`, not `SPK`.


# 3 Meaning of the Ending Audio

The ending audio path is:

    MCNT
      →
    MUSICA
      →
    OTOTBL0
      →
    MPLAY
      →
    PLAY2

This is the ordinary tone-table playback system.

Therefore the ending BGM is not waveform playback.
It is standard buzzer note playback.


# 4 SPK Call Sites

Only two `CALLF SPK` call sites are currently confirmed in the source.


## 4.1 MDAT4

Call site:

    INC  (TIME9)
    AND (TIME9),31
    JPNZ KC00
    MV X,MDAT4 ; ｶﾞﾝﾊﾞﾚ
    CALLF SPK
    RETF

This is inside `KEYP`, the player / key handling logic.

So `MDAT4` is associated with gameplay-time processing, not the ending loop.


## 4.2 MDAT3

Call site:

    PUSHU X
    MV X,MDAT3
    CALLF SPK
    CALLF SCRDV1
    POPU X

This is also separate from the ending loop.

So `MDAT3` is likewise an in-game effect, not ending audio.


# 5 Correction of Earlier Hypothesis

An earlier interpretation suggested that `MDAT4 ; ｶﾞﾝﾊﾞﾚ` might be part of the
ending demonstration.

That interpretation should be corrected.

Current evidence indicates:

- `MDAT4` is not called from the ending loop
- the ending loop uses `MPLAY`
- `SPK` is used elsewhere in gameplay logic


# 6 What This Means

The game has two separate sound systems:

1. note-based playback
   - used in the ending BGM
   - implemented through `MPLAY` and `PLAY2`

2. waveform playback
   - used for selected in-game effects
   - implemented through `SPK`

So the ending presentation is best described as:

- pseudo grayscale display
- buzzer melody playback
- no SPK waveform effect


# 7 Technical Significance

This separation is important.

It shows that Building Rescue does not simply mix all sound through one routine.

Instead it uses:

- a musical note driver for structured BGM
- a waveform bitstream player for special effects

That is a sophisticated design for this hardware class.


# 8 Next Steps

Recommended next investigation steps:

- trace the full `KEYP` logic around `MDAT4`
- identify the exact gameplay situation where `ｶﾞﾝﾊﾞﾚ` is triggered
- identify the exact event associated with `MDAT3 ; ｲﾃ`
- trace `VRAMPP` / `VRAMPP2` during the ending to study grayscale timing


# 9 Final Summary

The ending sequence uses the ordinary buzzer music system and does not call
the `SPK` waveform routine.

Therefore the observed ending effect is:

- 4-level pseudo grayscale graphics
- ordinary single-tone buzzer BGM
- no PCM-like waveform playback during the ending
