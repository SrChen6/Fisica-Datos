import numpy as np
from scipy.signal import convolve

##### 3 maneres diferents de presentar les gràfiques
# INLINE: Les gràfiques es pinten just a sota la cel·la que les genera, però no són interactives. 
#         Útil per crear un PDF autocontingut amb enunciat i resultats
#
# WIDGET: Similar a l'anterior però les gràfiques són interactives i redimensionables.
#         - Si obrim moltes gràfiques simultànies es pot queixer per manca de recursos
#         - Cal instal·lar el paquet 'ipympl' (no ve per defecte) per tal que funcioni
#
#     QT: Cada gràfica es crea en una finestra a part.
#         És l'opció més flexible però també dificulta documentar els resultats
#
# DESCOMENTEU UNA DE LES TRES OPCIONS  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
%matplotlib inline
#%matplotlib widget 
#%matplotlib qt
import matplotlib.pyplot as plt

# Fem la mida per defecte dels plots una mica més gran
plt.rcParams['figure.figsize'] = [10, 8]
plt.rcParams['figure.dpi'] = 80

def plotconv(Tx, Th, Ty):
    """
    Presenta les gràfiques dels 3 senyals típics en una convolució («x», «h» i «y») apilats de manera que es puguin apreciar bé les seves relacions temporals
    
    Paràmetres:
      Tx: Una TUPLA (x,nx) que conté, en aquest ordre, el senyal «x» i la seqüencia d'índexs associada, «nx».
      Th: Una TUPLA (h,nh) que conté, en aquest ordre, el senyal «h» i la seqüencia d'índexs associada, «nh».
      Ty: Una TUPLA (y,ny) que conté, en aquest ordre, el senyal «y» i la seqüencia d'índexs associada, «ny».
      
      Òbviament, els dos vectors de cada TUPLA han de tenir la MATEIXA LONGITUD.
      
    Retorna: Res (però dibuixa les 3 gràfiques)
    """
    fig, (axX, axH, axY) = plt.subplots(3, 1, sharex=True, constrained_layout=True)
    axX.stem(Tx[1], Tx[0])
    axX.grid(True)
    axX.set_ylabel('x[n]')
    axX.set_title('Entrada')
    axH.stem(Th[1], Th[0])
    axH.grid(True)
    axH.set_ylabel('h[n]')
    axH.set_title('Resposta impulsional')
    axY.stem(Ty[1], Ty[0])
    axY.grid(True)
    axY.set_ylabel('y[n]')
    axY.set_xlabel('n')
    axY.set_title('Sortida')


# ASSIGNEU valors a les variables segons les dades de la pregunta 2 del qüestionari.
Nmin = -10
Nmax = 20

# Definim el vector d'índexs amb les dades que ens han tocat. Aquest vector servirà tant pel senyal x[n] com per h[n]
n = np.arange(Nmin, Nmax+1)       # La funció «arange(a,b)» genera valors des de «a» fins a «b-1»

# CALCULEU: Quina és la longitud M del vector n?
M = Nmax - Nmin + 1

# GENEREU els senyals x1, x2, h1 i h2 com a arrays NumPy de manera que representin els senyals demanats. 
# Baseu-vos en el model que es dóna pel senyal x2
x1 = 1.0 * (n >= 0) - 1.0 * (n >= 6)
x2 = 1.0 * (n >= 0)     # (n >= 0) dóna «True» (equivalent a 1) quan n>=0 i «False» (equivalent a 0) altrament.
h1 = 1.0 * (n >= 0)
h2 = 1.0 * (n == 0) - 1.0 * (n == 1)

print(x1)
print(x2)
print(h1)
print(h2)

# CALCULEU les 4 convolucions demanades usant la funció «convolve(x1,x2)» del paquet «scipy» que s'ha importat al principi
y11 = convolve(x1, h1)
y12 = convolve(x1, h2)
y21 = convolve(x2, h1)
y22 = convolve(x2, h2)

# ESCRIVIU la instrucció per obtenir la longitud L dels vectors obtinguts
L = len(y11)

# GENEREU un vector d'índexs adequat a les convolucions que acabeu de calcular
# (Proveu les diferents combinacions que us suggereix la pregunta 2 del qüestionari i escolliu la correcta)
ny = np.arange(2 * Nmin, 2 * Nmax + 1)

# Finalment, PINTEU les gràfiques dels 4 casos segons el model que s'indica pel primer cas
plotconv( (x1,n), (h1,n), (y11,ny) )
plotconv( (x1,n), (h2,n), (y12,ny) )
plotconv( (x2,n), (h1,n), (y21,ny) )
plotconv( (x2,n), (h2,n), (y22,ny) )

plt.show()