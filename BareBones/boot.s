/* Declare constants for the multiboot header. */
.set ALIGN,     1<<0
.set MEMINFO,   1<<1
.set FLAGS,     ALIGN | MEMINFO
.set MAGIC,     0x1BADB002
.set CHECKSUM,  -(MAGIC + FLAGS)

/* Multiboot header */
.section .multiboot
.align 4
.long MAGIC
.long FLAGS
.long CHECKSUM

/* Define stack */
.section .bss
.align 16
stack_bottom:
.skip 16384 # 16 KiB
stack_top:

/* Entry point */
.section .text
.global _start
.type _start, @function
_start:
    /* Set up stack i.e. set stack register */
    mov $stack_top, %esp

    /* Enter high-level kernel i.e. rest of kernel */
    call kernel_main

    /* Set kernel into infinite loop */
    cli
1:  hlt
    jmp 1b

.size _start, . - _start
