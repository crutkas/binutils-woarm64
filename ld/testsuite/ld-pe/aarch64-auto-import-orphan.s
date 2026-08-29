	.text
	.global entry
entry:
	add	x5, x5, :lo12:dyn_v
	ret
