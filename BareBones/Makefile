CC = /home/theodore/opt/cross/bin/i686-elf-gcc
CS = /home/theodore/opt/cross/bin/i686-elf-as

all: myos.iso

myos.iso: grub.cfg myos.bin 
	if [ -d "./isodir/boot/" ]; then \
		echo "./isodir/boot/ already exists\n"; \
	else \
		echo "creating ./isodir/boot/grub/\n"; \
		mkdir -p ./isodir/boot/grub/; \
	fi;
	cp grub.cfg ./isodir/boot/grub/grub.cfg
	cp myos.bin ./isodir/boot/myos.bin
	grub-mkrescue -o myos.iso isodir

myos.bin: linker.ld boot.o kernel.o
	$(CC) -T linker.ld -o myos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc

boot.o: boot.s
	${CS} boot.s -o boot.o

kernel.o: kernel.c
	${CC} -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

qemu:
	qemu-system-i386 -cdrom myos.iso

clean:
	rm -f boot.o kernel.o myos.bin myos.iso
	rm -r -f isodir/
