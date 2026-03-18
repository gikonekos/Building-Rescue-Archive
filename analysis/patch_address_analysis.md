# Building Rescue Patch Address Analysis

Verification of the patch addresses described in the original Building Rescue tips section.

The addresses were checked against the archived binary:

    br110/BR.OBJ

Target system:

    SHARP pocket computer series
    CPU: SC62015


# 1 Overview

The original tips section for Building Rescue describes several memory patches
that can modify gameplay behaviour.

Examples include:

- disabling sound
- forcing BEEP sound
- changing number of lives
- changing starting round

However, when tested on real hardware, some of these addresses did not behave
as described.

Therefore the addresses were verified against the archived binary.


# 2 Binary Used

The verification was performed using the archived object file:

    br110/BR.OBJ

The runtime base address of the program is:

    &BB000


# 3 Patch Address Verification

The following table compares the values described in the printed tips with the
actual bytes found in the binary.

Address    Expected value    Actual value    Result
---------------------------------------------------
BB50C      2B                2B              OK
BB884      61                07              Mismatch
BB92F      01                34              Mismatch
BB0A2      01                01              OK
BB0A5      03                03              OK


# 4 Sound Disable Patch

Printed patch:

    POKE &BB50C,07

Original value:

    2B

Result:

This address matches the binary and the patch appears valid.


# 5 DELTA Detection Patch

Printed patch:

    POKE &BB92F,00

Expected original value:

    01

Actual binary value:

    34

Result:

This address does not match the archived binary.


# 6 Secondary Sound Patch

Printed patch:

    POKE &BB884,07

Expected original value:

    61

Actual binary value:

    07

Result:

The value does not match the printed description.

This suggests either:

- a typo in the original tips section
- a patch intended for a different build


# 7 Gameplay Parameter Patches

The gameplay patches match the binary.

Starting round:

    POKE &BB0A2,n

Number of lives:

    POKE &BB0A5,n


# 8 Conclusion

Some patch addresses described in the original tips section match the archived
binary, while others do not.

Confirmed valid:

    BB50C
    BB0A2
    BB0A5

Unconfirmed or incorrect:

    BB884
    BB92F

Further investigation is required to determine whether these addresses refer to
another build or contain typographical errors in the original documentation.
