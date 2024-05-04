[[06_IteratingOverData.pdf]]

Es busca utilitzar algoritmes que facilitin el tractament de dades massives

# Iteradors i iterables
Iterables: llistes, diccionaris...
Iteradors: objectes amb dos funcions importants
- `iter()`: crea un iterador per una estructura de dades (llista, diccionari...)
- `next()`: retorna el següent element
# next()
`next(it, default)` on, quan acaba tots els elements iterables, retorna el valor per default (similar a un `for(...)`)
# Generadors
En comptes de retornar un valor per ser emmagatzemat, retorna els valors tal que puguin ser tractades per una altra operació immediatament

```
def f(...):
	while True:
		yield n
		...

next(f(...))
```
- Amb comprensió:
	`(...) = ((...) for (...) in range(...))` 
## Generador vs funcions
- Funcions: executa tots els càlculs i retorna 1 valor al final de tot
- Generadors: retornen valors amb freqüència utilitzant un paràmetre amb el `yield(...)`, que atura el programa fins que rep un `next(...)` 
	`yield from (...)` retorna directament des de l'iterable

## Sintaxis
```
from typing import Iterator

def f(...) -> Iterator[...]
```

# Comprehension
```
conjunts:
	(...) = {(...) for (...) in range (...) if (...) else (...)}

diccionaris:
	(variable)) = {(1): (...) for (1) in (...)}
```

# Enumerate
```
for (índex),(valor) in enumerate(...):
	...
```

Accedeix a l'índex i al valor simultàniament

# Zip
Donades dues llistes, retorna la llista de tuples amb el mateix índex

# Map, filter, reduce
- `map()`
	Entren 2 paràmetres: una funció i un objecte iterable
	El resultat és un iterador
```
lst =[...]
result = map(f(), lst)
list(result) #output: [...]
```
- `filter()`
	Entren 2 paràmetres: una funció que retorna un booleà i un objecte iterable
	El resultat és un iterador que retorna tots els True's

```
result = filter(f(), range(...))
```
- `reduce()`
	Llibreria: `from functools import reduce`
	Entren 2 paràmetres: una funció i un iterable
	El resultat és un iterador al qual es va acumulant el valor de les iteracions

```
result = reduce(f(), range(...), x)
```
- `any(), all()`
	`all()` es un `reduce()` que retorna True si tots els elements de l'iterable són True
	`any()` retorna True si al menys un dels elements de l'iterable és True

# $\lambda$ functions
Funcions anònimes que reben uns paràmetres i retornen una expressió