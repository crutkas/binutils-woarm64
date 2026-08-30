	.text
	.global entry
entry:
	adrp	x0, dyn_v
	rbit	x3, x4
	ccmp	x4, 0, 0, eq
	ldr	x1, [x0, :lo12:dyn_v]
	ret
