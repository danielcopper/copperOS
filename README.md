# copperOS

This is my personal take on Linux From Scratch.
This is based on version 1.11 of LFS.

The Host System is Ubuntu 22.04 running as a Virtual Machine in Hyper-V.

## TOC

- [copperOS](#copperos)
  - [TOC](#toc)
- [Notes](#notes)
  - [Chapter 3](#chapter-3)
    - [Packages](#packages)
    - [Chapter 7](#chapter-7)
  - [Filesystem](#filesystem)
- [Acknowledgement](#acknowledgement)

# Notes

## Chapter 3

### Packages

The packages to build have been updated according to the Security Advisories from LFS 11.1, these include

- gzip, now version: 1.12
- Linux Kernel, now version: 5.18.12
- Open SSL, now version: 3.0.5
- VIM, now version: 9.0.0006
- Xz, Update Security patch: 16587 (via Rebuild)
- Zlib, no version 1.2.12 (might cause Errors)
  - [Note that the update will cause 9 test failures in perl testsuite and these failures should be ignored. And, if you are going to strip the debug symbols for your LFS system, you need to adjust the filename of zlib library in the stripping instruction](https://www.linuxfromscratch.org/lfs/advisories/11.1.html)

### Chapter 7

Not all directories specified in [FHS](https://refspecs.linuxfoundation.org/fhs.shtml) have been created.

## Filesystem

These are the partitions that have been created for the LFS System. They are on a separate disk from the Host system. I added the home partition because I plan on doing BLFS as well.

![image](https://user-images.githubusercontent.com/82325222/180139671-2449f80c-f56d-4a70-b0d3-808e5e381850.png)

# Acknowledgement

This is based on the awesome book [Linux From Scratch](https://www.linuxfromscratch.org/index.html)
