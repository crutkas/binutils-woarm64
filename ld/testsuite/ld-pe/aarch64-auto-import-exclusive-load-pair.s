	.text
	.global entry
entry:
	adrp	x0, dyn_v
	ldxp	x1, x0, [x2]
	add	x0, x0, :lo12:dyn_v
	ldr	w0, [x0]
	ret
