@second arithmetic program
 .section .data
 val1: .word 6
 val2: .word 11
 val3: .word 16
 .section .text
 .globl _start
 _start:
	ldr r1,=val2	@load address of val2 to r1
	ldr r1,[r1]	@load value of val2 to r1
	ldr r2,=val3	@load address of val3 to r2
	ldr r2,[r2]	@load value of val3 to r2
	ldr r3,=val1	@load address of val1 to r3
	ldr r3,[r3]	@load value of val2 to r3
	sub r2,r3	@sub value of r3 from r2
	add r1,#9	@add value 9 to r1
	add r1,r2	@add value of r2 to r1

	mov r7,#1	@Program Termination: exit syscall
	svc #0		@Program Termination: wake kernel
 .end
