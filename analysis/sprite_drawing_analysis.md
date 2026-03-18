# Building Rescue Sprite Drawing Analysis

Analysis of the sprite drawing and erasing method used in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015


## 1 Conclusion

The ordinary sprite routines do not use XOR drawing.

Confirmed behaviour:

- draw = OR
- erase = AND mask

So the game uses separate routines for drawing and deletion rather than
a single XOR toggle method.


## 2 Main Routines

The key routines are:

GPRTV1  
GDELV1

Their comments indicate:

- GPRTV1 = character display on VRAM1
- GDELV1 = character erase on VRAM1


## 3 Draw Routine

Relevant code from GPRTV1:

    MV (GW1),[X++]
    MV A,[Y]
    OR A,(GW1)
    MV [Y++],A

For vertically shifted cases:

    MV A,[Y]
    OR A,(GW1)
    MV [Y++],A

    MV A,[Y+191]
    OR A,(GW2)
    MV [Y+191],A

Interpretation:

- sprite bytes are ORed into VRAM
- when the sprite crosses a byte boundary vertically, it is split into
  two parts (`GW1` and `GW2`)
- both parts are ORed into the destination


## 4 Erase Routine

Relevant code from GDELV1:

    MV (GW1),[X++]
    MV A,[Y]
    AND A,(GW1)
    MV [Y++],A

Shifted case:

    MV A,[Y]
    AND A,(GW1)
    MV [Y++],A

    MV A,[Y+191]
    AND A,(GW2)
    MV [Y+191],A

Interpretation:

- erase is done by ANDing the destination with a prepared mask
- this means the sprite data for deletion is not ordinary sprite graphics
  but mask data


## 5 No XOR in Sprite Rendering

The source does contain XOR instructions elsewhere, but not for the
ordinary sprite draw / erase path.

The important XOR operations found are related to:

- sound output toggling
- small state flags

There is no evidence here that character rendering is based on XOR.


## 6 What This Means

The rendering model is:

1. draw sprite by ORing set bits into VRAM
2. erase sprite by ANDing with a mask

This is a classic software sprite method.


## 7 Why This Is Reasonable

Advantages of OR + AND mask:

- stable sprite appearance
- predictable erase
- avoids XOR artifacts
- suitable for overlapping graphics if masks are prepared properly

Disadvantages:

- requires separate erase data
- more data preparation than XOR


## 8 Vertical Shift Handling

The code clearly handles sub-byte vertical shifts.

Important operations:

    AND A,07
    SHL (GW1)
    SHL (GW2)

This means the sprite is shifted according to the low 3 bits of Y.

Then it is written into:

- current row
- next row (`Y+191`)

So the routine supports pixel-precise vertical placement.


## 9 Implication for VRAM Format

The destination pointer is based on VRAM1.

The use of offsets such as:

    Y+191

strongly suggests that adjacent display rows are stored with a
192-byte stride in this internal representation.

This is consistent with the earlier finding that the internal VRAM layout
is optimized for the game engine rather than for direct LCD hardware order.


## 10 Separate Image Copy Routines

The ending/title image copy routines (`DTITG`, `DTITH`, `DGSUB`) do not use
OR/AND merging.

They simply copy bytes:

    MV A,[Y++]
    MV [X++],A

So there are at least two rendering styles in the program:

- sprite composition by OR / AND mask
- block image transfer by direct copy


## 11 Final Summary

Building Rescue does not use XOR as its main sprite method.

Instead, the normal character path uses:

- OR for drawing
- AND mask for erasing

This is a more careful and robust sprite system than a simple XOR toggle
approach.
