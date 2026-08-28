/* The section index relocation is the last thing emitted into .rdata, so
   its two bytes are the final two bytes of the input section.  gas does
   not pad a COFF section past the bytes it emits, and eight bytes is
   already aligned, so input_section->size is 8 and r_vaddr is 6: exactly
   two bytes of headroom for a two byte relocation.

   IMAGE_REL_ARM64_SECTION is the only AArch64 PE relocation narrower
   than four bytes, so this is the case a fixed four byte headroom check
   rejects even though the relocation fits.  */

	.text
	.global entry
entry:
	ret

	.section .rdata,"dr"
	.byte	0x11, 0x22, 0x33, 0x44, 0x55, 0x66
	.secidx	entry
