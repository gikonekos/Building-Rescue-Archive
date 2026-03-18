# Building Rescue Display Engine Analysis (Part 3)

Investigation of LCD control and grayscale generation in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015


# 1 LCD Hardware Characteristics

The target system uses a monochrome LCD.

Hardware capabilities:

    pixel ON
    pixel OFF

There is no hardware grayscale support.

Therefore any multi-level brightness effect must be generated in software.


# 2 Relevant I/O Ports

From the source analysis:

    OTO = &FD

This port is used for buzzer control.

Observed instructions include:

    XOR (0FDH),010H
    OR  (OTO),010H
    AND (OTO),0EFH
    AND (OTO),080H

This indicates that the program manipulates individual bits of port FD
to control audio output.

However, the masking operation using `80H` suggests that other bits of the
same port may control additional hardware functions.


# 3 Dual Use of Port FD

The instruction:

    AND (OTO),080H

clears most bits except the highest bit.

This implies that the port may contain multiple control signals.

Possible structure:

    bit 7 : LCD control or refresh signal
    bit 4 : buzzer output
    other bits : unknown / hardware control

If this interpretation is correct, the sound driver must preserve the
upper bit while manipulating the buzzer bit.


# 4 Relationship Between Sound and Display

Because both the display and sound routines operate through software timing,
the program may synchronize these operations.

The typical loop could be:

    main_loop
        update display phase
        toggle buzzer
        delay loop
        repeat

This creates a unified timing engine.


# 5 Pseudo-Grayscale Model

A software PWM scheme can simulate multiple brightness levels.

Example model:

level 0

    pixel always OFF

level 1

    pixel ON for 1 phase

level 2

    pixel ON for 2 phases

level 3

    pixel always ON

If the loop cycles rapidly, the LCD integrates these pulses visually.


# 6 Why This Works on LCD

LCD panels respond slowly compared to CPU speed.

Therefore:

    rapid pixel toggling
        →
    perceived intermediate brightness

This technique was occasionally used on small monochrome displays.


# 7 Integration With Ending Demo

The ending scene combines:

- animated graphics
- buzzer music (MPLAY)
- waveform sound effects (SPK)
- pseudo grayscale rendering

All are driven by CPU timing loops.


# 8 Architectural Insight

The program architecture appears to rely on a single timing engine
to drive multiple subsystems:

    display PWM
    music playback
    waveform effects
    animation timing

This is an efficient approach for systems without hardware timers.


# 9 Remaining Unknowns

To fully confirm the grayscale implementation, the following must be identified:

- the VRAM write routines
- LCD refresh instructions
- the phase control loop


# 10 Future Work

Recommended next investigation steps:

- locate the LCD write instructions
- identify memory addresses used for display buffers
- trace the ending demo main loop
- determine the exact PWM phase structure


# 11 Conclusion

Building Rescue most likely implements pseudo 4-level grayscale through
a time-sliced PWM technique coordinated with the program's sound and
animation timing loops.

This design demonstrates sophisticated use of CPU timing to overcome
hardware limitations of the target pocket computer platform.
