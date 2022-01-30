	.data

hello:	.asciz "Hello, World!\n"

	.text
	.global main
	.extern printf

main:
	push {lr}
	ldr r0, =hello
	bl printf
	mov r0, #0
	pop {lr}
