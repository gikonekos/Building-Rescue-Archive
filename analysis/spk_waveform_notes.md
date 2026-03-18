# Building Rescue SPK Waveform Notes

Notes on the SPK waveform playback routine in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015

Related routine:

- `SPK` at `&BB642`

This document focuses on the structure and meaning of the bitstream-based
sound effect data used by the SPK routine.


# 1 Overview

Building Rescue contains a waveform playback routine named `SPK`.

Unlike the ordinary note-based sound player (`MPLAY` / `PLAY2`), `SPK` reads a
packed byte stream and outputs buzzer states bit by bit.

This suggests a direct 1-bit waveform playback method for sound effects.


# 2 SPK Header Format

The routine begins by reading:

- one byte: playback speed
- one word: waveform data length

Source pattern:

    MV A,[X++]
    MV (SPEED),A
    MVW (WS),[X++]

Interpretation:

- byte 0 = speed parameter
- byte 1-2 = waveform data length
- byte 3 onward = packed waveform bytes


# 3 Bitstream Playback Model

The inner loop processes one byte at a time:

    MV A,[X++]
    MV IL,8

Then each bit is shifted out:

    ROL A
    JRNC SPK05

This means:

- each byte contains 8 waveform bits
- the routine outputs one buzzer state per bit
- 1 = buzzer on
- 0 = buzzer off

This is a true 1-bit serial waveform stream.


# 4 Output Behaviour

When the current bit is 1, the routine sets the buzzer bit:

    OR (OTO),010H

When the current bit is 0, the routine clears the buzzer bit:

    AND (OTO),080H

This indicates direct software control of the buzzer line through port `&FD`.


# 5 Timing Control

After each bit output, a software delay is executed using the `SPEED`
parameter.

Therefore:

- larger `SPEED` = slower playback
- smaller `SPEED` = faster playback

This means pitch and playback duration depend directly on software timing.


# 6 Known Wave Data Entries

The source references at least these SPK sound data blocks:

- `MDAT3`
- `MDAT4`

Examples:

    MV X,MDAT3
    CALLF SPK

    MV X,MDAT4
    CALLF SPK

The data blocks begin with:

    DB 8
    DW (MDAT3E-MDAT3S)

and

    DB 6
    DW (MDAT4E-MDAT4S)

This suggests different playback speeds for different effects.


# 7 Data Interpretation

The SPK data structure can be interpreted as:

    [speed][length low][length high][wave bytes...]

where each wave byte is expanded bit by bit during playback.

This is different from:

- note table playback
- duration table playback
- simple fixed-frequency BEEP generation

It is closer to a primitive 1-bit PCM or bitstream playback method.


# 8 Technical Significance

This is notable because Building Rescue runs on a monochrome pocket computer
with only a 1-bit buzzer.

Despite this limitation, the program implements two separate audio systems:

1. note-table playback
2. bitstream waveform playback

This is an advanced design for this class of machine.


# 9 What Should Be Checked Next

Recommended next steps:

- identify the exact byte ranges of `MDAT3` and `MDAT4`
- count total waveform bits
- estimate playback duration from `SPEED`
- reconstruct the bitstream into a visual waveform
- compare SPK effects with in-game events


# 10 Working Hypothesis

The SPK routine is best understood as a software-driven 1-bit waveform player.

It likely exists to produce sound effects that are more expressive than the
ordinary note-based tone player can provide.
