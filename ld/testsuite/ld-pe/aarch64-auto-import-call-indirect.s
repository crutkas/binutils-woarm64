	.text
	.global entry
entry:
	adrp	x19, dyn_v
	blr	x0
	ldr	x1, [x19, :lo12:dyn_v]
	ret
