# Changelog

All notable changes to this project will be documented in this file.

The format is inspired by _Keep a Changelog_ and the project aims to follow Semantic Versioning once releases begin.

---

## M1 - Boot & Output

    Multiboot2 header

    Linker script

    Kernel entry point

    Direct VGA text buffer output

    QEMU boot verification

### Added (22 Feb - 06 Mar)

* Initial repository structure created.
* Project directory prepared locally (`kernel64`).
* `CHANGELOG.md` will document future changes in project.
* Early discussion on bootloader configuration (`grub.cfg`) for the Kernel64 boot process that will use GRUB2 + Multiboot2

### Discussion / Planning

* Bootloader strategy using GRUB is being discussed.
* Creation of `grub.cfg` proposed but not yet implemented.
* Git SSH "Verified Signature" not yet implemented for first Collaborator.

---

## [0.0.1] - Project Initialization

### Added

* Kernel64 project created.
* Git repository initialized.
* First collaborator discussions started on GitHub Discussions.
* Files created: Makefile + linker.ld + .gitignore + /src/(boot.s + kernel.c)

### Notes

* This version represents the conceptual start of the project before any functional kernel code exists.
