# Building Rescue Demo Bitmap Format Analysis

Analysis of the demo-screen bitmap format and expansion path in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015

Relevant symbols:

- `TITG`
- `TITH`
- `TITC1`
- `TITC2`
- `DTITG`
- `DTITH`
- `DGSUB`
- `VRAMPP`
- `VRAMPP2`
- `VRAMSS`


## 1 Overview

The title and ending screens use a display path that is separate from the
normal monochrome gameplay renderer.

The relevant flow is:

bitmap data
↓
`DTITG` / `DTITH`
↓
VRAM planes
↓
`VRAMPP` / `VRAMPP2`
↓
`VRAMSS`
↓
LCD

This is no longer just a hypothesis. The source directly shows that the two
bitmap-expansion routines write to different VRAM regions.


## 2 Confirmed Demo Data Blocks

The source contains large bitmap-like data blocks such as:

- `TITG`   ; title image 1
- `TITH`   ; title image 2
- `TITC1`
- `TITC2`

These blocks contain dense packed byte patterns and begin with:

    DB 0A0H,004H

They are clearly bitmap-style data rather than stage-map or sprite tables.


## 3 DTITG and DTITH

The source defines:

    DTITG:
        MV X,VRAM1+192+8
        CALLF DGSUB
        RETF

    DTITH:
        MV X,VRAM2+8
        CALLF DGSUB
        RETF

This directly confirms that:

- `DTITG` expands data into the VRAM1-side buffer
- `DTITH` expands data into the VRAM2-side buffer

So the two routines differ by destination buffer, not by copy logic.


## 4 Common Copy Routine: DGSUB

Both routines call the same helper:

    DGSUB

Its structure is:

- copy 160 bytes
- advance destination by 32 bytes
- repeat
- total of 4 copy blocks

The code is effectively:

    copy 160 bytes
    Y += 160
    X += 32

repeated three times, then a final copy.


## 5 Total Transfer Size

`DGSUB` copies:

    160 bytes × 4 = 640 bytes

So each demo-image block contributes 640 bytes of plane data.


## 6 What the Header Means

The bitmap data begins with:

    DB 0A0H,004H

This now fits very naturally with the copy routine:

- `0A0H` = 160 bytes
- `04H`  = 4 blocks

That matches exactly what `DGSUB` does.

So the header is very likely:

    width_in_bytes = 160
    block_count    = 4


## 7 Memory Layout Meaning

Since `DGSUB` copies 160 bytes and then advances destination by only 32 bytes,
the source and destination layouts are different.

This strongly suggests:

- source data is stored as converted packed bitmap blocks
- destination VRAM uses an internal layout optimized for later display
- `DGSUB` is already doing one stage of layout conversion


## 8 Confirmed Plane Split

At startup:

    MV Y,TITG
    CALLF DTITG
    MV Y,TITH
    CALLF DTITH

At ending:

    MV Y,TITC1
    CALLF DTITG
    MV Y,TITC2
    CALLF DTITH

This confirms the structural pairing:

- `TITG` / `TITC1` go through `DTITG` into the VRAM1-side destination
- `TITH` / `TITC2` go through `DTITH` into the VRAM2-side destination

So title and ending demo images are explicitly stored as two separate data
sets and expanded into two separate display buffers.


## 9 Relation to Pseudo Grayscale

The title loop is:

    CALLF VRAMPP
    CALLF VRAMPP
    CALLF VRAMPP2
    CALLF TRIG0

The ending loop is:

    CALLF VRAMPP
    ...
    CALLF MPLAY
    CALLF VRAMPP2
    ...

Since `VRAMPP` and `VRAMPP2` read from different VRAM regions, and `DTITG`
and `DTITH` write into different VRAM regions, the pseudo-grayscale mechanism
is now strongly supported as a two-plane demo display system.


## 10 Important Clarification

This two-plane bitmap path is used for demo screens such as:

- title
- ending

Normal gameplay and stage clear rendering remain monochrome.


## 11 Best Current Model

Current best model:

1. `TITG` / `TITC1` contain plane-A demo bitmap data
2. `TITH` / `TITC2` contain plane-B demo bitmap data
3. `DTITG` expands plane A into a VRAM1-side region
4. `DTITH` expands plane B into a VRAM2-side region
5. `VRAMPP` and `VRAMPP2` alternately display those regions
6. time weighting produces the grayscale-like effect on demo screens


## 12 What Still Needs Investigation

The following points are still worth checking:

- exact meaning of the 32-byte destination stride in `DGSUB`
- how the 640-byte expanded bitmap relates to the 768-byte `VRAMSS` display region
- whether the remaining bytes in each plane are padding, workspace, or another control area


## 13 Conclusion

The source directly confirms that `DTITG` and `DTITH` expand separate bitmap
data blocks into separate VRAM regions.

This means the title and ending demo screens are indeed built from two
independent bitmap planes, not from a single monochrome image.

The pseudo-grayscale effect is therefore grounded in an actual two-plane
bitmap format and not merely a speculative display trick.
