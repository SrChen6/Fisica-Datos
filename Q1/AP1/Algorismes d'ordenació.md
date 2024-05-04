Per selecció: escollir la carta més gran, posar-la al final i repetir sense la última carta
	Divideix el vector: esquerra (no sabem res) i dreta (perfectament ordenat i posicionat)
	pitjor: quadràtic
	millor: constant
	mitjà: quadràtic
![[ordenacio.py]]

Per inserció: divideix el vector: esquerra (ordre creixent, no posicionat) i dreta (no sabem res)
	pitjor: temps quadràtic
	millor: lineal
	mitjà: quadràtic
	no gaire desordenat: lineal![[ordenacio_ins.py]]
Per fusió: (aka merge sort) 
	si $|L|\leq 1\implies$ ja ordenat
	si $|L|>1\implies$ s'ha d'ordenar.
	passos:
		1. tallar per la meitat
		2. repetir recursivament fins que les llistes siguin curtes ( $|L|\leq 1$)
		3. fusió de totes les parts de manera que quedi tot ben ordenat![[fusio.py]]
	Temps:
		Llista curta: $\bigcirc(1)$
		Llista llarga: $\bigcirc(n)+2T(\frac n 2)=\bigcirc(n\log(n))$ 
	Qualsevol algoritme d'ordenació (per comparacions) necessita, com a mínim $\bigcirc(n\log(n))$ passos.

Per buscar un element NO val la pena ordenar, però si volem buscar $n\log(n)$ o més SI que val la pena.
