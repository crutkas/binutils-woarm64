	.text
	.global entry
entry:
	adrp	x25, dyn_v
	ldr	x0, [x0, x23, lsl 3]
	ldr	x22, [x0, 8]
	ldr	x0, [x22, 8]
	cbz	x0, 3f
	mov	x19, 0
	b	2f
1:
	add	x19, x19, 1
	cmp	x0, x19
	b.eq	3f
2:
	ldr	x1, [x22]
	ldr	x20, [x1, x19, lsl 3]
	ldr	w1, [x20, 276]
	cbnz	w1, 1b
	ldr	x26, [x25, :lo12:dyn_v]
3:
	ret
