/*
========================================
Autor:Allyson Fernanda Monjaraz Torres
Proyecto: ARM64 Performance Library
Archivo: ops.s
Descripción:
Implementación optimizada en ARM64
========================================
*/

/*
C equivalente:

long suma(long a, long b){
    return a + b;
}
*/

.global suma
.type suma, %function

suma:
    add x0, x0, x1   // x0 = x0 + x1
    ret


/*
long resta(long a, long b){
    return a - b;
}
*/

.global resta
.type resta, %function

resta:
    sub x0, x0, x1
    ret


/*
long multiplicacion(long a, long b){
    return a * b;
}
*/

.global multiplicacion
.type multiplicacion, %function

multiplicacion:
    mul x0, x0, x1
    ret


/*
long maximo(long a, long b){
    return (a > b) ? a : b;
}
*/

.global maximo
.type maximo, %function

maximo:
    cmp x0, x1
    csel x0, x0, x1, gt   // selección condicional
    ret


/*
long minimo(long a, long b){
    return (a < b) ? a : b;
}
*/

.global minimo
.type minimo, %function

minimo:
    cmp x0, x1
    csel x0, x0, x1, lt
    ret


/*
long suma_array(long *arr, long n)
*/

.global suma_array
.type suma_array, %function

suma_array:
    mov x2, 0          // i = 0
    mov x3, 0          // suma = 0

loop_suma:
    cmp x2, x1
    b.ge fin_suma

    ldr x4, [x0, x2, lsl #3] // arr[i]
    add x3, x3, x4

    add x2, x2, 1
    b loop_suma

fin_suma:
    mov x0, x3
    ret


/*
long contar_pares(long *arr, long n)
*/

.global contar_pares
.type contar_pares, %function

contar_pares:
    mov x2, 0
    mov x3, 0

loop_pares:
    cmp x2, x1
    b.ge fin_pares

    ldr x4, [x0, x2, lsl #3]
    and x5, x4, 1
    cmp x5, 0
    cinc x3, x3, eq   // incrementa si es par

    add x2, x2, 1
    b loop_pares

fin_pares:
    mov x0, x3
    ret


/*
long dot_product(long *a, long *b, long n)
*/

.global dot_product
.type dot_product, %function

dot_product:
    mov x3, 0   // i
    mov x4, 0   // suma

loop_dot:
    cmp x3, x2
    b.ge fin_dot

    ldr x5, [x0, x3, lsl #3]
    ldr x6, [x1, x3, lsl #3]

    mul x7, x5, x6
    add x4, x4, x7

    add x3, x3, 1
    b loop_dot

fin_dot:
    mov x0, x4
    ret
