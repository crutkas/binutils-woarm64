	.text
	.global entry
entry:
	adrp	x2, dyn_v
	.inst	0x19c20420
	add	x2, x2, :lo12:dyn_v
	ldr	w0, [x2]
	ret
