import ctypes
import time

lib = ctypes.CDLL("./build/libops.so")

# Configuración tipos
lib.add.argtypes = [ctypes.c_long, ctypes.c_long]
lib.add.restype = ctypes.c_long

print("ADD:", lib.add(10, 20))

# Benchmark
def benchmark():
    N = 10_000_000
    start = time.time()
    for _ in range(N):
        lib.add(1,2)
    print("ASM:", time.time() - start)

benchmark()
