from typing import Optional, TypeVar


T = TypeVar('T')

def ordenar_per_insercio(v: list[T]) -> None:
    n = len(v)
    i = 1
    while i < n:
        inserir(v, i) 
        i += 1

def inserir(v: list[T], i: int) -> None:
    x = v[i]
    j = i
    while j > 0 and v[j - 1] > x:
        v[j] = v[j - 1]
        j -= 1
    v[j] = x
    