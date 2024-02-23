#!/usr/bin/env bash
#
# For creating a cross-compiler toolchain
# targeting: i686-elf
#
# first, make sure you created $HOME/opt/cross/
# and that source files for GCC are at $HOME/src/gcc-13.2.0/
# and that source files for Binutils are ate $HOME/src/binutils-2.42/
# optionally, include source files for GDB in $HOME/src/gdb.x.y.z for whatever version x.y.z.
#

### Set-Up Environment for Build ###
export PREFIX="$HOME/opt/cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

### Build Binutils ###
cd $HOME/src

mkdir build-binutils
cd build-binutils
../binutils-2.42/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install

### Build GDB ###
#../gdb.x.y.z/configure --target=$TARGET --prefix="$PREFIX" --disable-werror
#make all-gdb
#make install-gdb

### Build GCC ###
cd $HOME/src

# Make sure $PREFIX/bin is in the $PATH
which -- $TARGET-as || echo $TARGET-as is not in the PATH

mkdir build-gcc
cd build-gcc
../gcc-13.2.0/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc

