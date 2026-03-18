# Building Rescue SPK Event Analysis

Event-level interpretation of the SPK waveform data used in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015

Related routines:

- `SPK`   at `&BB642`
- `MPLAY` at `&BB36A`

This document identifies the likely in-game meaning of the SPK waveform entries
by combining source comments and call-site analysis.


# 1 Overview

Building Rescue contains a bitstream waveform playback routine named `SPK`.

Earlier analysis showed that two waveform entries are present:

- `MDAT3`
- `MDAT4`

Further inspection of the original source comments strongly suggests that these
entries are not generic sound effects, but named effects with specific roles in
the game.


# 2 Source Comment Decoding

The original source uses half-width Kana comments in CP932 encoding.

When decoded correctly, the relevant comments are:

    MDAT3: ; ｲﾃ
    MDAT4: ; ｶﾞﾝﾊﾞ

and at one call site:

    MV X,MDAT4 ; ｶﾞﾝﾊﾞﾚ

Interpretation:

- `ｲﾃ`     = "ite"     = "ouch"
- `ｶﾞﾝﾊﾞ`  = "ganba"   = beginning of "ganbare"
- `ｶﾞﾝﾊﾞﾚ` = "ganbare" = "Go for it!" / "Hang in there!"


# 3 MDAT3 Interpretation

`MDAT3` is almost certainly the "ouch" sound effect.

Call site:

    PUSHU X
    MV X,MDAT3
    CALLF SPK
    CALLF SCRDV1
    POPU X

This call appears inside collision / enemy-contact logic.

Nearby logic shows:

- comparison with player position
- object state changes
- visual update
- possible player damage or death transition

This is consistent with a short impact or pain-related sound effect.

Therefore the most likely meaning is:

- `MDAT3` = player hurt / hit / "ouch" effect


# 4 MDAT4 Interpretation

`MDAT4` is almost certainly the "ganbare" effect.

Call site:

    INC (TIME9)
    AND (TIME9),31
    JPNZ KC00
    MV X,MDAT4 ; ｶﾞﾝﾊﾞﾚ
    CALLF SPK
    RETF

This means:

- a timer-like variable (`TIME9`) is incremented
- the effect is triggered periodically when `(TIME9 & 31) == 0`

So this is not a one-shot collision effect.
It is a timed, repeating playback event.

Because the source explicitly labels it `ｶﾞﾝﾊﾞﾚ`, the most likely meaning is:

- a spoken-like encouragement effect
- probably used during the ending or demonstration scene


# 5 Relation to the Ending

The ending code clearly plays ordinary buzzer music through `MPLAY`.

Ending section:

    MV A,(MCNT)
    MV X,MUSICA
    ADD X,A
    ADD X,A
    MV Y,OTOTBL0
    CALLF MPLAY

This confirms that the ending uses the normal note-table music system.

Given the separate existence of `MDAT4 ; ｶﾞﾝﾊﾞﾚ`, the game likely combines:

- ordinary single-tone buzzer BGM through `MPLAY`
- bitstream voice-like effect through `SPK`

This matches the observed behaviour:

- monochrome pseudo-multilevel visual demo
- ordinary buzzer melody
- additional waveform effect


# 6 Why This Is Technically Interesting

This is not a simple "beep-only" game.

Building Rescue appears to combine three distinct presentation layers:

1. direct display effects
2. note-based buzzer music
3. bitstream waveform effect playback

That is unusually sophisticated for a pocket computer game of this class.

In particular, `MDAT4` suggests that the author was attempting a
voice-like or shout-like effect, not merely a noise burst.


# 7 Structural Summary

Confirmed interpretation:

- `MPLAY` / `PLAY2`
  - table-driven musical note playback
  - used for BGM and ordinary melodic effects

- `SPK` + `MDAT3`
  - short waveform effect
  - likely player hurt / hit sound
  - comment: `ｲﾃ`

- `SPK` + `MDAT4`
  - longer timed waveform effect
  - likely "ganbare" encouragement effect
  - comments: `ｶﾞﾝﾊﾞ`, `ｶﾞﾝﾊﾞﾚ`


# 8 Practical Conclusion

The SPK system should be understood as a waveform effect subsystem, not a music
driver.

Its known roles are now likely identifiable as:

- `MDAT3` = "ouch" effect
- `MDAT4` = "ganbare" effect

This makes Building Rescue an especially interesting example of expressive
1-bit sound design on the SC62015 platform.


# 9 Next Steps

Recommended next investigation steps:

- identify the exact scene where `MDAT4` is used
- check whether `MDAT4` is restricted to the ending/demo sequence
- expand `MDAT3` and `MDAT4` into visible bitstreams
- estimate playback timing from CPU loop structure
- attempt rough reconstruction of the waveform cadence


# 10 Conclusion

The source comments resolve the meaning of the two known SPK waveform entries.

The most likely interpretation is:

- `MDAT3` = "ouch"
- `MDAT4` = "ganbare"

This strongly supports the idea that Building Rescue includes not only buzzer
music, but also hand-authored voice-like waveform playback.
