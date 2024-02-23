/* Designate entry point of kernel as function _start */
ENTRY(_start)

/* Order the sections from the object files into the final image */
SECTIONS
{
    /* Offset, since first 2MB of memory contains
     * BIOS, bootloader, ISRs, graphics memory, etc
     */
    . = 2M;

    /* Mutliboot header first, then .text */
    .text BLOCK(4K) : ALIGN(4K)
    {
        *(.multiboot)
        *(.text)
    }

    /* Read-only data */
    .rodata BLOCK(4K) : ALIGN(4K)
    {
        *(.rodata)
    }

    /* Uninitialized read-write data */
    .data BLOCK(4K) : ALIGN(4K)
    {
        *(.data)
    }

    /* Initialized read-write data and stack */
    .bss BLOCK(4K) : ALIGN(4K)
    {
        *(COMMON)
        *(.bss)
    }

    /* Anything else will go here */
}
