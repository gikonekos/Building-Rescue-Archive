# Building Rescue Sound Driver Analysis

Analysis of the sound routine used in Building Rescue v1.10.

Target platform:

SHARP pocket computer series  
CPU: SC62015

The system only provides a 1-bit buzzer, therefore all sound must be generated
by software timing.


# 1 Overview

The game contains a small sound routine used for:

- sound effects
- short PCM-like bursts

The routine appears to control the buzzer directly through timed loops.


# 2 Entry Point

The sound routine can be reached through code around address:

    &BB50C

This address is referenced in the tips section for the sound-disable patch.

Original value:

    2B

Patch:

    POKE &BB50C,07

This change effectively disables sound.


# 3 Behaviour of the Patch

Changing the value at BB50C modifies the control flow of the sound routine.

Observed effect:

- sound generation is skipped
- gameplay continues normally

This indicates that BB50C lies inside the sound driver entry logic.


# 4 Sound Generation Model

The hardware provides only:

    1-bit buzzer output

Therefore sound must be produced by toggling the output pin at specific
intervals.

Typical pattern:

    toggle buzzer
    wait loop
    toggle buzzer
    wait loop

The pitch of the sound depends on the delay loop length.


# 5 Software Mixing Possibility

Some effects in the game sound richer than a simple beep.

Possible explanation:

- rapid frequency switching
- short burst playback
- pseudo-PCM techniques

This technique was sometimes used on pocket computers to simulate
multi-level sound using a 1-bit output.


# 6 Timing Control

The SC62015 CPU is fast enough to generate audio using tight loops.

Typical structure:

    load frequency value
    delay loop
    toggle buzzer
    repeat

Different delay values correspond to different sound pitches.


# 7 PCM-like Playback

Some effects suggest a primitive PCM-like approach.

Possible implementation:

    read value
    output bit
    small delay
    repeat

This produces a rough waveform.


# 8 Interaction With Game Logic

The sound routine is probably called from:

- player actions
- enemy events
- game state transitions


# 9 Future Work

Further investigation steps:

- locate the full sound routine
- identify buzzer I/O register
- detect waveform tables if present
- confirm whether PCM playback is used


# 10 Research Significance

Pocket computers rarely implemented complex sound.

The Building Rescue sound driver demonstrates techniques used to
extend a simple buzzer into a richer sound system.

Further analysis may reveal early software audio techniques on
SC62015-based machines.
