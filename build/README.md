# Build Directory

This directory contains reconstructed build outputs for the project.

---

## Purpose

- Store files generated during modern reconstruction
- Keep original sources untouched
- Enable reproducible builds and verification

---

## Structure

build/
  └─ xasm140/ - XASM 1.40 build outputs and verification data

---

## Role in this Project

This directory is used to:

- Reproduce the original binary from source
- Compare reconstructed builds with the original release
- Verify byte-level identity

The original program data is preserved in `/br110/`.  
All files here are derived artifacts.

---

## Notes

- Files in this directory are generated artifacts
- They may change during reconstruction work
- Original source files are never modified here
