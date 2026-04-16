import ctypes
import time
import random

lib = ctypes.CDLL("./build/libops.so")

lib.suma.argtypes = [ctypes.c_long, ctypes.c_long]
lib.suma.restype = ctypes.c_long

print("Suma ASM:", lib.suma(10, 20))


# Benchmark simple
def test_python(arr):
    return sum(arr)

def test_asm(arr):
    ptr = (ctypes.c_long * len(arr))(*arr)
    return lib.suma_array(ptr, len(arr))


arr = [random.randint(1, 100) for _ in range(100000)]

start = time.time()
test_python(arr)
print("Python:", time.time() - start)

start = time.time()
test_asm(arr)
print("ASM:", time.time() - start)
