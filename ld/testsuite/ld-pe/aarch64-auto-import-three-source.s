	.text
	.global entry
entry:
	adrp	x0, dyn_v
	madd	x3, x4, x5, x0
	ldr	x1, [x0, :lo12:dyn_v]
	ret
