# Building GCC Cross-Compiler on Debian
This is the tutorial specifically for building the tool-chain on a Debian machine.

1. Build the cross-compiler

## Preparations
A **cross-compiler** is a compiler on a host machine that builds binaries for a different machine.  Since I'm on Debian, GCC and Binutils should already be installed.  We are going to use these pre-installed versions to ==build new versions for another target platform==.

Check the versions of your already installed GCC and Binutils:
``` Bash
$ gcc --version
$ ld --version
```
Some versions don't work well with each other; later on if you come into trouble, try pairing different versions.  As a tip, try finding versions that were released together.

The **target triplet** describes the platform on which our code will run with three fields: CPU model - vendor - operating system name.  For example: `x86_64-unknown-freebsd`.  For this tutorial, *our* target triplet is: `i686-elf`.  This is the target of our cross-compiler.

### Dependencies
To build our new GCC, we need a few dependencies installed:
- [ ] A Unix-like environment (Windows users can use the Windows Subsystem for Linux or Cygwin)
- [ ] Enough memory and hard disk space (it depends, 256 MiB will not be enough).
- [ ] GCC (existing release you wish to replace), or another system C compiler
- [ ] G++ (if building a version of GCC >= 4.8.0), or another system C++ compiler
- [ ] Make
- [ ] Bison
- [ ] Flex
- [ ] GMP
- [ ] MPFR
- [ ] MPC
- [ ] Texinfo
- [ ] ISL (optional)
- [ ] CLooG (optional)A Unix-like environment (Windows users can use the Windows Subsystem for Linux or Cygwin)

On Debian, you can install all of these with:
``` bash
$ sudo apt install build-essential bison flex libgmp3-dev libmpc-dev libmpfr-dev texinfo libisl-dev
```

### Download Source
Download the source code for GCC and Binutils into a directory.  The actual tutorial places source code into `$HOME/src`; I'll follow suite and do the same.  

You can get the source on [the GCC website](https://www.gnu.org/software/gcc/) which has a `git` link or a link to the `.tar` packages at [GNU Mirror](https://ftp.gnu.org/gnu/gcc/).  I highly recommend the latter; git takes a long time.

For downloading the Binutils source code, I highly recommend downloading the latest source code at [the GNU mirror](https://ftp.gnu.org/gnu/binutils/) as downloading through `git` is extremely slow.

GDB (the GNU debugger) is part of Binutils, but you can build it separately too.  Download the source at [the official website](https://ftp.gnu.org/gnu/gdb/).
## Building
It is recommended to build the cross-compiler in `$HOME/opt/cross` for just your use or globally in `/usr/local/cross`.  I'll go with the first.  
To build, follow the below instructions, remembering to replace `x.y.z` with the actual version numbers.  
I included the bash script `barebones.sh` to make things easier.

``` bash
### Set-Up Environment for Build ###
export PREFIX="$HOME/opt/cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

### Build Binutils ###
cd $HOME/src

mkdir build-binutils
cd build-binutils
../binutils-x.y.z/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install

### Build GDB (optional) ###
../gdb.x.y.z/configure --target=$TARGET --prefix="$PREFIX" --disable-werror
make all-gdb
make install-gdb

### Build GCC ###
cd $HOME/src

# Make sure $PREFIX/bin is in the $PATH
which -- $TARGET-as || echo $TARGET-as is not in the PATH

mkdir build-gcc
cd build-gcc
../gcc-x.y.z/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc
```

Note, it took about 10 minutes for Binutils to compile and about 40 minutes for GCC to compile on my machine.

## Verify GCC
Test the new cross-compiler works:
``` bash
$ $HOME/opt/bin/i686-elf-gcc --version
```



