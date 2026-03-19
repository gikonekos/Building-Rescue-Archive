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

Therefore, the addresses were verified against the archived binary.


# 2 Binary Used

The verification was performed using the archived object file:

    br110/BR.OBJ

The runtime base address of the program is:

    &BB000

Note:

The object file includes a header, so offsets in the file do not directly  
correspond to runtime addresses.


# 3 Patch Address Verification

The following table compares the values described in the printed tips with the  
actual bytes found in the binary.

Address | Expected | Actual | Result  
---|---|---|---  
BB50C | 2B | 2B | OK  
BB884 | 61 | 07 | Mismatch  
BB92F | 01 | 34 | Mismatch  
BB0A2 | 01 | 01 | OK  
BB0A5 | 03 | 03 | OK  


# 4 Sound Disable Patch

Printed patch:

    POKE &BB50C,07

Original value:

    2B

Result:

This address matches the binary and the patch appears valid.


# 5 Secondary Sound Patch

Printed patch:

    POKE &BB884,07

Expected original value:

    61

Actual binary value:

    07

Result:

The value does not match the printed description.

This suggests either:

- the patch refers to a different build  
- the original tips contain an error  
- the archived binary already includes a modified value  


# 6 DELTA Detection Patch

Printed patch:

    POKE &BB92F,00

Expected original value:

    01

Actual binary value:

    34

Result:

This address does not match the archived binary.

This strongly suggests that the patch refers to a different version.


# 7 Gameplay Parameter Patches

The gameplay-related patches match the binary.

Starting round:

    POKE &BB0A2,n

Number of lives:

    POKE &BB0A5,n

These values correspond to the initial state defined in the program.


# 8 Interpretation

The mismatch strongly suggests that the printed tips are not universal.

Most likely explanations:

- the tips were written for a different version (e.g. earlier BBS release)  
- the archived binary corresponds to version 1.10  
- some values may have already been modified in the distributed object file  


# 9 Conclusion

Confirmed valid for this version:

    BB50C  
    BB0A2  
    BB0A5  

Not matching this version:

    BB884  
    BB92F  

Therefore, patch addresses should be treated as version-dependent and verified  
before use.


# 10 Corrected Patch Addresses (BR.OBJ v1.10)

For BR.OBJ v1.10, the actual byte locations for gameplay parameters are:

- starting round: &BB0A8  
- number of lives: &BB0AB  

The previously cited addresses:

    &BB0A2  
    &BB0A5  

fall inside the preceding instruction:

    CALLF VRAMPP  

and are not the actual value bytes.

Additionally:

- &BB884  
- &BB92F  

resolve to instruction operands in unrelated code/data locations in v1.10,  
and therefore do not match the published tips for this version.
