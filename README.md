# Assembly Integer Overflow Vulnerability

This repository demonstrates a potential integer overflow vulnerability in assembly code. The vulnerability arises from an incorrect calculation of a memory address, which can lead to unexpected behavior or crashes.

## Vulnerability Details

The `bug.asm` file contains assembly code with a faulty memory access instruction. The code calculates a memory address by adding the contents of registers `ebx` and `ecx * 4`. If `ecx` is large enough, the multiplication can result in an integer overflow, causing the calculated address to wrap around and point to unintended memory locations.

## Solution

The `bugSolution.asm` file provides a corrected version of the code. It incorporates checks to prevent integer overflow and ensures the calculated address remains within valid bounds.