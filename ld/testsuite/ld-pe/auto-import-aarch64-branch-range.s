	.section .farconsumer,"xr"
	.global	main
main:
	adrp	x0, dyn_v
	add	x0, x0, :lo12:dyn_v
	ret
