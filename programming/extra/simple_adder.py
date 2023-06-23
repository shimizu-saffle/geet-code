from typing import Callable

def adder(num: int) -> Callable[[int], int]:
    def add(n: int) -> int:
        return num + n
    return add

a = adder(10)
print(a(3))
print(a(8))
