
        .arch armv6
        .eabi_attribute 28, 1
        .eabi_attribute 20, 1
        .eabi_attribute 21, 1
        .eabi_attribute 23, 3
        .eabi_attribute 24, 1
        .eabi_attribute 25, 1
        .eabi_attribute 26, 2
        .eabi_attribute 30, 4
        .eabi_attribute 34, 1
        .eabi_attribute 18, 4
        .file   "uno.c"
        .text
        .section        .text.startup,"ax",%progbits
        .align  2
        .global main
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   main, %function
main:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        push    {r4, r5, r6, lr}
        mov     r4, #0
        ldr     r6, .L7
        mov     r5, r4
.L2:
        cmp     r5, #0
        ble     .L3
        ldr     r5, .L7+4
.L4:
        cmp     r4, #0
        ble     .L5
        mov     r0, #0
        pop     {r4, r5, r6, pc}
.L3:
        mov     r0, r6
        bl      printf
        add     r5, r5, #1
        b       .L2
.L5:
        mov     r0, r5
        bl      printf
        add     r4, r4, #1
        b       .L4
.L8:
        .align  2
.L7:
        .word   .LC0
        .word   .LC1
        .size   main, .-main
        .section        .rodata.str1.1,"aMS",%progbits,1
.LC0:
        .ascii  "Hola\000"
.LC1:
        .ascii  "Adios\000"
        .ident  "GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
        .section        .note.GNU-stack,"",%progbits
