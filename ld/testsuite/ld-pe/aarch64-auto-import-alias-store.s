	.text
	.global entry
entry:
	adrp	x5, dyn_v
	str	x5, [x5, :lo12:dyn_v]
	ret
