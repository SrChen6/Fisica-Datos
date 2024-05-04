![[analisi-algorismes.pdf]]

No ens interessa els factors componentes del PC, llenguatge, sistema operatiu, etc. Ens centrem en el funcionament de l'algorisme.

Anàlisis de complexitat (AKA anàlisis de eficiencia)
	Miren diferents paràmetres com el temps, la memòria, la energia...
	Utilitza la notació O gran per agrupar la complexitat de diferents algoritmes
	Si un programa té dos apartats, es considera el més lent com la complexitat total
	Si hi ha un condicional amb dos complexitats diferents, es considera la complexitat major.
	En recursivitat: es necessita simplificar la successió per trobar la complexitat.

Observació de diferents funcions:
	La base del logaritme i l'exponent del que hi hagi a dins és irrellevant
	Quan es sumen diferents funcions, només es te en conte el més gran

Ranking de complexitat (de menor a major)
1. constant (1)
2. logarítmiques ($\log(n)$)
3. arrel ($\sqrt n$)
4. lineal ($n$)
5. quasi-lineal ($n\log n$) és el límit del que és acceptable
6. polinomis ($n^d$), 
8. exponencial ($d^n$)
9. factorial ($n!$)