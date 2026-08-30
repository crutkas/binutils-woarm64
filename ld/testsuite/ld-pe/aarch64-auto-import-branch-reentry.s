	.text
	.global entry
entry:
	adrp	x0, dyn_v
	b.eq	1f
2:
	ldr	x1, [x0, :lo12:dyn_v]
	ret
1:
	extr	x3, x4, x0, 1
	b	2b
