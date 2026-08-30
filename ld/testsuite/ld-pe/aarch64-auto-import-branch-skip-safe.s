	.text
	.global entry
entry:
	adrp	x0, dyn_v
	b.eq	1f
	ldr	x1, [x0, :lo12:dyn_v]
	ret
1:
	nop
	ret
