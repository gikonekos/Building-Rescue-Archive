# Sound System Analysis

## 1. Overview

Building Rescue implements two distinct sound generation methods:

1. Tone-based beeper playback (music and simple sounds)  
2. Bitstream-based waveform playback (effects)

---

## 2. Tone Playback System (MPLAY)

### 2.1 Structure

The `MPLAY` routine processes music data as a sequence of encoded notes.

- Each byte represents a note or control
- Values are used to index frequency tables
- Playback is handled by `PLAY2` and `REST2`

---

### 2.2 Waveform Generation

`PLAY2` generates sound by toggling a speaker control bit:

    XOR (0FDH),010H
    (timing loop)
    AND (0FDH),0EFH

This produces a square wave.

---

### 2.3 REST Handling

`REST2` disables output while maintaining timing.

---

## 3. Bitstream Playback System (SPK)

### 3.1 Structure

The `SPK` routine plays back packed waveform data.

Each sound entry has the following format:

    DB speed
    DW length
    DB data...

---

### 3.2 Playback Mechanism

Playback proceeds as follows:

1. Read speed value  
2. Read data length  
3. For each byte:  
   - process 8 bits (MSB first)  
   - output ON/OFF to speaker  
   - wait for `speed` cycles  

---

### 3.3 Output Control

Speaker output is controlled via a single bit:

- bit set → speaker ON  
- bit cleared → speaker OFF  

Typical operations:

    OR  (OTO),010H
    AND (OTO),080H

---

## 4. Nature of the Waveform

### 4.1 1-bit Sample Playback

Each byte represents 8 consecutive 1-bit samples.

This is:

- not multi-bit PCM  
- not hardware PWM  

Instead:

- software-driven 1-bit waveform playback  
- bitstream sample playback  

---

### 4.2 Timing Dependency

Playback quality depends on:

- CPU execution speed  
- loop timing (`SPEED` parameter)

---

## 5. Data Analysis (MDAT3 / MDAT4)

### 5.1 Structure

Example:

    DB 8
    DW length
    DB waveform data...

---

### 5.2 Observations

- values such as `FF`, `00`, `7F`, `1F` appear frequently  
- indicates direct waveform encoding  
- not frequency-based data  

---

### 5.3 Differences

- MDAT3  
  - speed = 8  
  - shorter data  

- MDAT4  
  - speed = 6  
  - longer data  
  - higher playback rate  

---

## 6. System Relationship

| System | Purpose | Method |
|--------|--------|--------|
| MPLAY  | Music  | Square wave |
| SPK    | Effects| Bitstream waveform |

---

## 7. Conclusion

Building Rescue combines:

- traditional beeper tone generation  
- software-driven 1-bit waveform playback  

This enables richer sound effects despite 1-bit hardware limitations.
