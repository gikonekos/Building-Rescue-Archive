# Building Rescue Display Engine Analysis

Analysis of the display system used in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015
- monochrome LCD

Despite the monochrome display, the game produces a pseudo 4-level grayscale
effect during the ending sequence.


# 1 Overview

The display hardware of the target pocket computer provides only a binary LCD:

    pixel ON
    pixel OFF

However, the ending demonstration of Building Rescue shows apparent
four-level shading.

This indicates that the program implements a software-based grayscale
technique.


# 2 Possible Grayscale Methods

Two classical methods exist for producing grayscale on monochrome LCD systems.

Method A

    frame dithering

Two full frames are alternated to create intermediate brightness.

Method B

    time-integrated PWM

Pixels are turned on for different portions of time within a refresh cycle.


# 3 Observed Behaviour

Based on user observation:

- no visible flicker pattern
- shading appears smooth
- animation and music run simultaneously

This strongly suggests that the program uses a **time-sliced PWM technique**
rather than frame dithering.


# 4 Hypothesized Rendering Loop

The ending scene likely uses a loop similar to the following:

    main_loop
        update animation
        draw graphics
        grayscale phase 0
        grayscale phase 1
        grayscale phase 2
        grayscale phase 3
        update music
        repeat

Each phase controls which pixels remain enabled.


# 5 PWM Brightness Model

A possible brightness model:

Level 0

    always OFF

Level 1

    ON during phase 0

Level 2

    ON during phases 0 and 1

Level 3

    always ON

The LCD integrates these pulses visually into perceived brightness.


# 6 Interaction With Sound

The game uses software-driven sound generation:

- `MPLAY`
- `PLAY2`
- `SPK`

All of these rely on CPU timing loops.

Therefore display timing and sound generation are likely coordinated within
the same master timing loop.


# 7 Direct VRAM Rendering

The game engine does not appear to rely on tile graphics.

Instead it likely uses direct pixel writes to the display memory.

Advantages:

- flexible animation
- custom grayscale control
- easier porting across similar hardware


# 8 Why This Design Works

Pocket computer LCDs have relatively slow response times.

This allows PWM-style pixel toggling to blend visually into stable grayscale.

The CPU-driven loop controls:

- pixel duty cycle
- animation updates
- buzzer timing


# 9 Technical Significance

Combining these systems creates a unified timing engine:

    display PWM
    music playback
    waveform effects

All are implemented through precise CPU timing control.

This design demonstrates a high level of optimization for a constrained
platform.


# 10 Future Investigation

Further analysis should identify the following routines:

- the primary VRAM write routine
- grayscale phase switching logic
- ending sequence rendering code

These will confirm the exact grayscale implementation.


# 11 Conclusion

Building Rescue likely implements pseudo-grayscale through a time-sliced
software PWM technique.

This allows a monochrome LCD to simulate four brightness levels while
simultaneously running music and sound effects.

Such a design is unusually sophisticated for a pocket computer game.

Note: the pseudo grayscale mechanism documented in
`grayscale_mechanism_notes.md` is used only for demonstration screens
such as the title and ending sequences.

Normal gameplay and stage clear screens use standard monochrome
rendering for performance and clarity.
