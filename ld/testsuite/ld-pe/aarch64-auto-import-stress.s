	.text
	.global entry
entry:
	.rept	1024
	adrp	x0, dyn_v
	add	x0, x0, :lo12:dyn_v
	ldr	w0, [x0]
	.endr
	ret
