# entry lies at offset zero of .text, where the auto-import splitting
# machinery also places its own generated labels, and objdump prints only
# one of the names co-located at an address.  An `<entry>:' anchor would
# therefore assert an incidental label rather than the linker behaviour
# under test.
#
# What matters is that the adrp/add pair against dyn_v+0x1234 is split: the
# :lo12: add keeps its original #0x234 encoding in the low fragment, and a
# generated stub reloads the import address from its .idata slot, reapplies
# the 0x1000 page part of the addend that the pseudo-relocation removed,
# and branches back to that fragment.
#...
[ 	]*[0-9a-f]+:	9108d0a5 	add	x5, x5, #0x234
[ 	]*[0-9a-f]+:	d65f03c0 	ret
#...
[ 	]*[0-9a-f]+:	58000085 	ldr	x5, .*
[ 	]*[0-9a-f]+:	f94000a5 	ldr	x5, \[x5\]
[ 	]*[0-9a-f]+:	914004a5 	add	x5, x5, #0x1, lsl #12
[ 	]*[0-9a-f]+:	17[0-9a-f]+ 	b	.*
#pass
