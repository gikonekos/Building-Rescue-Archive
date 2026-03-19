# XASM 1.40 Build (Linux)

This directory contains a reconstructed build of Building Rescue (BR.OBJ)
using XASM 1.40 on a modern environment.

## Files

- BR_english_build.asm  
  Preprocessed assembly source (LF, ASCII-safe, comment-mapped)

- BR_english_build.lst  
  Listing file generated with -L option

- BR_english_build.obj  
  Assembled object file (verification target)

- BR_comment_translation.tsv  
  Mapping of original Japanese comments to English translations

## Notes

- The original source is preserved in /br110/BR_original.asm
- This build is a compatibility reconstruction for modern XASM
- No original information is removed; comments are mapped externally
