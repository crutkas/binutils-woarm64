# entry lies at offset zero of .text, where the auto-import splitting
# machinery also places its own generated labels, and objdump prints only
# one of the names co-located at an address.  An `<entry>:' anchor would
# therefore assert an incidental label rather than the linker behaviour
# under test, so the assertions below are on the generated code itself.
#
# The original :lo12: add and the two loads survive the split, each in its
# own low fragment; the three stubs each reload the import address from
# the .idata slot, reapply the addend that the pseudo-relocation removed,
# and branch back to their fragment; and the code import goes through the
# usual ldr/br thunk.
#...
[ 	]*[0-9a-f]+:	9108d0a5 	add	x5, x5, #0x234
#...
[ 	]*[0-9a-f]+:	f9400120 	ldr	x0, \[x9\]
#...
[ 	]*[0-9a-f]+:	b980014a 	ldrsw	x10, \[x10\]
[ 	]*[0-9a-f]+:	[0-9a-f]+ 	bl	[0-9a-f]+ <dyn_f>
[ 	]*[0-9a-f]+:	d65f03c0 	ret
#...
[ 	]*[0-9a-f]+:	58000085 	ldr	x5, .*
[ 	]*[0-9a-f]+:	f94000a5 	ldr	x5, \[x5\]
[ 	]*[0-9a-f]+:	914004a5 	add	x5, x5, #0x1, lsl #12
[ 	]*[0-9a-f]+:	17[0-9a-f]+ 	b	.*
#...
[ 	]*[0-9a-f]+:	58000089 	ldr	x9, .*
[ 	]*[0-9a-f]+:	f9400129 	ldr	x9, \[x9\]
[ 	]*[0-9a-f]+:	d503201f 	nop
[ 	]*[0-9a-f]+:	17[0-9a-f]+ 	b	.*
#...
[ 	]*[0-9a-f]+:	5800008a 	ldr	x10, .*
[ 	]*[0-9a-f]+:	f940014a 	ldr	x10, \[x10\]
[ 	]*[0-9a-f]+:	d503201f 	nop
#...
[ 	]*[0-9a-f]+:	[0-9a-f]+ 	adrp	x16, [0-9a-f]+( <[^>]*>)?
[ 	]*[0-9a-f]+:	[0-9a-f]+ 	add	x16, x16, #0x[0-9a-f]+
[ 	]*[0-9a-f]+:	f9400210 	ldr	x16, \[x16\]
[ 	]*[0-9a-f]+:	d61f0200 	br	x16
#pass
