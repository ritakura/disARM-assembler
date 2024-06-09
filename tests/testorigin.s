; ECS 154A SQ 2024
; Reina Itakura
; Counter program (Test program for ORIGIN)
; Counts by powers of 2, and outputs the counter value to decimal io.
; It initially starts by counting by 2^0
; when the interrupt is pressed, it will change the increment value to the next power of 2.
; The current value of what's being incremented is displayed on the second decimal io.
    MOV r0, 0       ; set counter to 0
    MOV r1, 1       ; set incrementer value to 1
    SUB r2, r0, r1
    SUB r3, r2, r1 
    STR r1, r3      ; display incrementer value to decimal io
loop:   
    STR r0, r2
    ADD r0, r0, r1
    B loop

ORIGIN 0xf000       ; Start the ISR
    ADD r1, r1, r1  
    STR r1, r3
    RTI