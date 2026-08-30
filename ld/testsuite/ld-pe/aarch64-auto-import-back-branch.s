	.text
	.global entry
entry:
	b	2f
1:
	mov	x0, 0
	b	3f
2:
	adrp	x0, dyn_v
	b	1b
3:
	ldr	x1, [x0, :lo12:dyn_v]
	ret
