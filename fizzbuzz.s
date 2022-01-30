	.data

fizz:	.asciz "Fizz\n"
buzz:	.asciz "Buzz\n"
fibu:	.asciz "FizzBuzz\n"
nfmt:	.asciz "%d\n"

	.text
	.global main
	.extern printf

main:
	push {lr}
	mov r4, #1	// number
	mov r5, #3	// Fizz countdown
	mov r6, #5	// Buzz countdown
	mov r7, #15	// FizzBuzz countdown
_loop:
	ldr   r0, =nfmt
	subs  r5, #1
	moveq r5, #3
	ldreq r0, =fizz
	subs  r6, #1
	moveq r6, #5
	ldreq r0, =buzz
	subs  r7, #1
	moveq r7, #15
	ldreq r0, =fibu
	mov   r1, r4
	bl    printf
	add   r4, 1
	cmp   r4, 100
	ble   _loop
	mov   r0, #0
	pop   {lr}
