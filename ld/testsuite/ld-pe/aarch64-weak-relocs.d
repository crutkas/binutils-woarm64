#name: AArch64 weak alias relocations (object emission only)
#source: aarch64-weak.s
#objdump: -dr
#target: aarch64-*-pe* aarch64-*-mingw* aarch64-*-cygwin*

# This test deliberately does not link: it only checks that gas emits page
# and page-offset relocations against the weak alias rather than resolving
# them locally.  The linked behaviour of the same source is covered by the
# "AArch64 weak references" link test, and the undefined weak external
# path is covered by aarch64-weak-undef.d.
#...
.*IMAGE_REL_ARM64_PAGEBASE_REL21	weak_alias
#...
.*IMAGE_REL_ARM64_PAGEOFFSET_12A	weak_alias
#pass
