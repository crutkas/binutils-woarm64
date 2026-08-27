	.text
	.global	duplicate_site
duplicate_site:
	adrp	x17, dyn_v
	add	x17, x17, :lo12:dyn_v
	ret
