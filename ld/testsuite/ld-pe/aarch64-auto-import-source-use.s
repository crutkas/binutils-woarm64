	.text
	.global entry
entry:
	adrp	x0, dyn_v
	add	x1, x0, 0
	ldr	w0, [x0, :lo12:dyn_v]
	ret
