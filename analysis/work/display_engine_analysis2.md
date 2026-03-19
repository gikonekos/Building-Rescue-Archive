# Building Rescue Display Engine Analysis (Part 2)

Detailed analysis of the display update routines used in Building Rescue v1.10.

Target platform:

- SHARP pocket computer series
- CPU: SC62015


# 1 Display Update Routines

The source references several display-related routines:

SCRDV1  
SCRDV  
SCR  

These routines appear to form the core of the display update system.


# 2 SCRDV1 Usage

Example call sequence:

    PUSHU X
    MV X,MDAT3
    CALLF SPK
    CALLF SCRDV1
    POPU X

This sequence indicates that `SCRDV1` is executed immediately after
a waveform sound effect.

Interpretation:

`SCRDV1` likely refreshes part of the display or advances a display phase.


# 3 Possible Meaning of the Name

The naming convention suggests:

SCR   = screen routine  
DV    = display variant or display update  

Therefore:

SCRDV1 may represent a specific display refresh stage.


# 4 Role in Timing System

Because both sound playback and display updates are software driven,
they must share CPU time.

A typical cycle may look like this:

    main loop
        update logic
        render display
        play music
        play effect
        refresh display


# 5 Interaction With SPK

The observed call pattern suggests that waveform sound playback may
temporarily block the CPU.

After the SPK routine finishes, the display routine runs to keep the
screen animation consistent.


# 6 Display Data Model

The graphics system does not appear to rely on tile-based rendering.

Instead it likely performs direct screen memory manipulation.

Advantages of this approach:

- flexible sprite rendering
- custom grayscale timing
- easier control of animation timing


# 7 Hypothesis: Phase-Based Rendering

The pseudo 4-level grayscale likely requires multiple display phases.

Example model:

phase 0

    draw bright pixels

phase 1

    draw medium pixels

phase 2

    draw dim pixels

phase 3

    clear or hold pixels


# 8 Integration With Game Loop

The display routines are likely integrated into the central game loop.

Pseudo structure:

    game loop
        input
        game logic
        display update
        sound update
        repeat


# 9 Importance for Grayscale

The grayscale effect depends on repeatedly toggling pixel states
at controlled intervals.

Therefore the display routines must execute at predictable timing.


# 10 Future Work

Further investigation should focus on:

- identifying the main display loop
- mapping VRAM access instructions
- determining the pixel memory layout
- reconstructing the grayscale timing cycle


# 11 Conclusion

The display engine appears to be closely tied to the program's timing
system, sharing CPU cycles with the sound driver and game logic.

This architecture likely enables the pseudo 4-level grayscale effect
observed during the ending demonstration.
