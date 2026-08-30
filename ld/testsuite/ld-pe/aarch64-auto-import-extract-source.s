	.text
	.global entry
entry:
	adrp	x0, dyn_v
	extr	x3, x4, x0, 1
	ldr	x1, [x0, :lo12:dyn_v]
	ret
