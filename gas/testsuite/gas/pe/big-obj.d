#as: -mbig-obj
#objdump: -h
#name: PE big obj

.*: *file format (pe-bigobj-.*|pe-aarch64-bigobj)

Sections:
#...
5000. \.data\$a49999  .*
                  CONTENTS, ALLOC, LOAD, DATA

