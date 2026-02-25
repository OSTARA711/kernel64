# Contributing to Kernel64

Welcome! This repository is a collaborative and educational project.

Contributions are accepted, but please follow the guidelines below to ensure a clean history of commits and maintain an adequate project structure.


## Branches

¤ main (protected branch):

   * Only project maintainers can merge directly.

   * Must remain stable at all times.

¤ branches with features (for contributors and alike):

   * All contributors should create a new branch for each feature or fix:

```
      git checkout -b feature/<description>
```

   * Once complete, open a pull request (PR) against main.

   * Include a clear description of changes and link to relevant milestones.


## Commits

* Use clear, descriptive commit messages.

* Follow this format for consistency:

```
      [M1] Added Multiboot2 header and minimal kernel entry
```

* Reference milestones whenever possible (M1, M2, etc...).

* Keep each commit focused — avoid bundling unrelated changes.


## Pull Requests

* Open PRs from feature branches to main.

* PRs must be reviewed by a maintainer before merging.

Include:

* Short description of what was added or fixed

* Relevant milestone

* Screenshots or logs if applicable (QEMU output, etc...)


## Code Style

* Use freestanding C only (-ffreestanding).

* Avoid standard library functions unless implemented in the kernel environment.

* Use clear naming and consistent formatting.

* Keep assembly minimal and well-commented.


## Reporting Issues

Open an issue for:

* Bugs

* Unexpected QEMU behavior

* Build or toolchain problems

* Include reproduction steps and any logs if available.


## General Guidelines

* Respect the milestone roadmap.

* Test code in QEMU before submitting PRs.

* Ask questions via the project’s communication channel (GitHub Issues + Discussions) if unsure.

* Maintain a collaborative and professional environment.
