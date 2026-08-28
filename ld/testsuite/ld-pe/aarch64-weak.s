	.weak	weak_alias
	.set	weak_alias, fallback
	.weak	weak_defined

	.text
	.global entry
entry:
	adrp	x3, weak_alias
	add	x3, x3, :lo12:weak_alias
	adrp	x4, weak_defined
	add	x4, x4, :lo12:weak_defined
	ret

	.data
	.space	16
	.global fallback
fallback:
	.xword	1
weak_defined:
	.xword	2
