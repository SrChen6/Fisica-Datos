from typing import Optional, TypeVar

T = TypeVar('T')

def ordenar_per_seleccio(v: list[T]) -> None:
    """..."""
    n = len(v)
    i = n
    while i != 0:
        p = trobar_pos_max(v, i - 1)
        v[i - 1], v[p] = v[p], v[i - 1]
        i -= 1

def trobar_pos_max(v: list[T], d: int) -> int:
    p = 0
    for j in range(1, d + 1):
        if v[j] > v[p]:
            p = j
    return p

L = [10, 4, 5, 2, 4, 10, 1]
print(L)
ordenar_per_seleccio(L)
print(L)