// ============================================================
// Autor: TuNombre
// Proyecto: ARM64 High Performance Ops
// Descripción:
// Implementación optimizada de operaciones básicas
//
// Versión en C (referencia):
/*
int add(int a, int b){ return a + b; }
int sub(int a, int b){ return a - b; }
int mul(int a, int b){ return a * b; }
*/
// ============================================================

.text
.global add_asm
.global sub_asm
.global mul_asm
.global max_asm
.global min_asm
.global sum_array_asm
.global count_even_asm
.global dot_product_asm

// ------------------------------------------------------------
// int add_asm(int a, int b)
// x0 = a, x1 = b
// return x0
// ------------------------------------------------------------
add_asm:
    add x0, x0, x1
    ret

// ------------------------------------------------------------
sub_asm:
    sub x0, x0, x1
    ret

// ------------------------------------------------------------
mul_asm:
    mul x0, x0, x1
    ret

// ------------------------------------------------------------
max_asm:
    cmp x0, x1
    csel x0, x0, x1, gt
    ret

// ------------------------------------------------------------
min_asm:
    cmp x0, x1
    csel x0, x0, x1, lt
    ret

// ------------------------------------------------------------
// long sum_array(long *arr, long n)
// x0 = arr
// x1 = n
// ------------------------------------------------------------
sum_array_asm:
    mov x2, #0        // sum
    mov x3, #0        // i

loop_sum:
    cmp x3, x1
    bge end_sum

    ldr x4, [x0, x3, lsl #3]
    add x2, x2, x4

    add x3, x3, #1
    b loop_sum

end_sum:
    mov x0, x2
    ret

// ------------------------------------------------------------
// count even numbers
// ------------------------------------------------------------
count_even_asm:
    mov x2, #0
    mov x3, #0

loop_even:
    cmp x3, x1
    bge end_even

    ldr x4, [x0, x3, lsl #3]
    and x5, x4, #1
    cbnz x5, skip

    add x2, x2, #1

skip:
    add x3, x3, #1
    b loop_even

end_even:
    mov x0, x2
    ret

// ------------------------------------------------------------
// dot product
// ------------------------------------------------------------
dot_product_asm:
    mov x3, #0
    mov x4, #0

loop_dot:
    cmp x3, x2
    bge end_dot

    ldr x5, [x0, x3, lsl #3]
    ldr x6, [x1, x3, lsl #3]

    mul x7, x5, x6
    add x4, x4, x7

    add x3, x3, #1
    b loop_dot

end_dot:
    mov x0, x4
    ret
