#name: AArch64 PE pdata entries
#source: aarch64-pdata.s
#ld: --entry entry
#objdump: -p
#target: aarch64-*-pe* aarch64-*-mingw* aarch64-*-cygwin*

#...
The Function Table \(interpreted \.pdata section contents\)
 vma:		BeginAddress  UnwindData
 [0-9a-f]+	0*1000 0*2000
 [0-9a-f]+	0*3000 0*4001
#pass
