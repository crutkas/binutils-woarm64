	.text
	.global entry
entry:
	adrp	x0, dyn_v
	ld1	{v1.16b}, [x0], 16
	add	x0, x0, :lo12:dyn_v
	ldr	w0, [x0]
	ret
