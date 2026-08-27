	.text
	.global	main
main:
	# Defined symbols retain ordinary PAGEBASE/PAGEOFFSET relocations.
	adrp	x9, local_v
	add	x9, x9, :lo12:local_v

	# Ordinary weak definitions must not be treated as auto-imports.
	adrp	x8, weak_v
	add	x8, x8, :lo12:weak_v

	# Defweak auto-imports cover zero, positive, negative, and page edges.
	adrp	x0, dyn_v
	add	x0, x0, :lo12:dyn_v

	adrp	x1, dyn_v + 2
	add	x1, x1, :lo12:dyn_v + 2

	adrp	x2, dyn_v - 2
	add	x2, x2, :lo12:dyn_v - 2

	adrp	x3, dyn_v + 4095
	add	x3, x3, :lo12:dyn_v + 4095

	adrp	x4, dyn_v + 4096
	add	x4, x4, :lo12:dyn_v + 4096

	adrp	x5, dyn_v - 4095
	add	x5, x5, :lo12:dyn_v - 4095

	adrp	x6, dyn_v - 4096
	add	x6, x6, :lo12:dyn_v - 4096

	adrp	x7, dyn_v + 4097
	add	x7, x7, :lo12:dyn_v + 4097

	adrp	x19, dyn_v - 4097
	add	x19, x19, :lo12:dyn_v - 4097

	# PAGEOFFSET_12L preserves each load/store scale.
	adrp	x10, dyn_v + 1
	ldrb	w10, [x10, :lo12:dyn_v + 1]
	adrp	x11, dyn_v + 2
	ldrh	w11, [x11, :lo12:dyn_v + 2]
	adrp	x12, dyn_v + 4
	ldr	w12, [x12, :lo12:dyn_v + 4]
	adrp	x13, dyn_v + 8
	ldr	x13, [x13, :lo12:dyn_v + 8]
	adrp	x14, dyn_v + 16
	ldr	q14, [x14, :lo12:dyn_v + 16]

	# The low12 instruction need not immediately follow PAGEBASE.
	adrp	x15, dyn_v + 8
	add	x20, x20, #1
	ldr	x15, [x15, :lo12:dyn_v + 8]

	b	init_dyn_v
	bl	init_dyn_v
	ret

	.data
	.align	3
local_v:
	.xword	0

	.weak	weak_v
weak_v:
	.xword	0
