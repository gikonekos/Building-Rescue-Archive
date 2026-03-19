# Building Rescue Sound Driver Analysis

Analysis of the sound routines used in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015

This game uses a 1-bit buzzer connected through I/O port `&FD` (`OTO` in the source).


# 1 Correction

A previous assumption linked the published patch address `&BB50C` to the sound
driver.

That assumption was incorrect.

`&BB50C` is not part of the sound routine. In the source / partial listing,
it corresponds to ordinary game logic:

    0BB50C  6D 65   INC (GY)

So the printed "sound disable" patch at `&BB50C` should not be treated as a
reliable sound-driver entry point.


# 2 Actual Sound Routines

Two different sound-related systems are present in the program.


## 2.1 Music / note player

Main routine:

    MPLAY   = &BB36A

This routine reads note/event data from `X` and a note table from `Y`.

Source structure:

- read one event byte from `[X++]`
- if value = `254`, end sequence
- if value = `36`, treat as rest
- otherwise use the event value as an index into a note table
- load timing parameters from the table
- call the low-level playback routine


## 2.2 Low-level tone generator

Low-level routine:

    PLAY2   = &BB3A4

Source:

    PLAY2:
        XOR (0FDH),010H
        MV I,(QQQ)
        WAIT
        DEC BA
        JRNZ PLAY2
        AND (0FDH),0EFH
        RETF

This is a direct buzzer toggle loop.

Meaning:

- bit `10H` of port `&FD` is toggled repeatedly
- `QQQ` supplies the delay
- `BA` supplies the repeat count
- after the loop, the buzzer bit is cleared

This is a classic software square-wave generator.


## 2.3 Rest handler

Rest routine:

    REST2   = &BB3B0

Source:

    REST2:
        AND (0FDH),0EFH
        MV I,(QQQ)
        WAIT
        DEC BA
        JRNZ REST2
        RETF

This keeps the buzzer off while preserving timing.


## 2.4 Waveform / sampled-effect player

Effect routine:

    SPK     = &BB642

This is separate from `MPLAY`.

It reads a byte stream and outputs the buzzer bit one bit at a time.


# 3 SPK Routine Structure

The source for `SPK` begins as follows:

    SPK:
        PUSHU I
        MV A,[X++]
        MV (SPEED),A
        MVW (WS),[X++]

Interpretation:

- first byte at `X` = playback speed
- next word = waveform data size
- remaining bytes = 1-bit waveform data

Inner loop:

    SPK01:
        MV A,[X++]
        MV IL,8
    SPK02:
        ROL A
        JRNC SPK05

If the current bit is 1:

    SPK03:
        CMP (OTF),0
        JRZ SPK30
        OR (OTO),010H

If the current bit is 0:

    SPK05:
        AND (OTO),080H

Then a software delay is applied using `SPEED`.

This means `SPK` is not a note player. It is a 1-bit waveform playback routine.


# 4 Meaning of SPK Data Format

The source shows calls such as:

    MV X,MDAT3
    CALLF SPK

and

    MV X,MDAT4
    CALLF SPK

The corresponding data blocks are:

    MDAT3:
        DB 8
        DW (MDAT3E-MDAT3S)

    MDAT4:
        DB 6
        DW (MDAT4E-MDAT4S)

Interpretation:

- byte 0 = playback speed
- word 1-2 = waveform data length
- remaining bytes = packed 1-bit waveform stream

So the game contains true bitstream-based sound effects, not only note-based beeps.


# 5 Music Data vs Wave Data

The program therefore has two distinct sound formats.


## 5.1 Music sequence format

Used by `MPLAY`.

Examples:

- `MUSIC1S`
- `MUSIC1L`
- `MUSIC3`
- `MUSIC5`
- `MUSIC7`
- `MUSIC41`
- `MUSIC42`
- `MUSICB`

These sequences contain symbolic note values such as `_O4F`, `_O4A`, `_RR`, `_END`.


## 5.2 Wave effect format

Used by `SPK`.

Examples:

- `MDAT3`
- `MDAT4`

These contain raw byte streams resembling sampled 1-bit waveform data.


# 6 Note Tables

`MPLAY` uses note tables such as:

    OTOTBL0
    OTOTBL1

Example from the source:

    OTOTBL0:
        DW 1451
        DW 13
        DW 1369
        DW 14
        DW 1291
        DW 15

    OTOTBL1:
        DW 1451
        DW 26
        DW 1369
        DW 28
        DW 1291
        DW 30

These appear to be pairs of:

- delay value
- loop count / duration

So pitch and note length are table-driven.


# 7 Hardware Model

The relevant buzzer output bit is controlled through:

    OTO = &FD

The low-level routines manipulate bit `10H` of this port:

- `XOR (0FDH),010H`
- `OR  (OTO),010H`
- `AND (OTO),0EFH`
- `AND (OTO),080H`

This strongly indicates that buzzer generation is entirely software-driven.


# 8 What This Means

Building Rescue does not use only a simple BEEP routine.

It contains both:

1. a table-driven tone player (`MPLAY` / `PLAY2`)
2. a 1-bit waveform playback routine (`SPK`)

That combination is technically interesting.

It means the game mixes:

- ordinary musical note playback
- direct bitstream sound-effect playback

on a monochrome pocket computer with only a 1-bit buzzer.


# 9 Address Summary

Confirmed sound-related addresses:

- `&BB36A` : `MPLAY`
- `&BB3A4` : `PLAY2`
- `&BB3B0` : `REST2`
- `&BB642` : `SPK`

Confirmed non-sound address previously misidentified:

- `&BB50C` : game logic (`INC (GY)`)


# 10 Conclusion

The sound system of Building Rescue is more advanced than a simple tone loop.

It combines:

- note-table based buzzer playback
- software timing control
- direct 1-bit waveform effect playback

This makes the program an interesting example of advanced audio technique on the
SC62015 pocket computer platform.


# 11 Future Work

Recommended next steps:

- identify all call sites of `SPK`
- identify all music sequence entry points used by `MPLAY`
- document the exact `OTOTBL0` / `OTOTBL1` note mapping
- reconstruct the `MDAT3` / `MDAT4` bitstreams as audio waveforms
- determine whether the published patch text refers to another build
