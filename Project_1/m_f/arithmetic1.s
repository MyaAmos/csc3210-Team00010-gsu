@ Project1 Part2 Arithmetic
.section .data
.section .text
.globl _start
_start:
	mov r1, #10 @ load r1 with 10
	mov r2, #11 @ load r2 with 11
	mov r3, #7 @ load r3 with 7
	mov r4, #2 @ load r4 with 2

	add r1, r2 @ add r2 to r1
	mul r3, r4 @ multiply r3 by r4
	sub r1, r3 @ subtract r3 from r1

	mov r7, #1 @ Program Termination: exit syscall
	svc #0 @ Program Termination: wake kernel
.end
