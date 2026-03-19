# XASM 1.40 Build (Reconstruction and Verification)

This directory contains reference files, build artifacts, and verification results for
**Building Rescue (SHARP PC-E500, 1994)** using XASM 1.40.

## Reference (Ground Truth)

These files represent the verified baseline.

- **BR.ASM**  
  Original assembler source from the archived distribution.

- **BR.LST**  
  Listing file generated from BR.ASM in the original PC-9801 environment.

- **BR.OBJ**  
  Object file generated from BR.ASM.  
  This binary is byte-for-byte identical to the original release.

## Original Assembler

- **xasm140.zip**  
  Archived XASM 1.40 package used for rebuilding and verification.

## Intermediate Comparison Results

These files were produced during investigation.

- **BR110.LST**  
  Intermediate listing file used for comparison.

- **BR110.OBJ**  
  Intermediate object file that does not match the original binary.

## Modern Reconstruction

These files were produced in a modern environment.

- **BR_comment_translation.tsv**  
  Mapping of original Japanese comments to English translations.

### Initial build

- **BR_english_build.asm**
- **BR_english_build.lst**
- **BR_english_build.obj**

First successful modern assembly.
The output binary did not yet match the original.

### Fixed build

- **BR_english_build_fixed.asm**
- **BR_english_build_fixed.lst**
- **BR_english_build_fixed.obj**

Adjusted build with reduced binary differences.
A partial mismatch remained.

### Final exact-match build

- **BR_english_build_split5.asm**
- **BR_english_build_split5.lst**
- **BR_english_build_split5.obj**

Final reconstructed build for modern environments.

This version:

- assembles correctly with XASM 1.40
- reproduces the original binary exactly
- preserves the original program data

## Technical Note

The remaining differences in earlier modern builds were caused by how XASM handled
certain multi-operand `DB` statements.

In particular:

- 5-byte `DB` rows in tables such as `ALPDAT` and `SPCHR`
- the first byte could be misparsed in modern reconstruction workflow

Resolution:

- split affected 5-byte `DB` rows into single-byte statements
- no data values were changed

## Summary

This directory preserves:

- the verified original build baseline
- intermediate comparison results
- the exact-match modern reconstruction process
