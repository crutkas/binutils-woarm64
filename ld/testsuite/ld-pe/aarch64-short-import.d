#...
[ 	]*[0-9a-f]+:	[0-9a-f]+ 	bl	[0-9a-f]+ <short_import>
[ 	]*[0-9a-f]+:	d65f03c0 	ret
#...
.*<short_import>:
[ 	]*[0-9a-f]+:	[0-9a-f]+ 	adrp	x16, [0-9a-f]+( <[^>]*>)?
[ 	]*[0-9a-f]+:	[0-9a-f]+ 	add	x16, x16, #0x[0-9a-f]+
[ 	]*[0-9a-f]+:	f9400210 	ldr	x16, \[x16\]
[ 	]*[0-9a-f]+:	d61f0200 	br	x16
#pass
