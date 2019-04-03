array
        .word   1
        .word   -2
        .word   5
        .word   -6
        .word   2
main
        str     fp, [sp, #-4]!
        add     fp, sp, #0
        ldr     r3, .L8
        ldr     r3, [r3]
        cmp     r3, #0
        bge     .L2
        ldr     r3, .L8
        ldr     r3, [r3]
        rsb     r3, r3, #0
        ldr     r2, .L8
        str     r3, [r2]
.L2
        ldr     r3, .L8
        ldr     r3, [r3, #4]
        cmp     r3, #0
        bge     .L3
        ldr     r3, .L8
        ldr     r3, [r3, #4]
        rsb     r3, r3, #0
        ldr     r2, .L8
        str     r3, [r2, #4]
.L3
        ldr     r3, .L8
        ldr     r3, [r3, #8]
        cmp     r3, #0
        bge     .L4
        ldr     r3, .L8
        ldr     r3, [r3, #8]
        rsb     r3, r3, #0
        ldr     r2, .L8
        str     r3, [r2, #8]
.L4
        ldr     r3, .L8
        ldr     r3, [r3, #12]
        cmp     r3, #0
        bge     .L5
        ldr     r3, .L8
        ldr     r3, [r3, #12]
        rsb     r3, r3, #0
        ldr     r2, .L8
        str     r3, [r2, #12]
.L5
        ldr     r3, .L8
        ldr     r3, [r3, #16]
        cmp     r3, #0
        bge     .L6
        ldr     r3, .L8
        ldr     r3, [r3, #16]
        rsb     r3, r3, #0
        ldr     r2, .L8
        str     r3, [r2, #16]
.L6
        mov     r3, #0
        mov     r0, r3
        add     sp, fp, #0
        ldr     fp, [sp], #4
        bx      lr
.L8
        .word   array
