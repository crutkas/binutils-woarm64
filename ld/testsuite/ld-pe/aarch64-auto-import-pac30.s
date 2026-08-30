	.text
	.global entry
entry:
	adrp	x30, dyn_v
	.inst	0xd503233f
	ldr	x1, [x30, :lo12:dyn_v]
	ret
