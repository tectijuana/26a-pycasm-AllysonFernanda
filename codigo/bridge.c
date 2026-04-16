/*
========================================
Bridge entre Python y Assembly
========================================
*/

#include <stdint.h>

// Declaraciones externas (ASM)
extern long suma(long, long);
extern long resta(long, long);
extern long multiplicacion(long, long);
extern long maximo(long, long);
extern long minimo(long, long);
extern long suma_array(long*, long);
extern long contar_pares(long*, long);
extern long dot_product(long*, long*, long);
