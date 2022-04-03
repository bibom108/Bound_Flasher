# Bound Flasher Specification
In this exercise, you must create RTL code for the bound flasher with 16 lamps which has operation as below:  
At the initial state, all lamps are OFF. If flick signal is ACTIVE (set 1), the flasher start operating:  
The lamps are turned ON gradually from lamp[0] to lamp[5].  
The lamps are turned OFF gradually from lamp[5] (max) to lamp[0] (min).  
The lamps are turned ON gradually from lamp[0] to lamp[10].  
The lamps are turned OFF gradually from lamp[10] (max) to lamp[5] (min).  
The lamps are turned ON gradually from lamp[5] to lamp[15].  
Finally, the lamps are turned OFF gradually from lamp[15] to lamp[0], return to initial state.  
Additional condition:  
At each kickback point (lamp[5] and lamp[10]), if flick signal is ACTIVE, the lamps will turn OFF gradually again to the min lamp of the previous state, then continue operation as above description.  
For simple, kickback point is considered only when the lamps are turned ON gradually, except the first state.  
