	.text
	.global entry
entry:
	adrp	x0, dyn_v
	ccmp	x4, x0, 0, eq
	ldr	x1, [x0, :lo12:dyn_v]
	ret
