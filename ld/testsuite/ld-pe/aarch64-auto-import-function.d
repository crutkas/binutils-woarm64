# entry lies at offset zero of .text alongside linker-supplied symbols,
# and objdump prints only one of the names co-located at an address, so an
# `<entry>:' anchor would assert an incidental label.  What this test
# means to prove is that a call to an undefined function resolves through
# a generated import thunk: the bl reaches <dyn_f>, and dyn_f is the four
# instruction ldr/br thunk that loads its target from the .idata slot.
# The `<dyn_f>:' label is not incidental -- it is the generated thunk
# symbol itself, and is the resolved target of the branch.
#...
[ 	]*[0-9a-f]+:	[0-9a-f]+ 	bl	[0-9a-f]+ <dyn_f>
[ 	]*[0-9a-f]+:	d65f03c0 	ret
#...
.*<dyn_f>:
[ 	]*[0-9a-f]+:	[0-9a-f]+ 	adrp	x16, [0-9a-f]+( <[^>]*>)?
[ 	]*[0-9a-f]+:	[0-9a-f]+ 	add	x16, x16, #0x[0-9a-f]+
[ 	]*[0-9a-f]+:	f9400210 	ldr	x16, \[x16\]
[ 	]*[0-9a-f]+:	d61f0200 	br	x16
#pass
