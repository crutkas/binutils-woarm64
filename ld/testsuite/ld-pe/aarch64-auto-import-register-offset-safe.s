	.text
	.global entry
entry:
	adrp	x0, dyn_v
	ldr	x3, [x2, x4]
	add	x0, x0, :lo12:dyn_v
	ldr	w0, [x0]
	ret
