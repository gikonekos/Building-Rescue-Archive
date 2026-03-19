# Build Directory

This directory contains reconstructed build outputs and verification data for the project.

## Purpose

- Store files generated during reconstruction
- Keep original source preservation separate from generated artifacts
- Enable reproducible builds and byte-level verification

## Structure
```
build/
  └─ xasm140/ - XASM 1.40 reference and reconstruction files
```
## Role in this Project

This directory is used to:

- reproduce the original binary from source
- compare reconstructed builds with the original release
- preserve the verification process

The original archived program files are preserved separately in `/br110/`.
Files in this directory are build and verification artifacts.

## Notes

- Files here may be added as verification progresses
- Original source preservation is not performed in this directory
- Exact-match reconstruction results are documented under `build/xasm140/`
