# Building Rescue Demo Display Path Analysis

Analysis of where Building Rescue switches between monochrome gameplay
rendering and pseudo-grayscale demo rendering.

Target platform:

- SHARP pocket computer series
- CPU: SC62015

Relevant routines:

- `VRAMCL1`
- `VRAMCL2`
- `VRAMPP`
- `VRAMPP2`
- `DTITG`
- `DTITH`
- `GPRTV1`
- `GDELV1`
- `MPLAY`


## 1 Overview

The main control flow clearly shows that Building Rescue uses two separate
display paths:

1. monochrome gameplay rendering
2. demo bitmap rendering with pseudo grayscale

The split is visible directly in the startup, gameplay, clear, and ending code.


## 2 Title Screen Path

At program start:

    CALLF VRAMCL2
    CALLF VRAMCL1
    CALLF VRAMPP

    MV Y,TITG
    CALLF DTITG
    MV Y,TITH
    CALLF DTITH

Then the loop is:

AA5:
    CALLF VRAMPP
    CALLF VRAMPP
    CALLF VRAMPP2
    CALLF TRIG0

Interpretation:

- `TITG` and `TITH` are bitmap data sources
- `DTITG` and `DTITH` expand/copy that data into VRAM
- the title loop uses `VRAMPP`, `VRAMPP`, `VRAMPP2`
- this is the clearest confirmed pseudo-grayscale display loop

So the title screen uses the demo bitmap path.


## 3 Transition to Gameplay

After title handling, the code resets gameplay state and enters the normal
game loop:

    CALLF VRAMCL1
    CALLF TIT
    CALLF MKDOT
    CALLF SWIN
    CALLF VWIN
    CALLF DISP

Later in the gameplay loop:

LOPXX:
    CALLF VRAMCL1
    CALLF TIT
    CALLF KEYP
    CALLF MWIN
    CALLF DISP
    CALLF MMONO
    CALLF MUFO
    ...
    CALLF VRAMPP

Interpretation:

- gameplay repeatedly clears and redraws a single plane
- only `VRAMPP` is used
- there is no `VRAMPP2` in the normal gameplay loop
- gameplay therefore uses monochrome rendering


## 4 Stage Clear Path

The clear sequence begins at:

CLEAR:
    CALLF VRAMCL1
    CALLF TIT
    ...
    CALLF DISP
    CALLF VRAMPP
    ...
    CALLF MPLAY

Interpretation:

- stage clear uses `VRAMCL1`
- display update is done through `VRAMPP`
- there is no `VRAMPP2` in this path
- stage clear is therefore monochrome

This matches observed real-machine behavior.


## 5 Ending Path

The ending block begins at:

    CALLF VRAMCL2
    CALLF VRAMCL1
    CALLF VRAMPP

    MV Y,TITC1
    CALLF DTITG
    MV Y,TITC2
    CALLF DTITH

Then the ending loop:

CLL0:
    CALLF VRAMPP
    ...
    CALLF MPLAY
    CALLF VRAMPP2
    ...
    JR CLL0

Interpretation:

- the ending uses bitmap data (`TITC1`, `TITC2`)
- both `VRAMPP` and `VRAMPP2` are used
- this is the second confirmed pseudo-grayscale demo path

So the ending also uses the demo bitmap path.


## 6 Defeat / Death Path

The death-related sequence begins at:

MDEAD:
    CALLF VRAMCL1
    CALLF TIT
    CALLF DISP
    CALLF VRAMPP
    ...
    CALLF MPLAY

Interpretation:

- this path uses only `VRAMPP`
- no `VRAMPP2` is present
- so this path is monochrome


## 7 Display-Path Split

The program therefore divides cleanly into two display systems.


### 7.1 Demo bitmap path

Used for:

- title
- ending

Key properties:

- bitmap sources such as `TITG`, `TITH`, `TITC1`, `TITC2`
- expansion through `DTITG` / `DTITH`
- display through `VRAMPP` and `VRAMPP2`
- pseudo grayscale through time-weighted plane presentation


### 7.2 Monochrome gameplay path

Used for:

- normal gameplay
- stage clear
- death / failure scenes

Key properties:

- map and sprite rendering
- `VRAMCL1`
- `TIT`, `DISP`, `KEYP`, `MWIN`, etc.
- display through `VRAMPP` only


## 8 Important Clarification

Pseudo grayscale should not be described as a general display mode of the game.

Correct interpretation:

- normal gameplay is monochrome
- stage clear is monochrome
- title and ending use the grayscale-like demo presentation


## 9 Why This Matters

This explains both the source structure and the real-machine appearance.

It also shows that the pseudo-grayscale system is a presentation feature,
used only where CPU time and visual stability allow it.


## 10 Conclusion

The main program flow confirms a clean split between:

- monochrome gameplay rendering
- pseudo-grayscale demo bitmap rendering

Confirmed pseudo-grayscale demo screens:

- title
- ending

Confirmed monochrome paths:

- gameplay
- stage clear
- death-related scenes
