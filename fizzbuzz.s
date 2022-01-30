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
	ldr   r0, =nfmt	// fmt = '%d'
	subs  r5, #1	// Fizz -= 1
	moveq r5, #3	//  if 0, Fizz = 3
	ldreq r0, =fizz	//  if 0, fmt = 'fizz'
	subs  r6, #1	// Buzz -= 1
	moveq r6, #5	//  if 0, Fizz = 5
	ldreq r0, =buzz //  if 0, fmt = 'Buzz'
	subs  r7, #1	// FizzBuzz -= 1
	moveq r7, #15	//  if 0, FizzBuzz = 1
	ldreq r0, =fibu	//  if 0, fmt = 'FizzBuzz'
	mov   r1, r4
	bl    printf
	add   r4, #1
	cmp   r4, #100
	ble   _loop
	mov   r0, #0
	pop   {lr}
