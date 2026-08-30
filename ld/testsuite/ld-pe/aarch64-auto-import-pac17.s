	.text
	.global entry
entry:
	adrp	x17, dyn_v
	.inst	0xd503211f
	ldr	x1, [x17, :lo12:dyn_v]
	ret
