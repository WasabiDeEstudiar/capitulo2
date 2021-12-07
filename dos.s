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
        .file   "dos.c"
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
        @ args = 0, pretend = 0, frame = 24
        @ frame_needed = 0, uses_anonymous_args = 0
        ldr     ip, .L3
        push    {r0, r1, r2, r3, r4, r5, r6, lr}
        add     lr, sp, #4
        ldmia   ip!, {r0, r1, r2, r3}
        stmia   lr!, {r0, r1, r2, r3}
        ldr     r1, [sp, #8]
        add     r3, r0, r1
        ldr     r1, [sp, #12]
        ldr     r0, .L3+4
        add     r3, r3, r1
             ldr     r1, [ip]
        add     r1, r3, r1
        add     sp, sp, #28
        @ sp needed
        ldr     lr, [sp], #4
        b       printf
.L4:
        .align  2
.L3:
        .word   .LANCHOR0
        .word   .LC1
        .size   main, .-main
        .section        .rodata
        .align  2
        .set    .LANCHOR0,. + 0
.LC0:
        .word   128
        .word   32
        .word   100
        .word   -30
        .word   124
        .section        .rodata.str1.1,"aMS",%progbits,1
.LC1:
        .ascii  " La suma es %d \012\000"
        .ident  "GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
        .section        .note.GNU-stack,"",%progbits
