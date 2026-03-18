# Building Rescue Display Scheduler Analysis

Analysis of the display-time scheduling used in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015

Relevant routines:

- `VRAMPP`
- `VRAMPP2`
- `VRAMSS`
- `TRIG0`
- `MPLAY`


## 1 Overview

The pseudo grayscale effect in Building Rescue does not appear to come from a
special grayscale instruction or a dedicated hardware feature.

Instead, it is most likely produced by the timing of the display loop itself.

The key point is that the program repeatedly shows two different bitmap planes
with unequal time weight.


## 2 Important Clarification

This scheduler belongs only to the demo bitmap path:

- title
- ending

It is not the normal gameplay renderer.

Gameplay and stage-clear scenes remain monochrome.


## 3 Confirmed Title Loop

The title loop is:

    AA5:
        CALLF VRAMPP
        CALLF VRAMPP
        CALLF VRAMPP2
        CALLF TRIG0
        JR AA5

This is the clearest confirmed display scheduler in the program.


## 4 Time Weighting

The title loop shows:

- `VRAMPP` twice
- `VRAMPP2` once

So the display ratio is:

    plane A : plane B = 2 : 1

If the two planes encode different brightness contributions, this produces a
time-weighted pseudo grayscale effect.


## 5 Brightness Model

A practical model is:

- neither plane set  -> white
- plane B only       -> weak contribution
- plane A only       -> stronger contribution
- both planes set    -> darkest tone

Because plane A is shown twice and plane B once, the actual visible weight is
not symmetric.

This matches the user's real-machine observation that the effect behaved well
on older LCDs but becomes less stable on newer, faster LCDs.


## 6 Role of TRIG0

`TRIG0` is called at the end of the title loop:

    CALLF TRIG0

This suggests that `TRIG0` is part of frame pacing, input timing, or LCD-safe
loop scheduling.

At minimum, it is clearly part of the repeated display cycle.

Current evidence does not yet prove that `TRIG0` is a hard vertical-sync wait,
but it is very likely part of the timing control that stabilizes the demo loop.


## 7 Confirmed Ending Loop

The ending loop is structurally different:

    CLL0:
        CALLF VRAMPP
        ...
        CALLF MPLAY
        CALLF VRAMPP2
        ...
        JR CLL0

So the ending does not use the exact same `2:1` loop as the title.

Instead, its display timing is likely shaped by:

- one `VRAMPP`
- one `VRAMPP2`
- the execution time of `MPLAY`
- surrounding loop work


## 8 Meaning of the Ending Loop

The ending loop still alternates the two demo planes, but the effective time
weight may come from total execution time between calls rather than from an
explicit duplicate `VRAMPP`.

So the scheduler should be understood as:

- title: explicit plane repetition
- ending: implicit time-weighting through mixed work inside the loop


## 9 Role of VRAMSS

`VRAMSS` is the transfer core used by both `VRAMPP` and `VRAMPP2`.

Its confirmed roles are:

- consume a 768-byte internal display region
- reorder bytes during transfer
- write to LCD controller ports

Current evidence strongly supports:

    VRAMSS = format-aware LCD transfer routine

Current evidence does not yet prove:

    VRAMSS = explicit delay / wait routine for grayscale timing

So timing control should presently be assigned to the higher-level loop,
not to `VRAMSS` alone.


## 10 Why the LCD Matters

The pseudo-grayscale effect depends on the physical response time of the LCD.

Observed behavior:

- original older LCDs: effect appears stable
- aged LCDs: slight flicker becomes noticeable
- newer faster LCDs (for example later machines): effect becomes less stable

This is exactly what would be expected from a time-multiplexed two-plane
display method.


## 11 Best Current Interpretation

The most likely scheduler model is:

Title:

    plane A
    plane A
    plane B
    timing/input step
    repeat

Ending:

    plane A
    music / loop work
    plane B
    loop control
    repeat

So the grayscale illusion is produced by loop timing, not by a dedicated
hardware grayscale mode.


## 12 What Is Confirmed

The following points are strongly supported:

- the title uses an explicit `VRAMPP`, `VRAMPP`, `VRAMPP2` loop
- the ending uses both `VRAMPP` and `VRAMPP2`
- demo screens use two separate bitmap planes
- the grayscale effect depends on time-weighted plane display
- the effect is LCD-response dependent


## 13 What Still Needs Verification

The following points remain open:

- exact internal behavior of `TRIG0`
- exact execution cost of `VRAMPP`, `VRAMPP2`, and `MPLAY`
- whether title brightness weighting maps exactly to `2:1` visible duty
- whether the ending loop produces the same effective ratio or a different one


## 14 Conclusion

Building Rescue uses a software display scheduler for its demo bitmap path.

The title loop explicitly shows a two-plane `2:1` display ratio, while the
ending loop appears to produce a similar grayscale illusion through mixed
display and music timing.

The effect depends on the slow response characteristics of the original LCD
and should be understood as a time-scheduled presentation technique rather
than a general in-game display mode.
