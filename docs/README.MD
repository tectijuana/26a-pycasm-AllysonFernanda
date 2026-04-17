# Proyecto: Integración Python + C + ARM64 Assembly

## Autor

Allyson Fernanda Monjaraz Torres

## Descripción

Este proyecto implementa una librería de alto rendimiento en ARM64 Assembly, integrada con Python mediante C y ctypes.

## Objetivo

Demostrar la interoperabilidad entre lenguajes de alto y bajo nivel, así como analizar el rendimiento.

## Tecnologías

* Python 3
* C (clang)
* ARM64 Assembly (AArch64)
* Termux / Raspberry Pi OS

## Funcionalidades

* Operaciones básicas
* Procesamiento de arreglos
* Funciones optimizadas en ensamblador

## Compilación

```bash
make
```

## Ejecución

```bash
python src/app.py
```

## Resultados esperados

Comparación de rendimiento entre:

* Python
* C
* Assembly

## Conclusiones

[Explica lo aprendido]

## Autorreflexión

[Qué mejorarías]

---

## 📊 REPORTE (estructura para PDF)

Incluye esto en tu `reporte.pdf`:

### 1. Introducción

* Qué es ARM64
* Por qué usar assembly

👉 El ensamblador ayuda a entender cómo funciona la computadora a nivel de registros y memoria 

---

### 2. Marco teórico

* Arquitectura ARM
* Registros (x0–x30)
* ABI

---

### 3. Desarrollo

* Explicación de cada archivo:

  * Python
  * C
  * Assembly

---

### 4. Resultados

Tabla tipo:

| Método | Tiempo |
| ------ | ------ |
| Python | X ms   |
| C      | X ms   |
| ASM    | X ms   |

---

### 5. Análisis

* ASM más rápido en loops
* Overhead de Python

---

### 6. Conclusiones

* Cuándo usar ASM
* Ventajas y desventajas

---

### 7. Evidencias

* Capturas de:

  * ejecución
  * GDB
  * resultados

---

## 🧪 EVIDENCIAS QUE DEBES TOMAR

Guarda capturas de:

* `make`
* ejecución Python
* uso de GDB:

  ```bash
  gdb ./libops.so
  ```
* `info registers`
* `disassemble`

---
