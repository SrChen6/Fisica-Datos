from typing import Optional, TypeVar

T = TypeVar('T')

def posicio_ordenat(v: list[T], x: T) -> Optional[None]:
    """..."""
    n = len(v)
    e = 0
    d = n - 1
    while e <= d:
        m = (e + d)//2
        if v[m] < x:
            e = m + 1
        elif v[m] > x:
            d = m - 1
        else:
            return m
    return None