# Building Rescue Cross-Development Notes

Notes on the cross-development workflow used for Building Rescue.

Target systems:

- development side: NEC PC-9801
- target side: SHARP PC-E500 / PC-E550


## 1 Overview

Building Rescue was developed using a cross-development workflow.

Graphics were created on a PC-9801 and then converted for the PC-E500 series.


## 2 Important Correction

The graphics were not scaled down or resampled.

Instead:

- one PC-9801 dot corresponds to one PC-E500 dot
- the image size remains the same
- the conversion changes VRAM bit ordering and plane layout

So the workflow preserves the original pixel dimensions.


## 3 Role of GVR2LCD.EXE

`GVR2LCD.EXE` converted PC-9801 graphics VRAM data into PC-E500 VRAM-style
assembler text.

Its role was not image resizing.

Its role was:

- read PC-9801 VRAM bitmap data
- preserve the same image size
- convert the bit ordering to the PC-E500 format
- output assembler text for inclusion in the source


## 4 Two-Plane Graphics

The graphics format was also two-plane on the PC-9801 side.

This is important because Building Rescue uses a two-plane display structure
on the PC-E500 side as well.

So the workflow was likely:

PC-9801 2-plane image
↓
bit-order / VRAM-layout conversion
↓
PC-E500 2-plane image data


## 5 Why This Matters

This means the display engine was not inventing grayscale information on the
target side alone.

Instead, the source graphics were already prepared in a compatible two-plane
form during development.

That makes the following structure more likely:

- plane 1 = light contribution
- plane 2 = dark contribution


## 6 Relation to Display Routines

This fits well with the source structure:

- `VRAMPP`
- `VRAMPP2`
- `VRAMSS`

`VRAMPP` and `VRAMPP2` appear to display different planes, while `VRAMSS`
handles the machine-specific LCD transfer.

So the PC-E500-specific part is mainly the final display-side VRAM mapping.


## 7 Significance for Porting

This also explains why porting was non-trivial.

Even if the game logic was portable, the display system depended on:

- two-plane graphics data
- machine-specific VRAM bit ordering
- target-specific LCD transfer routines

So porting required rewriting the display driver side rather than simply
reassembling the same code.


## 8 Historical Significance

This reveals that Building Rescue was created with a fairly advanced workflow:

- graphics authoring on a more capable development machine
- format conversion by a dedicated tool
- final execution on a constrained pocket computer

That is an important part of the game's production history.


## 9 Conclusion

Building Rescue used a cross-development graphics workflow centered on the
PC-9801.

`GVR2LCD.EXE` was a format-conversion tool, not a scaling tool.

It converted PC-9801 two-plane VRAM graphics into PC-E500-compatible
assembler text while preserving the original pixel size and image dimensions.
