
.*:     file format pei-aarch64-little


Disassembly of section .text:

0000000140001000 <___tls_end__>:
   140001000:	14000001 	b	140001004 <test_reloc>

0000000140001004 <test_reloc>:
   140001004:	d0000010 	adrp	x16, 140003000 <__IMPORT_DESCRIPTOR_arm64-short-import>
   140001008:	91014210 	add	x16, x16, #0x50
   14000100c:	f9400210 	ldr	x16, \[x16\]
   140001010:	d61f0200 	br	x16
#pass
