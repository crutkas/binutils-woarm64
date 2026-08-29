#name: AArch64 section index relocation in the final two bytes of a section
#source: aarch64-secidx-tail.s
#ld: --entry entry --image-base=0x1000
#objdump: -s
#target: aarch64-*-pe* aarch64-*-mingw* aarch64-*-cygwin*

# entry lives in .text, which is output section 1, so the relocated two
# bytes must read 0100 little endian.  gas leaves them 0000, so this also
# shows the relocation was processed rather than skipped.
#...
Contents of section \.rdata:
 .* 11223344 55660100.*
#pass
