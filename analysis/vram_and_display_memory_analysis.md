# VRAM and Display Memory Analysis

## 1. Overview

Building Rescue uses a structured VRAM system that supports both:

- object-based gameplay rendering
- bitmap-based demo rendering

The system relies on multiple internal buffers and address control mechanisms.

---

## 2. VRAM Structure

### 2.1 Memory Layout

The display system uses two main working buffers:

- VRAM1 — primary buffer
- VRAM2 — secondary buffer

These buffers are alternately transferred to the LCD.

---

### 2.2 Buffer Organization

- buffers are cleared using `VRAMCL1` / `VRAMCL2`
- drawing operations write into these buffers
- output is controlled via transfer routines (`VRAMPP`, `VRAMPP2`)

---

## 3. Coordinate Mapping

### 3.1 Screen to Memory Mapping

Screen coordinates are mapped into VRAM addresses using:

- row-based offset
- bit-level horizontal positioning

This allows pixel-level control within a byte-oriented memory structure.

---

### 3.2 Address Calculation

Address calculation typically follows:

- base address + row offset + column bit shift

The system uses efficient arithmetic to convert logical positions into memory locations.

---

## 4. VRAMSS Mechanism

### 4.1 Role of VRAMSS

`VRAMSS` functions as an internal pointer mechanism controlling:

- write position
- sequential memory traversal

---

### 4.2 Address Progression Behavior

Analysis confirms:

- increments occur in fixed-size steps (~192 bytes)
- progression aligns with screen line structure

This suggests a scanline-oriented memory organization.

---

## 5. Bitmap Data Format

### 5.1 Demo Bitmap Structure

Demo sequences use compressed bitmap data:

- stored in a compact format
- expanded during rendering

Routines such as `DTITG` / `DTITH` handle this expansion.

---

### 5.2 Expansion Process

- bitmap data is decoded
- expanded into VRAM buffers
- then transferred to display

This process is separate from gameplay rendering.

---

## 6. Rendering Implications

The VRAM system enables:

- efficient object rendering (gameplay)
- high-density bitmap output (demo)

Combined with alternating buffer output, this supports pseudo-grayscale effects.

---

## 7. Conclusion

The VRAM architecture in Building Rescue is designed to:

- separate rendering modes
- support both structured drawing and bitmap expansion
- enable advanced visual effects using software-driven techniques
