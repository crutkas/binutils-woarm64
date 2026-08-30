	.text
	.global entry
entry:
	adrp	x0, dyn_v
	blr	x1
	ldr	x2, [x0, :lo12:dyn_v]
	ret
