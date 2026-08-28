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
#...
.*<entry>:
[ 	]*[0-9a-f]+:	[0-9a-f]+ 	adrp	x5, 0.*
[ 	]*[0-9a-f]+:	910000a5 	add	x5, x5, #0x0
#pass
