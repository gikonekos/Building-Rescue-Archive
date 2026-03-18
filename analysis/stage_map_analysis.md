# Building Rescue Stage Map Analysis

Analysis of the logical stage map format used in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015

Relevant symbols:

- `MAPADR`
- `ROUND`
- `FADR`
- `VMAP1`
- `VMAP2`
- `VMAP3`
- `VMAP4`


## 1 Overview

The stage data in Building Rescue is not stored as a raw bitmap.

Instead, the game uses compact logical map data:

- one stage map per round group
- nibble-based block values
- map lookup through `FADR`

This means the stage structure is defined as a tile/block map rather than
direct LCD pixels.


## 2 Stage Selection

The routine `MKDOT` selects the stage map according to `ROUND`.

Observed structure:

- round 1  -> `VMAP1`
- round 2  -> `VMAP2`
- round 3  -> `VMAP3`
- round 4+ -> `VMAP4`

The selected map base is written into:

    MAPADR

So `MAPADR` is the current active stage-map pointer.


## 3 Map Access Routine

The key routine is:

    FADR

This routine reads one logical cell from the current stage map.


### 3.1 What FADR does

From the code structure, `FADR` performs the following steps:

1. start from `MAPADR`
2. advance by row using `FY`
3. advance by column using `FX`
4. select upper or lower nibble depending on the parity of `FX`

This implies that:

- each row is 4 bytes wide
- each byte contains 2 cells
- each row contains 8 logical cells


## 4 Map Dimensions

Because each row is:

    4 bytes = 8 nibbles = 8 cells

the horizontal width of the logical map is:

    8 columns

Inspection of `VMAP1` shows 130 rows of stage data.

Therefore one stage map is:

    8 columns × 130 rows


## 5 Data Representation

Each map entry is a 4-bit value.

Possible value range:

    0 to F

So each map cell is a block or object code, not a pixel.


## 6 Example Data Structure

The stage map is stored in rows like:

    DB xxH,xxH,xxH,xxH

Example patterns from `VMAP1` include values such as:

- `0`
- `2`
- `3`
- `4`
- `5`
- `6`
- `7`
- `8`
- `D`
- `E`
- `F`

This strongly suggests a compact symbolic map format.


## 7 Interpretation of the Nibble Values

At this stage, the exact meaning of each nibble is not yet fully proven.

However, the current best hypothesis is:

- `0` = empty space
- `2`, `3`, `7`, `8` = wall / window / climbing structure variants
- `D`, `E` = special stage objects or transitions
- `F` = boundary or fully filled line

This should be verified by tracing `FADR` call sites and collision logic.


## 8 Why This Format Makes Sense

This map format is efficient.

Advantages:

- compact stage storage
- fast logical access
- independent from LCD hardware layout
- easy conversion into graphics during rendering

So the engine can separate:

logical map
↓
sprite / object composition
↓
VRAM1 / VRAM2
↓
LCD output


## 9 Relation to the Actual Screen

The gameplay field shown on the real machine is visually narrow and divided
into vertical building columns.

This matches the logical width of:

    8 columns

The stage map therefore describes the building structure column by column,
not pixel by pixel.


## 10 Current Best Model

The current interpretation of the stage system is:

1. `ROUND` selects `VMAP1..VMAP4`
2. the base pointer is stored in `MAPADR`
3. `FADR` reads one 4-bit map cell from `(FX,FY)`
4. the returned cell value is used for collision, climbing logic, and drawing


## 11 What Is Already Confirmed

The following points are strongly supported by the source:

- stage maps are nibble-based
- one row = 4 bytes
- one row = 8 cells
- one map = 130 rows
- `FADR` is the cell access routine
- `MAPADR` points to the current stage data


## 12 What Still Needs Verification

The following points still need detailed confirmation:

- exact meaning of each nibble value `0..F`
- which values represent climbable walls
- which values represent windows
- which values represent solid obstacles
- whether some values are used only for decoration or stage events


## 13 Next Investigation Step

The most useful next step is to trace all places that call `FADR` and check:

- comparisons against returned values
- movement restrictions
- object placement logic
- collision handling

That should allow construction of a full value table for the map codes.


## 14 Conclusion

Building Rescue uses a compact logical stage format rather than a raw bitmap.

Each stage is stored as:

    8 columns × 130 rows

with each cell encoded as a 4-bit value.

This map is accessed through `FADR`, making it the core structure for stage
layout, movement logic, and display generation.
