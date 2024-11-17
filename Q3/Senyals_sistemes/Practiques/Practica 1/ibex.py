import pandas as pd

dades = pd.read_csv(
    'Ibex35.csv',                     # Fitxer de dades (ha d'estar a la mateixa carpeta que aquest Notebook, o indicar la ruta)
    delimiter = ',',                  # Els camps estan delimitats per comes
    header = 0,                       # 1a. fila conté noms de les columnes
    usecols = ['Data', 'Íbex'],  # Seleccionem columnes concretes (totes, en aquest cas)
    index_col = 'Data',               # 1a. columna (dates) serà l'índex
    parse_dates = ['Data'],           # Interpreta i converteix les dates
)

# Visualitzem un fragment de la taula. Fixeu-vos en les dates inicial i final de l'interval
dades

# Dibuix automàtic. L'assignació del «resultat» a la variable 'tmp' és simplement per evitar la impressió d'un missatge per pantalla.
tmp = dades.plot(grid=True, title="Valor de l'Íbex 35 (2000-2024)")     