	.text
	.global entry
entry:
	ret

	.section .pdata,"dr"
	.long	0x1000
	.long	0x2000
	.long	0x3000
	.long	0x4001
