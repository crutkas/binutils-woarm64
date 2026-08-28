	.text
	.global dyn_f
	.def	dyn_f; .scl 2; .type 0; .endef
dyn_f:
	ret

	.data
	.global dyn_v
	.def	dyn_v; .scl 2; .type 0; .endef
dyn_v:
	.xword	0
