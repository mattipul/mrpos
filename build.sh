#!/bin/sh
arm-bcm2708-linux-gnueabi-as ./src/boot/boot.s -o ./bin/boot.o
arm-bcm2708-linux-gnueabi-gcc ./src/boot/kernel.c -o ./bin/kernel.o  -nostdlib -nostartfiles -ffreestanding
arm-bcm2708-linux-gnueabi-gcc -T ./src/boot/linker.ld -o mrpos.bin -ffreestanding -O2 -nostdlib ./bin/boot.o ./bin/kernel.o -lgcc
