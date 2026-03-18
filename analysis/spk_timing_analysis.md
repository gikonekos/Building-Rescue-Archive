# Building Rescue SPK Timing Analysis

Timing analysis of the SPK waveform playback routine.

Target platform:

- SHARP pocket computer series
- CPU: SC62015

Related routine:

- `SPK` at `&BB642`


# 1 Overview

The SPK routine outputs one buzzer state per waveform bit.

Each bit output is followed by a software delay loop controlled by the
`SPEED` parameter.

Therefore playback duration is approximately:

    playback_time ≈ bit_count × delay_time


# 2 Waveform Sizes

From the source analysis:

MDAT3

    bytes = 199
    bits  = 1592
    speed = 8

MDAT4

    bytes = 464
    bits  = 3712
    speed = 6


# 3 Playback Workload Estimate

SPK executes one delay loop per bit.

Approximate workload:

MDAT3

    1592 bits × speed 8
    ≈ 12736 delay iterations

MDAT4

    3712 bits × speed 6
    ≈ 22272 delay iterations


# 4 Relative Duration

Even though MDAT4 uses a smaller speed value, its waveform length is much
longer.

Estimated relative duration:

MDAT3  → short effect  
MDAT4  → long effect


# 5 CPU Usage

The SPK routine occupies the CPU for the entire playback duration.

During SPK playback:

- no game logic runs
- no display update occurs
- the CPU is dedicated to waveform output

This means SPK effects must remain relatively short.


# 6 Why the Game Uses Two Sound Systems

The game separates audio into two systems:

Music system

    MPLAY / PLAY2

Waveform system

    SPK

This allows:

- continuous BGM playback using tone loops
- expressive effects using waveform bursts


# 7 Likely Game Usage

Based on the call sites:

MDAT3

- short event sound
- collision / damage effect

MDAT4

- timed or demonstration effect
- possibly used during ending scenes


# 8 Timing Significance

Because playback time depends directly on waveform bit count,
the designer must carefully tune:

- waveform length
- speed value

to balance sound quality and gameplay responsiveness.


# 9 Design Observation

The sound system demonstrates a hybrid design:

1. note-table buzzer music
2. bitstream waveform effects

This is unusually advanced for a pocket computer game.


# 10 Future Work

Further investigation could include:

- measuring exact delay loop cycles
- estimating real-time playback duration
- reconstructing waveform amplitude patterns
- converting bitstreams into audible audio
