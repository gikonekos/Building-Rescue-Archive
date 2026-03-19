# XASM 1.40 Build (Reconstruction and Verification)

This directory contains build artifacts and verification results for  
**Building Rescue (SHARP PC-E500, 1994)** using XASM 1.40.

---

## Reference (Ground Truth)

These files represent the correct baseline.

- **BR.ASM**  
  Original assembler source from the archived distribution.

- **BR.LST**  
  Listing file generated from BR.ASM on a PC-9801 environment.

- **BR.OBJ**  
  Object file generated from BR.ASM.  
  This binary is byte-for-byte identical to the original release.

---

## XASM 1.40

- **xasm140.zip**  
  Original assembler used for this build.

This allows rebuilding the program in an environment consistent with the original workflow.

---

## Comparison / Intermediate Results

These files were produced during validation and comparison.

- **BR110.LST**  
  Intermediate listing file used during investigation.

- **BR110.OBJ**  
  Intermediate object file (not identical to the original).

---

## Reconstruction (Modern Environment)

These files are reconstructed builds using a modern (Linux) environment.

- **BR_comment_translation.tsv**  
  Mapping of original Japanese comments to English translations.

---

### Initial build

- **BR_english_build.asm**  
- **BR_english_build.lst**  
- **BR_english_build.obj**

First successful assembly in modern environment.  
Binary did not match the original.

---

### Fixed build

- **BR_english_build_fixed.asm**  
- **BR_english_build_fixed.lst**  
- **BR_english_build_fixed.obj**

Adjusted version to reduce binary differences.  
Partial mismatch remained.

---

### Final build (Exact match)

- **BR_english_build_split5.asm**  
- **BR_english_build_split5.lst**  
- **BR_english_build_split5.obj**

Final reconstructed build.

- Assembles correctly with XASM 1.40 (modern environment)
- Produces a binary **identical to BR.OBJ**
- Preserves original structure and data

---

## Build Notes

- Original source builds correctly on PC-9801 environment
- Modern environments require preprocessing for compatibility
- Character encoding must be handled carefully (CP932 vs UTF-8)

---

## Technical Note

The remaining differences were caused by how XASM parses multi-operand `DB` statements.

Specifically:

- 5-byte `DB` rows in certain tables (e.g. ALPDAT, SPCHR)
- The first byte may be misinterpreted in modern environments

Resolution:

- Split affected `DB` rows into single-byte statements
- No change to data values or structure

---

## Summary

- Original source is verified
- Build reproducibility is established
- Modern reconstruction achieves **byte-level identity**

This directory preserves the complete process from reconstruction to verification.
