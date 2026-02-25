# Kernel64

Experimental x86_64 kernel built in a freestanding environment.

The C99 standard defines two types of implementations: hosted and freestanding.
In a hosted implementation, a full C standard library environment is available.
In a freestanding implementation, execution does not require an operating system.

This project follows the freestanding model:

* No hosted C standard library (libc), but libc is not forbidden (simply not provided automatically) and there is the possibility of implementing our own.

* No printf

* No malloc (there is no dynamic memory allocator, initially).


## Repository Structure

```
kernel64/
├── README.md
├── CHANGELOG.md
├── CONTRIBUTING.md
├── .gitignore
├── Makefile
├── linker.ld
├── grub.cfg
├── src/
│   ├── kernel.c
│   └── boot.S
└── build/
```

NOTE: As an optional future refinement (not needed yet), once the project grows beyond a certain milestone (M3 or more), it may be necessary to add:

```
├── include/
        kernel/
├── arch/
        x86_64/
```

ATTENTION: You should NOT commit the build/ directory, it must be generated, not versioned. Hence, the following code was added to the .gitignore file:

```
build/
*.o
*.bin
*.elf
*.iso
```

Then, as a strong suggestion and because you do not want to commit build artifacts, run in the Local machine:

```
rm -rf build
git add .gitignore
git commit -m "Add build artifacts to .gitignore"
```


## Architecture

* Target: x86_64

* Bootloader: GRUB (Multiboot2)

* Toolchain: x86_64-elf cross-compiler

* Language: C (freestanding) + Assembly

* Emulator: QEMU

The project is compiled using a freestanding cross-compilation toolchain (x86_64-elf-gcc) to avoid host system dependencies. GCC is available at https://gcc.gnu.org


## Purpose of Kernel64

Kernel64 is an educational project designed to understand how software interacts directly with hardware.

Contributors are encouraged to study C fundamentals in their free time and while applying C99 concepts in the kernel environment.

The objective is not to build a production Linux OS, but to understand the fundamental mechanisms underlying modern kernels such as the Linux kernel:

* Boot process mechanics

* Memory layout and control

* Interrupt handling

* Low-level execution flow

The evolution of this project is documented in CHANGELOG.md


## Milestones of Kernel64

### M1 — Boot & Output

* Multiboot2 header

* Linker script

* Kernel entry point

* Direct VGA text buffer output

* QEMU boot verification

### M2 — Execution Environment

* Minimal freestanding build

* Serial debugging output

* Basic interrupt stubs

### M3 — Memory Control

* Paging setup

* Long mode verification

* Structured memory layout

### M4 — Kernel Core

* Minimal allocator

* Input handling

* Basic command loop
