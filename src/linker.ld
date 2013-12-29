MEMORY
{
        ram : ORIGIN = 0x8000, LENGTH = 0x5000
}

SECTIONS
{
        .text : {
                boot.o;
                kernel.o;
        } > ram
}
