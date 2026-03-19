# Display Pipeline Analysis

## 1. Overview

Building Rescue uses **two distinct display pipelines**:

1. Monochrome gameplay rendering  
2. Bitmap-based pseudo-grayscale rendering (demo / title / ending)

These two modes are clearly separated in the control flow and use different VRAM update strategies.

---

## 2. Rendering Paths

### 2.1 Gameplay Display Path (Monochrome)

Gameplay rendering follows a simple loop:

- Clear → Draw → Transfer → Repeat

Typical sequence:

    CALLF VRAMCL1
    CALLF TIT
    CALLF KEYP
    CALLF MWIN
    CALLF DISP
    CALLF VRAMPP

Key characteristics:

- Single-plane rendering
- Only `VRAMPP` is used
- No alternating buffer
- Stable monochrome display

---

### 2.2 Demo / Title Display Path (Pseudo-Grayscale)

The title and demo use a different loop:

    CALLF VRAMPP
    CALLF VRAMPP
    CALLF VRAMPP2
    CALLF TRIG0

Key characteristics:

- Bitmap-based rendering (`DTITG`, `DTITH`)
- Alternating VRAM output (`VRAMPP` / `VRAMPP2`)
- Produces pseudo-grayscale effect

This is the clearest confirmed grayscale simulation loop.

---

## 3. Display Control Flow

### 3.1 Mode Switching

The program explicitly switches between:

- Bitmap mode (title / demo)
- Object rendering mode (gameplay)

This transition occurs after title initialization and before entering the main gameplay loop.

---

### 3.2 Scheduler / Timing

- Gameplay uses a stable frame loop
- Demo mode uses rapid alternating output
- Timing differences are essential for grayscale perception

---

## 4. VRAM Handling

### 4.1 VRAM Roles

- `VRAMCL1` / `VRAMCL2` → clear buffers
- `VRAMPP` → primary transfer
- `VRAMPP2` → secondary transfer (grayscale)

---

### 4.2 Transfer Behavior

- Gameplay → single transfer per frame
- Demo → multiple transfers per frame

This difference directly creates the grayscale illusion.

---

## 5. Grayscale Mechanism

### 5.1 Basic Mechanism

Pseudo-grayscale is achieved by:

- alternating two display buffers
- rapidly switching output

Core pattern:

    VRAMPP → VRAMPP → VRAMPP2

This produces perceived intensity differences.

---

### 5.2 Timing Characteristics

- grayscale depends on execution speed
- CPU-driven timing (no hardware grayscale)
- display persistence blends frames

---

## 6. Key Routines

- `VRAMCL1` / `VRAMCL2` — buffer clear
- `VRAMPP` — main display transfer
- `VRAMPP2` — alternate display transfer
- `DTITG` / `DTITH` — bitmap expansion
- `DISP` — gameplay rendering
- `MPLAY` — audio timing interaction

---

## 7. Conclusion

Building Rescue implements a **dual rendering architecture**:

- deterministic monochrome gameplay loop
- timing-dependent pseudo-grayscale demo loop

This design reflects both:

- hardware limitations (1-bit display)
- creative software-driven rendering techniques
