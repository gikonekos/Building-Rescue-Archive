# Building Rescue SPK Waveform Analysis

Analysis of the SPK waveform data used in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015

Related routine:

- `SPK` at `&BB642`

This document summarizes the structure, size, and usage of the SPK waveform
data blocks.


# 1 Overview

Building Rescue contains a waveform playback routine named `SPK`.

Unlike the ordinary note-based player (`MPLAY` / `PLAY2`), `SPK` reads a packed
bitstream and outputs buzzer states one bit at a time.

This makes it a direct 1-bit waveform playback system.


# 2 SPK Playback Structure

The routine begins by reading:

- one byte: playback speed
- one word: waveform data length

Source structure:

    MV A,[X++]
    MV (SPEED),A
    MVW (WS),[X++]

Then each data byte is processed bit by bit:

    MV A,[X++]
    MV IL,8
    ROL A
    JRNC SPK05

If the bit is 1:

    OR (OTO),010H

If the bit is 0:

    AND (OTO),080H

A software delay is applied after every bit using `SPEED`.


# 3 Confirmed Wave Data Blocks

Two waveform data blocks are currently confirmed.


## 3.1 MDAT3

Header:

    DB 8
    DW (MDAT3E-MDAT3S)

Meaning:

- speed = 8
- waveform byte length = 199 bytes
- waveform bit length = 1592 bits


## 3.2 MDAT4

Header:

    DB 6
    DW (MDAT4E-MDAT4S)

Meaning:

- speed = 6
- waveform byte length = 464 bytes
- waveform bit length = 3712 bits


# 4 Relative Playback Size

The two SPK sounds are significantly different in size.

MDAT3:

- 199 bytes
- 1592 bits

MDAT4:

- 464 bytes
- 3712 bits

So `MDAT4` is about 2.33 times longer than `MDAT3` in raw waveform size.


# 5 Relative Playback Speed

The speed parameters differ:

- `MDAT3` = 8
- `MDAT4` = 6

Since `SPK` applies a delay loop after every bit, a smaller value produces
faster playback.

Therefore:

- `MDAT3` plays more slowly
- `MDAT4` plays more quickly

This means the perceived duration difference is not determined only by data
length. Speed must also be considered.


# 6 Approximate Playback Workload

Since one delay loop is executed for each waveform bit, the playback cost is
roughly proportional to:

    bit_count × speed

Estimated relative workload:

MDAT3:

    1592 × 8 = 12736

MDAT4:

    3712 × 6 = 22272

This suggests `MDAT4` is still substantially longer overall, even though its
speed parameter is smaller.


# 7 Confirmed Call Sites

At least two call sites are visible in the source.


## 7.1 MDAT4 call site

Source pattern:

    INC (TIME9)
    AND (TIME9),31
    JPNZ KC00
    MV X,MDAT4
    CALLF SPK
    RETF

This suggests `MDAT4` is triggered periodically under a timed condition.


## 7.2 MDAT3 call site

Source pattern:

    PUSHU X
    MV X,MDAT3
    CALLF SPK
    CALLF SCRDV1
    POPU X

This suggests `MDAT3` is tied to a specific game event rather than a periodic
timer condition.


# 8 Interpretation

The game uses `SPK` not as a musical note player, but as a dedicated sound
effect playback engine.

This means Building Rescue has at least two different sound systems:

1. note-table playback (`MPLAY` / `PLAY2`)
2. bitstream waveform playback (`SPK`)

This is technically advanced for a monochrome pocket computer with only a
1-bit buzzer.


# 9 What the Current Evidence Suggests

Based on the source:

- `MDAT3` is a shorter waveform effect
- `MDAT4` is a longer waveform effect
- `MDAT4` is triggered from a timing-related branch
- `MDAT3` is triggered from a discrete game event

The exact in-game meaning of each effect still needs to be confirmed.


# 10 Next Steps

Recommended next steps:

- identify the exact game events associated with `MDAT3`
- identify the exact timed condition associated with `MDAT4`
- expand `MDAT3` and `MDAT4` into visible bitstreams
- estimate real playback duration from CPU timing
- reconstruct approximate waveforms for inspection


# 11 Conclusion

The SPK routine in Building Rescue is a real 1-bit waveform playback system.

Confirmed waveform entries:

- `MDAT3` = 199 bytes, speed 8
- `MDAT4` = 464 bytes, speed 6

This shows that the game contains hand-authored bitstream sound effects in
addition to its ordinary note-based buzzer music.
