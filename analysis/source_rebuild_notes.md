# Building Rescue Source Reconstruction Notes

Technical notes on rebuilding the original Building Rescue v1.10 source code with XASM 1.40.

This document records issues encountered while attempting to assemble the archived source file BR_original.asm and the adjustments required for modern environments.


# 1. Source and Binary

Archive files:

- br110/BR_original.asm  
  Original assembler source.

- br110/BR.OBJ  
  Distributed binary object.

Target system:

- SHARP pocket computer series
- CPU: SC62015

Original development environment (assumed):

- NEC PC-9801
- MS-DOS
- XASM assembler


# 2. Assembly Attempt

The original source file was tested with XASM 1.40.

Attempted command:

    xasm BR_original.asm -L -O

Result:

The source does not assemble successfully without modification.

However, the failure is not caused by CPU instruction incompatibility.  
Instead, it appears to be caused by formatting assumptions of the original environment.


# 3. Observed Issues


## 3.1 Line ending incompatibility

The original file uses CRLF line endings.

Modern environments often require LF.

After converting line endings, the assembler proceeds much further before errors appear.


## 3.2 DB operand count limit

XASM appears to limit the number of operands in a single DB instruction.

Example that fails:

    DB _O4F,_O4A,_O4B,_RR,_O4F,_O4A,_O4B,_RR,_END

This contains 9 operands.

Workaround:

Split into multiple lines.

Example:

    DB _O4F,_O4A,_O4B,_RR,_O4F
    DB _O4A,_O4B,_RR,_END


## 3.3 Comments at the end of DB lines

Some lines use the format:

    DB 01EH,009H,009H,01FH,01EH ; A

In some cases XASM reports:

    Undefined instruction

Workaround:

Move the comment to a separate line.

Example:

    ; A
    DB 01EH,009H,009H,01FH,01EH


## 3.4 Half-width Kana inside strings

The source contains half-width Kana characters such as:

    'ﾅﾝﾊﾞｰ'

These characters depend on Shift-JIS / CP932 encoding.

Modern UTF-8 environments may corrupt these characters during assembly.

Possible solutions:

Option A (recommended)

Preserve original encoding (CP932).

Option B

Convert strings into explicit byte sequences.

Example:

    DB 0B6H,0DDH,0B0H,0D0H,0


# 4. Strategy for Rebuild

To assemble the source reliably in modern environments, the following steps are recommended.

1. Preserve the original file as archival source.

    BR_original.asm

2. Create a working copy.

    BR_xasmfix.asm

3. Apply the following adjustments:

- Convert line endings to LF
- Split large DB statements
- Move end-of-line comments
- Replace Kana strings with byte sequences (optional)

These changes should not affect the assembled binary.

The goal is to confirm whether the rebuilt binary matches:

    BR.OBJ


# 5. Patch Address Verification

Patch addresses printed in the original tips section were verified against BR.OBJ.

Confirmed addresses:

Address    Purpose
BB50C      sound control patch
BB0A2      starting round
BB0A5      number of lives

Addresses that appear inconsistent with this binary:

Address    Note
BB884      value differs from printed patch
BB92F      value differs from printed patch

This suggests that either:

- the printed patch addresses contain errors, or
- the patch refers to a different build.

Further analysis is required.


# 6. Recommended Repository Structure

Suggested placement in the archive repository:

    analysis/
      source_rebuild_notes.md

Additional future documents may include:

    analysis/
      source_rebuild_notes.md
      patch_address_analysis.md
      memory_map.md


# 7. Future Work

Planned investigation steps:

- rebuild source using adjusted assembler formatting
- compare rebuilt binary with BR.OBJ
- determine the correct addresses for the undocumented patches
- document the sound driver behaviour
