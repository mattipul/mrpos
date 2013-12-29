.global init
.extern kernel_main

init:        
        mov sp, #0x80000
        bl kernel_main

        b hang$
hang$:
        b hang$