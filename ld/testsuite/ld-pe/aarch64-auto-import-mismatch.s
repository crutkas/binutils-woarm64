	.text
	.global entry
entry:
	adrp	x5, dyn_v+0x1000
	add	x5, x5, :lo12:dyn_v+8
	ret
