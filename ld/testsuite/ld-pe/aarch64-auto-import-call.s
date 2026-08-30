	.text
helper:
	ret

	.global entry
entry:
	adrp	x19, dyn_v
	bl	helper
	ldr	x1, [x19, :lo12:dyn_v]
	ret
