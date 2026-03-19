# Building Rescue Grayscale Timing Analysis

Timing-based interpretation of the pseudo grayscale display used in
Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015
- monochrome LCD


# 1 Key Point

A practical test showed that pseudo grayscale can be produced by calling
display routines in a weighted sequence such as:

    CALL VRAM1
    CALL VRAM2
    CALL VRAM2

This strongly suggests a time-weighted display method.


# 2 Source Evidence

The source contains more than one display loop pattern.

A title-related loop:

    AA5:
        CALLF VRAMPP
        CALLF VRAMPP
        CALLF VRAMPP2
        CALLF TRIG0

The ending loop:

    CLL0:
        CALLF VRAMPP
        ...
        CALLF MPLAY
        CALLF VRAMPP2
        ...
        CALLF TRIG0

This indicates that the grayscale engine is not based on a single rigid
three-call sequence. Instead, it seems to depend on relative time spent
between display updates.


# 3 Main Interpretation

The most likely model is a weighted multi-phase display cycle.

A display cycle may be understood as:

    phase A = VRAMPP
    phase B = hold / work time
    phase C = VRAMPP2

In some scenes, phase B is implemented by another display call.
In the ending, phase B may be occupied by `MPLAY`.


# 4 Why MPLAY Matters

During the ending, sound is produced by `MPLAY`, not `SPK`.

If the execution time of `MPLAY` is comparable to one display phase,
then the ending loop still behaves like a three-slot timing system:

    VRAMPP
    MPLAY
    VRAMPP2

In that case, `MPLAY` effectively contributes to the time weighting of
the grayscale cycle.


# 5 Practical Meaning

This explains the user's observation that the visual effect may depend on
roughly one `VRAM2` worth of machine cycles.

The grayscale mechanism is likely determined by:

- which display plane is shown
- how long it remains active
- how LCD persistence integrates the sequence


# 6 Weighted Brightness Model

A possible perceptual model is:

    0/3 duty = white
    1/3 duty = light gray
    2/3 duty = dark gray
    3/3 duty = black

This does not require hardware grayscale support.
It only requires repeated timed display phases on a slow LCD.


# 7 VRAM Structure Clues

The source shows different storage sizes for the two VRAM areas.

`VRAMCL1` clears:

    192 bytes

`VRAMCL2` clears:

    128 bytes

This suggests that `VRAM1` and `VRAM2` are not simply identical full-screen
buffers. Their roles may differ in the grayscale system.


# 8 Current Best Hypothesis

The pseudo grayscale system is based on weighted temporal composition.

Important points:

- `VRAMPP` and `VRAMPP2` are separate display phases
- the middle time slot may be filled by either another display call or
  a routine such as `MPLAY`
- LCD persistence converts these timing differences into visible
  brightness differences


# 9 Why This Is Technically Interesting

This means the display engine is not merely drawing graphics.

It is using:

- display buffer selection
- CPU execution time
- LCD persistence

as part of the rendering method itself.

That is an elegant software-only grayscale solution.


# 10 Next Steps

Recommended next investigation steps:

- measure the relative execution cost of `VRAMPP`, `VRAMPP2`, and `MPLAY`
- determine the exact display area used by each VRAM buffer
- trace the ending loop in more detail
- identify how picture data is split between VRAM1 and VRAM2


# 11 Conclusion

The pseudo grayscale effect in Building Rescue is most likely governed by
timing-weighted display phases rather than a simple fixed call count.

The source suggests that the display cycle may include both display
routines and music playback time, especially during the ending sequence.

This matches the observed behavior that one display phase may be replaced
by a routine with a comparable machine-cycle cost.
