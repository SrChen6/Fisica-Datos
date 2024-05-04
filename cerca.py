from typing import Optional, TypeVar

T = TypeVar('T')

def posicio(v: list[T], x: T) -> Optional[None] #int|None:
    """..."""
    n = len(v)
    for i in range(n):
        if v[i] == x:
            return i
    return None

