.set MB2_MAGIC, 0xE85250D6
.set MB2_ARCH,  0
.set MB2_LENGTH, header_end - header_start
.set MB2_CHECKSUM, -(MB2_MAGIC + MB2_ARCH + MB2_LENGTH)

.section .multiboot
.align 8
header_start:
    .long MB2_MAGIC
    .long MB2_ARCH
    .long MB2_LENGTH
    .long MB2_CHECKSUM

    # End tag
    .short 0
    .short 0
    .long 8
header_end:

.section .text
.global _start
.extern kernel_main

_start:
    cli

    # Set up stack
    mov $stack_top, %rsp

    call kernel_main

halt:
    hlt
    jmp halt

.section .bss
.align 16
stack_bottom:
    .skip 16384   # 16 KB stack
stack_top:
