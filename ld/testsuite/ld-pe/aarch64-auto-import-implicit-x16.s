	.text
	.global entry
entry:
	adrp	x16, dyn_v
	.inst	0xd503211f
	ldr	x1, [x16, :lo12:dyn_v]
	ret
