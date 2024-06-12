# Hand-Editing x86 Assembly Code

This repository contains the implementation of a simple program in x86 Assembly that accepts two integers from the user and prints their quotient and remainder after division. The code is hand-edited to pass parameters and return values on the stack rather than through registers, optimizing the process.

## Overview

- **Objective**: Transform a C program into Assembly code that computes the quotient and remainder using the `idiv` instruction for signed integers.
- **Key Concepts**: Integer division, modulo operation, parameter passing on the stack, and register usage in x86 Assembly.

## Details

### Integer Division in x86 Assembly

- **Instructions Used**:
  - `idiv`: Performs signed integer division.
- **Register Usage**:
  - Dividend in `EAX`.
  - Sign extension in `EDX`.
  - Quotient in `EAX`.
  - Remainder in `EDX`.

### Function Implementation

- **Functions**:
  - **`div_qr`**: Computes the quotient and remainder.
  - **`main`**: Handles user input and calls `div_qr`.

### Code Breakdown

- **`pa4-1.s`**:
  - **Function `div_qr`**: Takes dividend, divisor, and address of remainder from the stack, performs division, and stores the quotient and remainder.
  - **Function `main`**: Prompts user for input, calls `div_qr`, and prints the results.

## Files

- **pa4-1.s**: The Assembly code file implementing the functionality.

