	.text
	.global entry
entry:
	adrp	x5, dyn_v+0x1234
	add	x5, x5, :lo12:dyn_v+0x1234
	adrp	x9, dyn_v
	ldr	x0, [x9, :lo12:dyn_v]
	adrp	x10, dyn_v
	ldrsw	x10, [x10, :lo12:dyn_v]
	bl	dyn_f
	ret
