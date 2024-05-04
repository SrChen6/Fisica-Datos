- a =[vector,...,...]
- b=[vector, ..., ...]

Comandos ([Lliçons (jutge.org)](https://xn--llions-yua.jutge.org/ip-python/llistes/llistes.html)):
- max(a): retorna el màxim de la llista
- min(a): retorna el mínim de la llista
- sum(a): retorna la suma de la llista
- len(a): retorna la longitud de la llista
- a.extend(b): afegeix els elements de b al final de a
- (llista) + (llista): crea una nova llista
- a[numero]: retorna específicament un element de la llista (comença des del 0)
- a.append(numero/b): afegeix el numero/b a l'últim element de a
- a.clear(): elimina tots els elements de la llista
- a[negatiu]: comença des del final (només python)
- sorted(a): retorna a ordenat
- a.sort(): ordena la pròpia llista
- list(reversed(a)): retorna la llista del reves
- a.reverse(): reverteix la pròpia llista
- Crear una nova llista: [:]
	- a[3:]: retorna la llista del 3r fins el final
	- a[:3]: retorna la llista fins el 3r
	- a[3:6]: retorna la llista del 3r fins el 6è
	- a[0:8:2]: retorna la llista saltant de 2 en 2
	- a[8:0:(-1)]: retorna la llista al reves
- for i in range(len(a)): print(a[i] = = for x in a: print(x)
- for x in a: x = 2 * x ≠ for i in range(len(a)): a[i] = 2 * a[i] = = for.....: a[i] *= 2
- a, b, c = a: desempaquetar la llista
- x in a: retorna si x està dins de a (bool)
- a.pop(): retorna i treu l'últim element
- la seguent llista és igual a: quadrats = [i * i for i in range (n)]
    - quadrats: list[int] = []
    - for i in range(n):
        - quadrats.append(i * i)
- A la linia de codi anterior també s'hi pot afegir condicions
- Tupla ≠ Llista:
    - les tuples són inmutables
    - les llistes són mutables

- Garbell d'Eratostenes ([Lliçons (jutge.org)](https://xn--llions-yua.jutge.org/ip-python/llistes/eratostenes.html))
    - Escriure tots els nombres naturals
    - treure 0 i 1
    - mirar el primer primer (2)
    - Tots els múltiples de 2 NO poden ser primers
    - El mateix passa amb el següent primer (3)
    - Així es repeteix el procés amb el següent primer

Referencies ([Lliçons (jutge.org)](https://xn--llions-yua.jutge.org/ip-python/llistes/referencies.html))
	- El que es guarda la variable no és la llista, és una referència a un objecte (la llista), per tant, quan b = a, b guarda **la referencia**, per lo que qualsevol canvi a (a), canvia l'objecte i a consequencia canvia (b)
	- Situació 2B, és per pas per valor, no per referencia, perquè el que es copia és la referencia del valor, no el valor en si.
	- a.(--) canvia l'objecte referenciat, a = (--) canvia la referencia (la fletxa)

- Si en una funció ens poden entrar llistes de diferents tipus ([Lliçons (jutge.org)](https://xn--llions-yua.jutge.org/ip-python/llistes/tipus-generics.html))
	- from typing import Any
	- list[Any]
	- T = Typevar('T'): crea un tipus de variable T


En c++: [[LListes en c++]]