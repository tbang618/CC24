# Notes on WebAssembly

## Virtual Machines
We can use software to simulate machines.  That is, we can write software that provides the same interface to interact with a machine.  Such a software is a **virtual machine**.

The interface to a virtual machine may be called the **virtual instruction set architecture** or *virtual ISA*: the built-in instructions for a virtual machine.  

An **emulator** is a virtual machine that reproduces a machine that exists in real-life.  The level of simulation necessary can be extreme; for example, the menu graphics on the NES game *Jurassic Park* relies on expected MMC hardware delay.

A virtual machine might reproduce a machine that does not exist in real-life, but instead an "ideal" machine.  I might call this an **abstract virtual machine**.  The Java Virtual Machine (JVM) is one such virtual machine.

**Assembly language** is the human-readable format of code that represents *native instructions* of a computer i.e. the ISA.  The actual native instructions to a computer are in "non-human-readable" machine code (1s and 0s).  Compilation transforms assembly language into machine code.

Virtual machines run their own machine code.  However, this is *not* the actual machine code of the host machine, on which the virtual machine resides.  To highlight this distinction, to much confusion, some people refer to the machine code of virtual machines as **bytecode**: this is usually a general term for intermediate code in a compilation process, as in it will be later compiled into *host machine code*.  For example, JVM takes Java *bytecode*.
