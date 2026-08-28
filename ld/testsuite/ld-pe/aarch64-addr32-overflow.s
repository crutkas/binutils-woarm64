	.text
	.global entry
entry:
	ret

	.data
	.global address32
address32:
	.word	entry
