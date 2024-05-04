def factorial(n: int) -> int:
    """Return n!"""
    i = 0
    f = 1
    # Invariant: f = i! and i <= n, són les condicions lògiques
    while i != n:
        