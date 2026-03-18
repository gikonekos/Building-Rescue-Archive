# Building Rescue Grayscale Mechanism Notes

Notes on the pseudo grayscale method used in the ending sequence of
Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015
- monochrome LCD


# 1 Key Observation

A practical test showed that pseudo grayscale can be produced by calling the
display routines in the following order:

    CALL VRAM1
    CALL VRAM2
    CALL VRAM2

This is a crucial observation.


# 2 Interpretation

This strongly suggests that the grayscale system is based on a weighted
time-slice method.

One display cycle is divided into three sub-phases:

    phase 1 = VRAM1
    phase 2 = VRAM2
    phase 3 = VRAM2

So VRAM1 has a weight of 1, while VRAM2 has a weight of 2.


# 3 Brightness Model

With this structure, each pixel can have four visible states:

    00 = visible in neither plane   = 0/3 duty = white
    10 = visible only in VRAM1      = 1/3 duty = light gray
    01 = visible only in VRAM2      = 2/3 duty = dark gray
    11 = visible in both planes     = 3/3 duty = black

This naturally produces four perceived brightness levels on a binary LCD.


# 4 Why It Works

The LCD is physically monochrome, but it has a relatively slow response time.

Therefore rapid repeated updates are visually integrated by the eye and the
panel itself into an average brightness level.

This makes the following software-only grayscale possible:

    0/3
    1/3
    2/3
    3/3


# 5 Architectural Meaning

The display engine is best understood as a weighted dual-plane system.

It is not simply:

    one monochrome framebuffer

and not necessarily a conventional packed 2-bit framebuffer either.

Instead, it is more likely:

    plane A = weak brightness contribution
    plane B = strong brightness contribution


# 6 Why VRAM2 Is Called Twice

Calling VRAM2 twice gives it twice the temporal weight of VRAM1.

That means the author can encode two different gray levels by choosing whether
a pixel belongs to:

- VRAM1 only
- VRAM2 only
- both


# 7 Technical Significance

This is an elegant solution.

It avoids a more expensive PWM scheme while still producing four apparent
brightness levels:

- white
- light gray
- dark gray
- black

on hardware that only supports ON/OFF pixels.


# 8 Relation to the Ending

This also explains why the effect is especially suitable for the ending demo.

The ending has fewer gameplay constraints, so CPU time can be spent on a
carefully timed display cycle.

A likely structure is:

    VRAM1
    VRAM2
    VRAM2
    music update
    input check
    repeat


# 9 Current Best Hypothesis

The ending grayscale effect of Building Rescue is produced by a weighted
three-phase display loop:

    CALL VRAM1
    CALL VRAM2
    CALL VRAM2

This yields four visible brightness levels through temporal weighting.


# 10 Future Work

Recommended next steps:

- identify the exact routines corresponding to VRAM1 and VRAM2
- confirm whether these match VRAMPP and VRAMPP2
- determine how picture data is split between the two planes
- trace the ending loop to confirm the exact call order


# 11 Conclusion

The pseudo 4-level grayscale effect in Building Rescue is most likely based on
a weighted dual-plane timing method rather than simple frame dithering.

The key mechanism is the repeated display sequence:

    CALL VRAM1
    CALL VRAM2
    CALL VRAM2

This is sufficient to create four visible brightness levels on a monochrome LCD.
