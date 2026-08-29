#name: AArch64 undefined weak external resolves through its aux fallback
#source: aarch64-weak-undef.s
#ld: --entry entry --image-base=0x1000
#objdump: -d
#target: aarch64-*-pe* aarch64-*-mingw* aarch64-*-cygwin*

# Linking at all proves coff_aarch64_resolve_undefweak accepted the aux
# fallback instead of failing closed on one of its diagnostics.
#
# The fallback is absolute zero, so the page relocation must resolve to
# page 0.  gas leaves the adrp immediate at zero, which would disassemble
# as the *referencing* page (0x2000 at this image base), so a printed
# target of 0 is what shows BFD applied the relocation.
#
# This deliberately does not anchor on an `<entry>:' label.  entry lies at
# offset zero of .text alongside several linker-supplied symbols, and
# objdump prints only one of the names co-located at an address, so which
# label appears there is incidental to the linker behaviour under test.
# The assertions below are on the relocation result itself: the resolved
# adrp page target, and the exact encoding of the :lo12: add.  Both change
# if the undefined-weak aux fallback stops resolving to absolute zero.
#
# The adrp encoding is pinned exactly.  gas leaves it as 90000005, a zero
# immediate; only a relocation applied against an absolute-zero fallback
# from .text at 0x2000 turns it into d0ffffe5, so this line cannot pass on
# unrelocated object output.
#...
[ 	]*[0-9a-f]+:	d0ffffe5 	adrp	x5, 0( <[^>]*>)?
[ 	]*[0-9a-f]+:	910000a5 	add	x5, x5, #0x0
[ 	]*[0-9a-f]+:	d65f03c0 	ret
#pass
