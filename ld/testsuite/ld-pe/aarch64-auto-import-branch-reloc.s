	.text
	.global entry
entry:
	adrp	x0, dyn_v
	b.eq	external_target
	ldr	x1, [x0, :lo12:dyn_v]
	ret
