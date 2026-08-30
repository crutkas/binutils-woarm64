	.text
	.global entry
entry:
	adrp	x0, dyn_v
	mov	x3, x0
	ldr	x1, [x0, :lo12:dyn_v]
	ret
