# No instruction relocation may reach the scalar runtime pseudo-relocator.
# Equal start and end symbols prove that the pseudo-relocation table is empty.
#...
0000000140003000 R ___RUNTIME_PSEUDO_RELOC_LIST__
0000000140003000 R ___RUNTIME_PSEUDO_RELOC_LIST_END__
#...
0000000140003000 R __RUNTIME_PSEUDO_RELOC_LIST__
0000000140003000 R __RUNTIME_PSEUDO_RELOC_LIST_END__
#pass
