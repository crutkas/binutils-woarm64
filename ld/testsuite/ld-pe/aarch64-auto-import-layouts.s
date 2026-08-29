	.text
	.global entry
entry:
	# Adjacent pair retained as a positive control.
	adrp	x0, dyn_v
	add	x0, x0, :lo12:dyn_v
	ldr	w0, [x0]

	# GCC can schedule an unrelated instruction between a pair.
	adrp	x1, dyn_v
	mov	x2, 0
	add	x1, x1, :lo12:dyn_v
	ldr	w1, [x1]

	# GCC can interleave a local pair with an imported pair.
	adrp	x2, local_v
	adrp	x3, dyn_v
	add	x2, x2, :lo12:local_v
	add	x3, x3, :lo12:dyn_v
	ldr	w3, [x3]

	# One page base can feed more than one low relocation.
	adrp	x4, dyn_v
	stp	x29, x30, [sp, -16]!
	add	x5, x4, :lo12:dyn_v
	ldr	w6, [x4, :lo12:dyn_v]
	ldp	x29, x30, [sp], 16
	add	w0, w0, w1
	add	w0, w0, w3
	add	w0, w0, w6
	ret

	.data
local_v:
	.word	0
