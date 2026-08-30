	.text
	.global entry
entry:
	.rept	1024
	adrp	x0, dyn_v
	b.eq	1f
	nop
1:
	ldr	x1, [x0, :lo12:dyn_v]
	.endr
	ret
