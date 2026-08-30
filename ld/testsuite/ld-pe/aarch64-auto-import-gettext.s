	.text
	.global entry
entry:
	adrp	x0, dyn_v
	mov	x3, x20
	adrp	x4, dyn_w
	mov	w2, 1
	ldr	x1, [x0, :lo12:dyn_v]
	add	x4, x4, :lo12:dyn_w
	ret
