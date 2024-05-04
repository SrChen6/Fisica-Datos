

---
Divide and conquer I

---
# Master theorem
$T(n)=a·T(n/b)+O(n^{c})$
$$T(n)=\begin{cases}
O(n^{c})\quad\mbox{ when }a<b^{c} \\
O(n^{c}\log n)\quad\mbox{ when }a=b^{c} \\
O(n^{\log_{b}a})\quad\mbox{ when }a>b^{c}
\end{cases}$$
on $a$ es el branching factor
n/b és la longitud després de la divisió
$n^{c}$ es el cost de combinar

# Muster theorem
$T(n)= a·T(n-b)+O(n^{c})$
$$T(n)=\begin{cases}
O(n^{c})\quad\mbox{ when }a<1 \text{ (never occurs)}\\
O(n^{c}\log n)\quad \mbox{ when }a=b^{c} \\
O(n^{\log_{b}a})\quad \mbox{ when }a>b^{c}
\end{cases}$$
on $a$ és el branching factor
$n-b$ és la longitud després de la divisió
$n^{c}$ es el cost de combinar

[[04_DivideAndConquer_2.pdf]]

# Quick sort
Tenim un element x (pivot), a l'esquerra situem els elements més petits i a la dreta els més grans
- Problema: Potser no queda balancejat, com trobar un bon pivot?
Funcionament:
1. i a l'inici, j al final
2. i avança fins trobar un element $\geq$ pivot, j avança fins trobar un element $\leq$ pivot
3. Canvi i, j
4. Repetir fins que i,j es creuin
5. Recursiu de 0$\to$ j, de $j+1\to$ final
## Complexitat
Partició: $O(n)$ 
- Balancejat: recursiu $O(n\log n)$ 
- Desbalancejat: worst case scenario (selection sort) $O(n^{2})$ 

# Punts propers
1. Ordenar segons les $x$ 
2. Ordenar les $y$ mantenint el valor de $x$ 
3. Dividim les $x$ en 2
4. Separem les $y$ segons la divisió feta sobre les $x$ 