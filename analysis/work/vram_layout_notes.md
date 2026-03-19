# Building Rescue VRAM Layout Notes

Investigation of the internal VRAM layout used in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015
- monochrome LCD


## 1 Overview

The program does not draw directly into LCD memory.

Instead it uses two internal buffers:

VRAM1  
VRAM2  

These buffers are converted to the LCD format by the routine:

VRAMSS


## 2 Display Pipeline

The display process can be summarized as:

Game logic
↓
internal framebuffer (VRAM1 / VRAM2)
↓
VRAMSS conversion routine
↓
LCD controller I/O (2000H / 2006H)


This separation makes the game engine largely independent from the
actual LCD hardware.


## 3 VRAMPP and VRAMPP2

Two display routines exist:

VRAMPP  
VRAMPP2

Both routines are extremely small and only differ in the source buffer.

Example structure:

VRAMPP

    MV X,VRAM1+192+8
    CALLF VRAMSS

VRAMPP2

    MV X,VRAM2+8
    CALLF VRAMSS

Therefore the real rendering work is done entirely by:

VRAMSS


## 4 VRAMSS Display Routine

VRAMSS transfers the framebuffer to the LCD controller.

Important addresses observed in the routine:

2000H  
2006H  
2008H  

These appear to correspond to LCD command/data ports.


A simplified structure of the routine is:

set LCD page
repeat
    read byte from VRAM
    write byte to LCD
until row finished


The code uses heavily unrolled loops in order to reduce branching overhead.


## 5 Line Stride Clue

Near the end of the routine we observe:

    MV A,56
    ADD X,A

This is likely a line stride adjustment.

It means the next line in the internal framebuffer is not stored
directly after the previous one.


This strongly suggests that the internal VRAM layout differs from
the physical LCD memory layout.


## 6 Possible Internal Layout

The internal VRAM may use a layout optimized for game logic rather than
LCD hardware.

Possible properties:

- row padding
- block based organization
- offscreen working area
- separated planes for grayscale


The presence of two buffers also supports the grayscale mechanism.


## 7 Relation to Grayscale

The program uses two buffers:

VRAM1  
VRAM2

These are displayed in a weighted sequence such as:

VRAM1  
VRAM2  
VRAM2

Because the LCD response is slow, this temporal weighting produces
four visible brightness levels.


This method does not require hardware grayscale support.


## 8 Implications for Porting

Porting the game to another platform does not require emulating the
original LCD memory layout.

Instead the important part is preserving the meaning of:

VRAM1  
VRAM2


A portable rendering approach would be:

for each pixel
    read bit from VRAM1
    read bit from VRAM2
    map to 4 brightness levels
    draw pixel


This means the platform dependent code is mostly confined to the
VRAMSS routine.


## 9 Current Hypothesis

The internal framebuffer system works as follows:

VRAM1 → weak brightness plane  
VRAM2 → strong brightness plane  

Display order defines brightness weighting.


## 10 Future Investigation

Further analysis should focus on:

- determining the exact dimensions of VRAM1 and VRAM2
- mapping byte positions to screen coordinates
- confirming how the +56 line stride relates to screen width
- reconstructing the pixel format used by the engine


## 11 Conclusion

Building Rescue separates its internal framebuffer format from the
physical LCD representation.

This allows the game logic to remain portable while only the VRAMSS
routine depends on the target hardware.
