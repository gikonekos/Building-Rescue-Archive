# MPLAY Timing Relation in Demo Display

Analysis of how `MPLAY` affects pseudo-grayscale timing in the ending loop
of Building Rescue v1.10.

## 1 Overview

The title demo and ending demo do not use the same display scheduler.

Title:

    VRAMPP
    VRAMPP
    VRAMPP2
    TRIG0

Ending:

    VRAMPP
    MPLAY
    VRAMPP2
    TRIG0

So the title uses an explicit fixed plane ratio, while the ending inserts
sound playback into the middle of the display cycle.


## 2 Title Timing

The title loop is the clearest fixed-ratio case:

- `VRAMPP` shown twice
- `VRAMPP2` shown once

So the effective display weighting is approximately:

    VRAMPP : VRAMPP2 = 2 : 1

This is the cleanest pseudo-grayscale scheduler in the program.


## 3 Ending Timing Structure

The ending loop is different:

    CALLF VRAMPP
    ...
    CALLF MPLAY
    CALLF VRAMPP2
    ...
    CALLF TRIG0

This means the first plane remains visible during the execution time of
`MPLAY`, before the second plane is sent.


## 4 Why MPLAY Is Heavy

`MPLAY` itself is not just a tiny dispatcher.

In the ending, it selects one note entry from `MUSICA` and then calls either:

- `PLAY2`
- or `REST2`

`PLAY2` contains a timing loop:

    XOR (0FDH),010H
    MV I,(QQQ)
    WAIT
    DEC BA
    JRNZ PLAY2

`REST2` is similar:

    AND (0FDH),0EFH
    MV I,(QQQ)
    WAIT
    DEC BA
    JRNZ REST2

So one `MPLAY` call in the ending can include a full note-duration wait loop.


## 5 Practical Meaning

This means the ending timing is not:

    plane A
    plane B

with only small overhead between them.

Instead it is closer to:

    plane A
    note-duration wait
    plane B

So the first displayed plane is effectively held on screen for much longer
than in the title loop.


## 6 Why the Ending Feels Slower

This matches observed behavior:

- the play-start tune feels faster
- the ending tune feels slightly slower

Even if the musical material is related, the ending plays it through a
frame-linked scheduler where each note is tied to a display cycle.

So the ending tempo is constrained by:

- note duration inside `MPLAY`
- display update order
- loop overhead


## 7 Why Title and Ending Grayscale Differ

Because of this, title and ending should not be treated as the same
pseudo-grayscale mode.

Title:

- fixed display ratio
- stable timing
- optimized for visual presentation

Ending:

- mixed display + sound timing
- non-uniform display weighting
- grayscale effect depends on both display and note duration


## 8 Approximate Relative Cost

A precise cycle count is not yet available without full instruction timing,
but structurally:

- `VRAMPP` = one LCD transfer
- `MPLAY` in ending = one full note/rest timing routine

Since `PLAY2` / `REST2` both execute repeated `WAIT` loops controlled by
table values from `OTOTBL0`, `MPLAY` is very likely much heavier than a
small control routine and may be comparable to or longer than one display pass.

So the ending's effective plane weighting is likely skewed strongly toward
the plane shown before `MPLAY`.


## 9 Best Current Interpretation

Current best interpretation:

- title demo uses explicit 2:1 pseudo-grayscale timing
- ending demo uses a display-and-audio mixed scheduler
- therefore the ending grayscale is related to the title effect, but not
  visually identical

This also explains why the ending can appear slightly different in both
brightness balance and motion/tempo feel.


## 10 Conclusion

`MPLAY` is not a negligible call in the ending loop.

It contains the actual note/rest timing and therefore acts as a major part
of the display schedule.

As a result, the ending demo does not use the same clean 2:1 grayscale
timing as the title demo, even though both rely on the same two-plane
display mechanism.
