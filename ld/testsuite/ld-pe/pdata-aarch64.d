#name: AArch64 PE .pdata
#target: aarch64-*-pe* aarch64-*-mingw*
#ld: -e function
#objdump: -p

#...
The Function Table \(interpreted \.pdata section contents\)
 vma:		Begin    Unwind
     		Address  Data
 0000000140003000	0000000000001000 0000000000004000
#...
