![[invariants.pdf]]

Eina per entendre que passa dins d'un bucle (una variable), cosa que ens facilita crear algorismes més complicats.

Definició: proposició lògica que ha de ser certa en 3 llocs:
	1. A l'inici del loop
	2. Durant cada iteració
	3. Al final de l'iteració

Un invariant atura TOT el programa i mira només un frame, sense dinamisme, sense considerar els estats anteriors o posteriors

Exemple de invariant:
	- Funció de factorial:![[factorial.py]]
		- f = i ! a cada iteració
		- i $\leq$ n a cada iteració
	- Revertir dígits:
	- Classificació d'elements: