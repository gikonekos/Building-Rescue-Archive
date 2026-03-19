-------------------------------------------------------------------------------
                         Building Rescue
                         Version 1.10
                         1994-07-07

                         Kenkichi Motoi & Game Shokunin
-------------------------------------------------------------------------------

Platform: SHARP PC-E500 series (32KB or more)

Peripherals: CE-126P or SCC sound unit recommended

● Program Overview

Avoid enemy attacks and climb the building to reach the rooftop.

This version also supports the SCC sound unit.
If it is not connected, sound will be played using the internal BEEP.

● Preparation (without SCC)

First, connect the CE-126P to the main unit.  
Next, connect the mini jack (microphone side = red) to the LINE-IN of a radio cassette or amplifier.  
Start with the volume set to minimum and gradually adjust while monitoring the sound.

● Loading Instructions

(1) Secure machine language area from 0BB000H (20KB or more).

Example:
POKE &BFE03,&1A,&FD,&B,&0,&50,&0:CALL&FFFD8[CR]

(2) Load the program using PLINK or similar.

Example (PLINK):
LOADM "L:BR.OBJ"[CR]

(3) Execute:

CALL&BB000[CR]

(When executed from HMFiler, no options are required.)

● How to Play

Control the climber and avoid enemy attacks while climbing to the rooftop.  
There are 4 stages, and after stage 4, it loops back to stage 1.

● Characters

Climber  
The player character, a member of an international rescue team. Age 25, male.  
Very tough — even falling from the building will not kill him.

Mizuho-senpai  
First appeared in PJ '92 No.3 Plaza manga. Age 23, female.  
Kidnapped by terrorists and forced to build machines.

Terrorists  
Members of a mysterious terrorist group “Ura.” Ages 20–70, male/female.  
They lean out of windows and drop objects to hinder the climber.

UFO  
Apparently failed a warp. Age 102,500, gender unknown.  
The beam causes the climber to be electrocuted and fall.

Window  
Passively obstructs the climber. Age 0–140, female.  
If the window closes while holding the frame, the climber falls.

Steel Beam  
It hurts when hit. Age 30, male.

Dumbbell  
The climber cannot withstand it and falls.

Signboard  
Mysterious signboards with infinite supply. Age 26, female.  
Dropped by three terrorists together.

Wall  
The unseen backbone of the building. Age 0–140, male.  
Cannot pass through.

Cloud  
“Clouds are carefree…” Age unknown, no gender.  
Background only.

Sky  
“Hoping beyond the sky…” Age 140 million (hypothesis), no gender.  
Background only.

● Controls

Climbing:
[SHIFT] Raise left hand  
[ = ] Raise right hand  

Movement:
[CTRL] Move left  
[ + ] Move right  

Endure falling objects:
Press [CTRL] + [ + ] simultaneously

Exit:
[BASIC] Force quit

● Score

Climb one floor: 50 pts  
Endure object: 50 pts  
Stage clear: remaining TIME × 50 pts  
Extra life: 10000 pts  

● Hidden Tricks (Verified for v1.10)

A) Disable Sound

POKE &BB50C,07 (from &2B → &07)

Note: Since timing is controlled by sound, difficulty increases.

Warning:
POKE &BB884,07 does NOT match v1.10 (different version).

DELTA issue (not applicable to v1.10):

POKE &BB92F,00 does NOT match v1.10.

B) Parameter Modification

Lives:
POKE &BB0AB,n

Starting stage:
POKE &BB0A8,n

Note:
&BB0A5 / &BB0A2 are inside instructions and invalid.

C) Double-speed switch

Seems to work (lol)

● Copyright

This software is freeware.  
Copyright is held by Game Shokunin and Kenkichi Motoi.  
Please contact the authors when redistributing.

● Afterword

Game Shokunin  
A lot of time was spent balancing the gameplay.

Kenkichi Motoi  
It is surprising how much can be achieved on the E500.  
Both music and graphics were rewarding to create.

● Final Notes

Please feel free to contact us with feedback or requests.
