.define SW_ADDRESS 0x30
.define LED_ADDRESS 0x10
	   mvt    r4, #SW_ADDRESS
	   mvt 	  r5, #LED_ADDRESS
	   mv	  r2, #0
MAIN:  st	  r2, [r5]
       ld     r0, [r4]
       and    r0, #0x7      //take SW2-0
       
	   mv     r6, #0xFF   //delay val
	   //mvt	  r6, #0xFF

DEL1:  mv     r1, r0        //copy
       and    r1, #0x1      //take last digit
       sub    r1, #0x1      //set z flag
       bne    DEL2
LOOP1: sub    r6, #1
       bne    LOOP1


       mv     r6, #0xFF     //delay val
	   //mvt	  r6, #0xFF
DEL2:  mv     r1, r0        //copy
       and    r1, #0x2      //take 2nd last digit
       sub    r1, #0x2      //set z flag
       bne    DEL3
LOOP2: sub    r6, #1
       bne    LOOP2


       mv     r6, #0xFF   //delay val
	   //mvt	  r6, #0xFF
DEL3:  mv     r1, r0        //copy
       and    r1, #0x4      //take 1st digit
       sub    r1, #0x4      //set z flat
       bne    LOOPB
LOOP3: sub    r6, #1
       bne    LOOP3

LOOPB: add	  r5, #1
	   b      MAIN
	