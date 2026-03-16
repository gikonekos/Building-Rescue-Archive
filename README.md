# Building Rescue Archive

Archive of Building Rescue, an action game for the SHARP PC-E500 series pocket computers.

This repository preserves the original source code, binary, and documentation for the game, along with historical notes and a gameplay demonstration.

---

## About

Building Rescue is a building-climbing action game for the SHARP PC-E500 series.

The player controls a climber ascending the exterior of a building while avoiding falling objects and enemy attacks in order to reach the rooftop and rescue Mizuho.

The game was originally created in 1994 during the Japanese pocket computer hobbyist era.

According to the included documentation, the game features:

- full character animation
- pseudo-grayscale graphics techniques
- enhanced sound
- PCM-style sound effects
- optional SCC sound support

If SCC hardware is not connected, the game can also use the built-in BEEP sound.

---

## Platform

Tested on:

- SHARP PC-E550
- ROM Version 7.5

Required environment:

- SHARP PC-E500 series compatible machine
- 32 KB RAM or more

---

## Files

This repository contains the following original materials.

- BR.ASM — original XASM assembler source code
- BR.OBJ — assembled game object file
- BR110.TXT — later archive documentation (2008 distribution notes)
- BR.INF — original information file
- BRINF.TXT — Vector distribution header

These files are preserved as part of a historical software archive.

---

## Running

The included documentation explains loading the object file at address &BB000.

Example BASIC commands:

POKE &BFE03,&1A,&FD,&B,&0,&50,&0:CALL&FFFD8  
LOADM "L:BR.OBJ"  
CALL &BB000

---

## Gameplay

The player climbs the building by alternating left and right arm movement.

While climbing, the player must:

- move horizontally to avoid falling hazards
- brace against certain obstacles
- continue ascending toward the rooftop

The game contains four stages, after which the game loops.

---

## Video

Gameplay demonstration on real hardware:

https://youtu.be/i-AIbPmVMRU?si=nEv5tjyE0GfvfhcW

---

## Credits

Kenkichi Motoi

- game design
- scenario
- music
- graphics
- test play
- debugging

GAME Shokunin

- programming
- debugging
- test play

---

## Historical Context

During the late 1980s and early 1990s, Japanese pocket computers such as the SHARP PC-E500 series supported an active hobbyist development culture.

Many original games and utilities were distributed through magazines, bulletin board systems, and later through early online archives such as Vector.

Building Rescue reflects this era of independent software development on pocket computers.

---

## Preservation Note

This repository is intended as a historical preservation archive of the original PC-E500 game materials.

According to the included documentation (2008 archive notes), the author permits:

- analysis
- research
- modification
- redistribution

However, the documentation requests that commercial reuse of the source code be reported to the original author.

---

## License

Original rights remain with the respective authors.

This repository exists for historical preservation and research purposes.

## Related Projects

PLAY3 Archive  
https://github.com/gikonekos/PLAY3-Archive
