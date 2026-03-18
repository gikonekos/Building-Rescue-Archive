# Building Rescue VRAM Coordinate Mapping

Analysis of how the internal VRAM buffers correspond to screen coordinates.

Target platform:

- SHARP pocket computer series
- CPU: SC62015
- monochrome LCD (240×32)


## 1 LCD Characteristics

The SHARP pocket computer LCD is:

240 × 32 pixels

The LCD controller is accessed through ports around:

2000H  
2006H  
2008H


## 2 Bytes per Line

Each byte represents 8 horizontal pixels.

240 / 8 = 30 bytes

So the full LCD line width is:

30 bytes


## 3 Internal VRAM Sizes

The source declares two buffers:

VRAM1 : 192 bytes  
VRAM2 : 128 bytes


### VRAM1

192 / 32 = 6 bytes per line

6 bytes × 8 pixels = 48 pixels


### VRAM2

128 / 32 = 4 bytes per line

4 bytes × 8 pixels = 32 pixels


Therefore the two buffers represent smaller regions than the full LCD width.


## 4 Internal Display Window

The game most likely renders only a central gameplay area.

Estimated widths:

VRAM1 → 48 pixels  
VRAM2 → 32 pixels

This suggests the gameplay area is narrower than the full display,
with side margins used for UI or unused.


## 5 VRAM Row Stride

Inside the display routine we see:

ADD X,56

This indicates the memory stride between rows.


Example structure:

Row data size : 6 bytes  
Row stride    : 56 bytes


Meaning:

| row display data | working area |


So each row in VRAM contains both visible pixel data and extra workspace.


## 6 Possible VRAM Layout

The internal VRAM may look like this:

Row0
    display bytes (6)
    work area (50)

Row1
    display bytes (6)
    work area (50)

...


This layout can simplify sprite rendering and collision calculations.


## 7 Conversion to LCD

The routine VRAMSS converts internal VRAM rows into LCD format.

Simplified behaviour:

for each row
    read display bytes
    send to LCD controller


This allows the internal format to differ from the LCD memory layout.


## 8 Bitplane Grayscale

The game uses two VRAM planes:

VRAM1
VRAM2


Display cycle example:

VRAM1
VRAM2
VRAM2


This produces weighted brightness:

VRAM1 → weight 1  
VRAM2 → weight 2


Brightness model:

00 → white  
10 → light gray  
01 → dark gray  
11 → black


## 9 Pixel Coordinate Mapping

Within each row:

byte 0 → pixels 0–7  
byte 1 → pixels 8–15  
byte 2 → pixels 16–23  
byte 3 → pixels 24–31  
byte 4 → pixels 32–39  
byte 5 → pixels 40–47


So the visible region per row is:

48 pixels


The remaining LCD width is unused or used for static elements.


## 10 Why This Layout Is Useful

Advantages of the internal VRAM design:

- easier sprite rendering
- room for temporary drawing data
- separation from hardware layout
- portability across different machines


Only the routine VRAMSS needs to know the LCD hardware.


## 11 Implications for Porting

A modern port does not need to reproduce the LCD memory layout.

Instead:

for each pixel
    read bit from VRAM1
    read bit from VRAM2
    compute brightness
    draw pixel


This preserves the original grayscale effect.


## 12 Conclusion

The internal VRAM layout of Building Rescue is optimized for the
game engine rather than the LCD hardware.

Two planes provide grayscale information, while the VRAMSS routine
converts this internal representation into the LCD controller format.
