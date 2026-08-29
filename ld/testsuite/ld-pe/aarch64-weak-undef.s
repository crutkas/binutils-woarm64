/* A genuine undefined COFF weak external, as opposed to a `.weak' plus
   `.set' alias.

   gas/config/obj-coff.c:pecoff_obj_set_weak_hook gives `missing_weak'
   storage class C_NT_WEAK and one auxiliary record whose tag index names
   a generated alternate symbol, and coff_frob_symbol defines that
   alternate as absolute zero because the weak symbol is never defined.
   BFD therefore records bfd_link_hash_undefweak carrying an aux
   fallback, which is the only shape coff_aarch64_resolve_undefweak
   consumes.

   A symbol aliased with `.set' resolves to the alias target's section,
   so BFD records bfd_link_hash_defweak and the undefined-weak path is
   never reached; aarch64-weak.s covers that separate case.  */

	.weak	missing_weak

	.text
	.global entry
entry:
	adrp	x5, missing_weak
	add	x5, x5, :lo12:missing_weak
	ret
