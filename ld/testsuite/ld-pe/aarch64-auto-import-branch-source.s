	.text
	.global entry
entry:
	adrp	x0, dyn_v
	cbz	x0, 1f
1:
	ldr	x1, [x0, :lo12:dyn_v]
	ret
