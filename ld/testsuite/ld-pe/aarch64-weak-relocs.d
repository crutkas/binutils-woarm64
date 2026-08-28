#name: AArch64 weak fallback relocations
#source: aarch64-weak.s
#objdump: -dr
#target: aarch64-*-pe* aarch64-*-mingw* aarch64-*-cygwin*

#...
.*IMAGE_REL_ARM64_PAGEBASE_REL21	weak_alias
#...
.*IMAGE_REL_ARM64_PAGEOFFSET_12A	weak_alias
#pass
