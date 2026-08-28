	.section .fartext,"xr"
	.global entry
entry:
	adrp	x5, dyn_v
	add	x5, x5, :lo12:dyn_v
	ret
