CC = gcc
AS = gcc
LD = ld

CFLAGS = -ffreestanding -m64 -O2 -Wall -Wextra -nostdlib -fno-stack-protector -fno-pie
LDFLAGS = -T linker.ld -nostdlib

BUILD_DIR = build
SRC_DIR = src

KERNEL = $(BUILD_DIR)/kernel64.bin

all: $(KERNEL)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(KERNEL): $(SRC_DIR)/boot.s $(SRC_DIR)/kernel.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $(SRC_DIR)/kernel.c -o $(BUILD_DIR)/kernel.o
	$(AS) -c $(SRC_DIR)/boot.s -o $(BUILD_DIR)/boot.o
	$(LD) $(LDFLAGS) -o $(KERNEL) $(BUILD_DIR)/boot.o $(BUILD_DIR)/kernel.o

iso: all
	mkdir -p $(BUILD_DIR)/iso/boot/grub
	cp $(KERNEL) $(BUILD_DIR)/iso/boot/kernel64.bin
	cp grub.cfg $(BUILD_DIR)/iso/boot/grub/grub.cfg
	grub-mkrescue -o $(BUILD_DIR)/kernel64.iso $(BUILD_DIR)/iso

run: iso
	qemu-system-x86_64 -cdrom $(BUILD_DIR)/kernel64.iso

clean:
	rm -rf $(BUILD_DIR)
