# Building Rescue Archive – Conversation Context

## Project

**Building Rescue Archive**

Repository  
https://github.com/gikonekos/Building-Rescue-Archive

This project preserves historical software for the **SHARP PC-E500 / PC-E550 pocket computer series**.

The goal is **historical preservation and documentation**, not modern modification.

---

## Repository contents

Main materials preserved in the repository:

- Original assembly source  
  `BR.asm`

- Original assembly (unaltered preservation copy)  
  `BR_original.asm`

- Object binary  
  `BR.OBJ`

- Documentation files  
  `BR110.TXT`  
  `BRINF.TXT`

- Historical materials  
  `docs/`

- Project explanation  
  `README.md`

---

## Technical environment

Target machine:

- CPU: **SC62015**
- Display: **STN LCD**

---

## Grayscale technique

The game demonstrates a **pseudo 4-level grayscale effect**.

Implementation:

- Two **virtual VRAM screens**
- High-speed screen switching
- Timing ratio **1 : 2**

The effect relies on the **slow response time of STN LCD panels**.

Important characteristics:

- No spatial dithering
- No interrupt usage
- Screen switching uses a normal high-speed display routine

The technique was **discovered accidentally during development**.

Clarification:

- Virtual VRAM screens: **2**
- Not 3.

---

## Graphics

Title screen and graphics were drawn by the **repository author**.

---

## Historical context

Distribution history:

1. Original **full version distributed via BBS**
2. Later **mini version published in a magazine**

Additional preserved materials include:

- PJ Plaza comic drawn by the author
- Real hardware demonstration photos (PC-E550)

---

## Related project

PLAY3 Archive

https://github.com/gikonekos/PLAY3-Archive

This project preserves a **three-voice buzzer music driver** for the same hardware series.

---

## User background

The repository author:

- works in **goods design and electronic publishing**
- actively preserves **Japanese pocket computer software history**

---

## Conversation policy for this thread

1. Do **not repeat previously answered questions**.
2. Do **not propose new improvements unless explicitly requested**.
3. Assume the **README structure and archive are already finalized**.
4. Focus only on **technical discussion, documentation help, or historical clarification**.
5. Avoid **looping questions or speculative suggestions**.

---

## Goal of the conversation

Assist with:

- documentation clarification
- historical context
- technical explanation
- analysis related to the repository
- related pocket computer preservation projects

Only when requested by the user.
