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

This strongly suggests that the pseudo-grayscale demo screens are built from
two separate bitmap planes.


## 2 Confirmed Demo Data Blocks

The source contains large bitmap-like data blocks such as:

- `TITG`   ; title image
- `TITH`   ; title frame
- `TITC1`  ; clear / ending-related image 1
- `TITC2`  ; clear / ending-related image 2

These blocks contain raw byte sequences that clearly behave like packed
bitmap data rather than symbolic stage-map data.


## 3 Header Format

These bitmap data blocks begin with:

    DB 0A0H,004H

This is very likely a small image-format header.

At minimum it strongly suggests that the data is not ordinary sprite data,
but tool-generated image data with explicit dimensions or block structure.


## 4 Why These Look Like Converted VRAM Data

The byte patterns in `TITG`, `TITH`, `TITC1`, and `TITC2` look like dense
bit patterns, for example:

    0FEH,002H,002H,0F2H,0F2H,002H,006H,0F8H

Such values are consistent with packed bitmap rows and inconsistent with
nibble map or gameplay object tables.

This matches the known development workflow:

- graphics drawn on PC-9801
- converted by `GVR2LCD.EXE`
- emitted as assembler text


## 5 Role of DTITG and DTITH

The main program uses:

    MV Y,TITG
    CALLF DTITG
    MV Y,TITH
    CALLF DTITH

and later in the ending:

    MV Y,TITC1
    CALLF DTITG
    MV Y,TITC2
    CALLF DTITH

This strongly suggests:

- `DTITG` and `DTITH` are not just "title-specific" routines
- they are two generic bitmap-expansion routines
- each one writes into a different display buffer / plane


## 6 Best Current Interpretation

The most likely interpretation is:

- `DTITG` expands one bitmap plane into one internal VRAM region
- `DTITH` expands another bitmap plane into a second internal VRAM region

In other words, the title and ending images are composed of two separately
stored bitmap sources.


## 7 Relation to Pseudo Grayscale

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

Since `VRAMPP` and `VRAMPP2` select different source regions, the most natural
interpretation is:

- plane 1 = image expanded by one bitmap routine
- plane 2 = image expanded by the other bitmap routine

The visible grayscale-like effect is then produced by showing the two planes
with different time weights.


## 8 Why Two Separate Input Images Make Sense

This also matches the known cross-development workflow.

Because the graphics were drawn on PC-9801 as two-plane graphics, it is
natural that the converted output would preserve that separation.

So the likely production path was:

PC-9801 plane A
↓
converted to assembler text
↓
loaded by `DTITG`

PC-9801 plane B
↓
converted to assembler text
↓
loaded by `DTITH`


## 9 Difference From Gameplay Graphics

This is fundamentally different from the normal gameplay display path.

Gameplay uses:

- stage map lookup
- sprite draw / erase
- monochrome rendering
- `VRAMPP` only

The demo path instead uses:

- large prebuilt bitmap data
- explicit expansion routines
- both `VRAMPP` and `VRAMPP2`
- pseudo-grayscale presentation


## 10 Most Likely Structural Model

Current best model:

1. `TITG` / `TITC1` contain bitmap plane A
2. `TITH` / `TITC2` contain bitmap plane B
3. `DTITG` expands plane A into one demo VRAM area
4. `DTITH` expands plane B into another demo VRAM area
5. `VRAMPP` and `VRAMPP2` alternately display those planes
6. time weighting creates the 4-level grayscale-like effect


## 11 What Still Needs Direct Confirmation

The following points should still be verified directly from the code:

- exact destination addresses written by `DTITG`
- exact destination addresses written by `DTITH`
- whether the two routines differ only by destination buffer
- whether the `0A0H,004H` header encodes dimensions, block count, or both


## 12 Conclusion

The title and ending demo screens in Building Rescue are most likely built
from two separate bitmap planes.

Those planes appear to be stored as converted PC-9801 VRAM-derived data and
expanded through `DTITG` and `DTITH` into separate display buffers.

The pseudo-grayscale effect is then produced by time-weighted display of
those two buffers through `VRAMPP` and `VRAMPP2`.
