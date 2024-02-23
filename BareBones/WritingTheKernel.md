# Writing the Bare-Bones OS
The cross-compiler should be set up by now, with the compiler binaries in `$HOME/opt/cross/bin/`.
## Boot-loader
When the computer hardware first starts, it has no notion of an *operating system*. Instead, a very low-level software that is *built-into* the hardware called **BIOS** or **Basic Input-Output System** begins.  BIOS tests to make sure hardware is working and provides very basic control of connected devices (screen, keyboard, mouse).  

BIOS *can* load a low-level program from a connected storage unit into memory provided:
1. The program is *very* simple, since BIOS lacks process management features.
2. The program is located at the first sector of a storage device (disk), since BIOS lacks any notion of files or files systems.

We can design such a program so that it loads the "rest" of the operating system into memory.  This program we call the **bootloader**.  Since it is located at the first sector of a storage device, this sector is called the **boot sector**.

### GRUB and Multiboot
Fortunately, we don't have to write our own bootloader.  We will use a bootloader called **GRUB** which implements the **Multiboot Specification**: a standardized interface for a kernel to the bootloader and BIOS of x86 systems (it's a little more than this, but that's all we need to know for now).  The Multiboot Standard let's us write a kernel that:
1. is recognized by the bootloader as a kernel.
2. can be setup to control the hardware once loaded into memory.

When writing a kernel, we simply need to include a **multiboot header** as the first part of the kernel program: these are just certain values the bootloader recognizes as being part of a kernel.

Once the bootloader recognizes the program as a kernel, it can appropriately load the kernel into memory: this task is called **bootstrapping**.

Most Linux distributions have GRUB already installed (since it is their own bootloader); otherwise it is likely available from the distributions package manager for standalone/development use.
## Kernel
### Bootstrapper
The first part of a kernel we write is the **bootstrapper**: it includes the multiboot header (that tells the bootloader that this is a kernel) and specifies how it should loaded into memory.

The tutorial page has a more detailed breakdown of the bootstrapper file `boot.s`.  I'll just provide a brief summary of the structure here:
1. The multiboot header: set values for a bootloader to recognize.
2.  Define a stack for the kernel to use.
	- The tutorial defines a 16KiB stack.
3.  The entry point for the kernel.
	- This is where the kernel begins to run once loaded into memory.
	- The hardware is set to *protected mode*: no paging/interrupts -the kernel has complete control of the machine.
	- At this point the bootloader has finished running.
4. Set up the stack register for the kernel.
5. (?) This is where set up for process management might go, but the tutorial skips this for simplicity.
6. Call the rest of the kernel program (`call kernel main`).
7. Put the computer into an infinite loop.

I included a minimal `boot.s` in this folder.  To compile, using the cross-compiler from before:
``` Shell
$HOME/opt/cross/bin/i686-elf-as ./boot.s -o boot.o
```

### Kernel
The rest of the kernel will be written in C or C++.  Typically, C can be written to include the Standard Library of the system on which we are writing: this is called writing in the **hosted environment**.  We need to write the kernel in C's **freestanding environment** -that is, C without any standard library calls.  This is because the GCC cross-compiler does not implement the standard library of our system. 

The tutorial provides a very simple kernel to explore: it just provides a terminal.

I included a version with comments as `kernel.c`; to compile to an object file:
``` Shell
$HOME/opt/cross/bin/i6860-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
```

Quick review of the flags:
- `-std=gnu99` : use C-99 version
- `-freestanding` : binary target won't use system standard libraries
- `O2` : optimize (level 2)
- `-Wall` : all compiler warnings i.e. warnings stop the compile
- `-Wextra` : enable additional warnings

### Linking
The two object files `boot.o` and `kernel.o` now need to be linked to together to produce the final kernel binary.  

A **linker** maps sections of a program (the object files) into the memory of a binary file.  We can't use the default linker in the GCC as it assumes that the target binary will be in userspace i.e. virtual address space (?); we need to explicitly say where the bootstrapper and the rest of the kernel will be in memory, since it is being loaded into *actual memory space*.

The tutorial provides a simple **linking script** to use as a linker; I included it as `linker.ld`.

Summary of the linker structure:
- Designate the entry point of the kernel (`_start`).
- Order the sections from the object files into the final OS image:
	1. 2 MB offset from start of memory.
		- This is because interrupt service routines, BIOS, the bootloader, and video memory take up the first 2 MB of memory.
	2. The multiboot header and `.text` section
	3. Read-only data `.rodata`
	4. Initialized read-write data `.data`
	5. Uninitialized read-write data `.bss` and stack

You can tell `gcc` to use a specific linking script with the `-T` flag.  To link `boot.o` and `kernel.o` together use:
``` Shell
$HOME/opt/cross/i686-elf-gcc -T linker.ld -o myos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
```

Two new flags:
- `-nostdlib` : tell the linker not to use the *system standard library*.
- `-lgcc` : tell linker to use the *GCC support library *instead
	- Since we are cross-compiling, the linker cant' use the system library but need to give another library to use instead.

## Verify OS image
The simple OS is now `myos.bin`.  With GRUB on your system, check with:
``` Shell
grub-file --is-x86-multiboot myos.bin ; echo $?
```
The output is `0` for success (yes) or `1` for error.
