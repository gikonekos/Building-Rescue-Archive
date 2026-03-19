# Analysis Overview

This directory contains **validated and consolidated analysis results**
for the Building Rescue archive.

Working notes, intermediate hypotheses, and experimental logs are preserved in:

- `analysis/work/`

## Core Analysis

The following documents represent the core technical findings of this project:

- `display_pipeline_analysis.md`  
  → Rendering architecture and grayscale mechanism

- `vram_and_display_memory_analysis.md`  
  → VRAM structure and memory behavior

- `sound_system_analysis.md`  
  → Dual sound system (tone + bitstream playback)
  

---

## Recommended Reading Order

For a quick understanding of the system:

1. `patch_address_analysis.md`  
   → Verified corrections to published patch addresses

2. `sprite_drawing_analysis.md`  
   → Core rendering behavior

3. `stage_map_analysis.md`  
   → Game structure and data layout

4. `source_rebuild_notes.md`  
   → Reconstruction methodology

5. `cross_development_notes.md`  
   → Historical development context

---

## Notes

- Files in `work/` include early hypotheses, redundant analyses, and raw investigation logs.
- These are preserved for historical and verification purposes.
- Consolidated documents represent the most reliable conclusions.

---

## Status

- Real hardware verification: completed
- Binary validation: completed
- Patch corrections: verified
