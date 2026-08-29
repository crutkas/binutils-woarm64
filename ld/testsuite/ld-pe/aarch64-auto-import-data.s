	.text
	.global entry
entry:
	adrp	x5, dyn_v+0x1234
	add	x5, x5, :lo12:dyn_v+0x1234
	ret
