Elements:
	Formula: $G=(V,E)$
	Vertex o nodes o punts: $V,n=|V|$
	Connexions o arestes o línies: $E,m=|E|$
	Llaç: connexió d'un node a ell mateix
	Camí doble: múltiples connexions entre dos nodes
Matriu d'adjecencia:
	Composada per 0's i 1's
	Mostren si la fila $i$ i la columna $j$ estan connectats (hi ha un 1)
	És simètrica respecte la diagonal: $i\sim j\iff j\sim i$ 
Llistes:
	$L_i=$ veïns de $i$
	$|L_1|+|L_2|+···+|L_n|=2|E|$

| Llistes vs matrius | Memoria                | Temps                |
| ------------------ | ---------------------- | -------------------- |
| Matriu             | $\propto n^2$ (dolent) | constant (bo)        |
| Llista             | $\propto m$ (bo)       | $\propto n$ (dolent) |
	$0\leq |E|\leq \binom n 2=\Theta (n^2)$ 
		0: no hi han connexions: millor llistes
		$\binom n 2$: connexions màximes: millor matrius

Grau d'un vertex: # de veïns que te
	$\sum\limits graus=2|E|, gr(i)=|L_i|$  