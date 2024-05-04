
 | concepto                | python                                             | c++                                         |     |
 | ----------------------- | -------------------------------------------------- | ------------------------------------------- | --- |
 | acceder a los elementos | for x in lst: /print(x)                            | for(T x:v){cout << x << endl}               |     |
 | por índice              | for i in range(n): %print(lst[i])                  | for(int i=0; i<n;++i){cout << v[i] << endl} |     |
 | paso de parámetros      | copiar la flecha (paso por valor de la referencia) | paso por valor                              |     |
 | 1                       | def escribir(lst:lst[T])->None:                    | void escribir(const vector<T> &v){...}      |     |
 | 2                       | def main()-> None:%...%escribir(lst)               |                                             |     |
 | 3                       | lst[0]=4 cambia la lista original                  |                                             |     |
 | 4                       | lst = [0] cambia la REFERENCIA hacia otra lista    |                                             |     |
 |                         |                                                    |                                             |     |


Python
- Nombre
	1. list
	2. lst: list [T]
- Representación
	1. lst -> (rectangulo con secciones), de 0 a n-1
	2. lst -> [(algo),(algo)...]
acceso:
	lst[E], siempre valido (negativos y mayores que n-1)
numero de elementos: len(list)
crear lista
	vacía: lst: lst[ T] = []
	n elementos conocido, todos con valor P conocido: lst: lst[T] = [p for _ in range (n)]
	n elementos de la entrada: lst = [read(T) for _ in range(n)]


c++
Nombre
1. # include <vector>
2. vector             vector<T>
- Representación:
	1. v: (rectangulo con secicones), de 0 a n-1
acceso:
	No permite negativos ni mayores que n -1
numero de elementos: v.size();
crear lista
	vacía: vector <T> v;
	n elementos conocido, todos con el mismo valor P conocido: vector <T> v(n, p); 
		si no definimos p, el deafault es 0 (int), 0.0 (float), Flase (bool) "" (str)
	n elementos de la entrada: vector<T> v(n);   for(int i=0;i<n; ++i) cin >> v[i];


lst.append(x) = = v.push_back(x)
lst.pop(x) = = v.pop_back(x)