	.text
	.global entry
entry:
	adrp	x0, dyn_v
	add	x0, x0, :lo12:dyn_v
	ldr	w0, [x0]
	ret

orphan:
	add	x0, x0, :lo12:dyn_v
	ret
