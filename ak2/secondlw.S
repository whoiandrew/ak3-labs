.global secondlw
.syntax unified
#define A #4
#define B #3
#define C #4
secondlw:
    push {r0, r1, r2, r3, r4, lr}
    //uploading given values into regs
    mov r2, A 
    mov r3, B
    mov r4, C
    mul r0, r2, r3  //(a * b) saved in r0
    cmp r0, #10 //comparing r0 content with the value 
    ite ge //if r0's content is greater or equals
    orrGE r1, r2, r3 //execute
    andLT r1, r2, r3 //else execute this one
    mul r1, r4 //accumulating result in r1
    pop {r0, r1, r2, r3, r4, pc}
