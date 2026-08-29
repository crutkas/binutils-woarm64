# entry lies at offset zero of .text alongside linker-supplied symbols,
# and objdump prints only one of the names co-located at an address, so
# an `<entry>:' anchor would assert an incidental label rather than the
# linker behaviour under test.  What matters is that both weak references
# resolve to the intended .data targets: weak_alias through its `.set'
# alias to fallback at .data+0x10, and weak_defined at .data+0x18.  The
# adrp/add pairs below pin the resolved page and the exact :lo12: encoding
# of each, so either target moving or failing to resolve fails the test.
#...
[ 	]*[0-9a-f]+:	[0-9a-f]+ 	adrp	x3, [0-9a-f]+( <[^>]*>)?
[ 	]*[0-9a-f]+:	91004063 	add	x3, x3, #0x10
[ 	]*[0-9a-f]+:	[0-9a-f]+ 	adrp	x4, [0-9a-f]+( <[^>]*>)?
[ 	]*[0-9a-f]+:	91006084 	add	x4, x4, #0x18
[ 	]*[0-9a-f]+:	d65f03c0 	ret
#pass
