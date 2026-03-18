# Building Rescue VRAMSS Analysis

Detailed analysis of the LCD transfer routine `VRAMSS` in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015

Relevant routines:

- `VRAMPP`
- `VRAMPP2`
- `VRAMSS`
- `VRAMCL1`
- `VRAMCL2`


## 1 Overview

`VRAMSS` is the real display transfer routine.

`VRAMPP` and `VRAMPP2` are thin wrappers that only set the source pointer and
then call `VRAMSS`.

Source structure:

    VRAMPP:
        MV X,VRAM1+192+8
        CALLF VRAMSS

    VRAMPP2:
        MV X,VRAM2+8
        CALLF VRAMSS

So the display system is:

    source buffer
    ↓
    VRAMSS
    ↓
    LCD controller I/O


## 2 VRAM Buffer Sizes

The source defines:

    VRAM1: DS 192
           DS 192
           DS 192
           DS 192
           DS 192
           DS 192

So:

    VRAM1 = 192 × 6 = 1152 bytes

Then later:

    VRAM2:
           DS 192
           DS 192
           DS 192
    QTBL:  DS 92
    WTBL:  DS 100

So:

    VRAM2 block      = 576 bytes
    QTBL + WTBL      = 192 bytes
    total contiguous = 768 bytes


## 3 What VRAMSS Transfers Per Pass

The routine starts with:

    MV A,0B8H

and loops until:

    CMP A,0BCH
    JPNZ CC1

That means it processes:

    B8H
    B9H
    BAH
    BBH

So there are 4 outer passes.


## 4 Transfer Amount Per Outer Pass

Inside each outer pass:

### CC2

    MV IL,8

and each loop writes 8 bytes.

So:

    8 × 8 = 64 bytes

### CC3

    MV IL,7

and again each loop writes 8 bytes.

So:

    7 × 8 = 56 bytes

### CC4

    MV IL,7

and again each loop writes 8 bytes.

So:

    7 × 8 = 56 bytes

Total written per outer pass:

    64 + 56 + 56 = 176 bytes


## 5 Net Source Pointer Advance

The source pointer movement is important.

After CC2 and CC3:

    X += 64 + 56 = 120

Then:

    MV A,56
    ADD X,A

So:

    X += 56
    total = 176

Then CC4 reads using:

    MV A,[--X]

56 times.

So after CC4:

    X -= 56
    net = 120

Then:

    MV A,16+56
    ADD X,A

So:

    X += 72
    net per outer pass = 192

This is a key result:

    VRAMSS advances through the source in 192-byte blocks.


## 6 Total Source Size Consumed

There are 4 outer passes, and each advances the source pointer by 192 bytes.

Therefore:

    192 × 4 = 768 bytes

So `VRAMSS` expects a 768-byte source region.


## 7 Meaning for VRAMPP

`VRAMPP` starts from:

    VRAM1 + 192 + 8

and `VRAM1` itself is 1152 bytes long.

Since `VRAMSS` consumes 768 bytes, the accessed range is:

    VRAM1 + 200
    through
    VRAM1 + 967

This fits inside `VRAM1`.

So `VRAMPP` displays a 768-byte window inside the larger VRAM1 area.


## 8 Meaning for VRAMPP2

`VRAMPP2` starts from:

    VRAM2 + 8

`VRAM2` alone is only 576 bytes, which is not enough for a 768-byte transfer.

However, immediately after `VRAM2` come:

    QTBL = 92 bytes
    WTBL = 100 bytes

and:

    576 + 92 + 100 = 768

So the most likely interpretation is:

`VRAMPP2` uses a contiguous 768-byte display region beginning at `VRAM2+8`,
spanning the later parts of `VRAM2` and continuing into `QTBL` and `WTBL`.

This is a strong structural clue.


## 9 LCD Port Usage

`VRAMSS` writes to:

    2000H
    2006H
    2008H
    200AH

Observed structure:

- `2000H` and `2008H` are used for command/page selection
- `2006H` and `200AH` are used as data write ports

This suggests the LCD is written in multiple interleaved blocks or banks.


## 10 Direction Change Inside One Pass

One unusual feature is that `VRAMSS` first reads forward:

    [X++]

then later reads backward:

    [--X]

This means the source layout is not a simple linear bitmap copy.

The routine is reordering bytes while sending them to the LCD.

So `VRAMSS` is not just a memcpy-style blitter.
It is a format-conversion blitter.


## 11 Why This Matches the Development Workflow

This fits the known cross-development workflow:

- graphics created on PC-9801
- converted by `GVR2LCD.EXE`
- assembled into the game
- displayed through machine-specific transfer logic

`VRAMSS` appears to handle the final LCD-side ordering, while the source data
already follows an internal two-plane format.


## 12 Performance Characteristics

`VRAMSS` is heavily optimized:

- repeated byte writes are manually expanded
- loop counts are small and regular
- address calculations are minimized
- pointer movement is carefully arranged around 192-byte blocks

This is clearly cycle-conscious code.

That level of optimization is exactly what is needed to support:

- repeated plane display
- pseudo grayscale timing
- concurrent music playback


## 13 Current Best Interpretation

The display system most likely works as follows:

- image data exists in an internal 768-byte display-oriented format
- `VRAMPP` and `VRAMPP2` select different source regions / planes
- `VRAMSS` converts that internal ordering into LCD controller write order
- grayscale is produced by repeatedly showing different planes with time weighting


## 14 Key Confirmed Facts

The following are strongly supported by the source:

- `VRAMPP` and `VRAMPP2` share the same transfer core
- `VRAMSS` consumes 768 source bytes per call
- the source pointer advances in 192-byte steps
- the routine uses both forward and backward reads
- the routine is performing format-aware LCD transfer, not a simple linear copy


## 15 Next Step

The most useful next investigation is to determine the exact meaning of the
768-byte internal format:

- what one 192-byte block represents
- how the four outer passes correspond to LCD banks/pages
- how the two display planes are arranged in memory

That should reveal the final structure of the pseudo-grayscale engine.
