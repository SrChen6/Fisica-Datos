## Excepcions

Objectiu: quan un cas surt malament, que el programa avisi sobre l'error

```
try:
	<body>
except <ErrorType>:
	<handler>
```

Jerarquia d'excepcions: ja definits

## Generar excepcions
```
def f(...):
	raise ValueError('msg')

def g(...):
	try:
		...f(...)
	except ValueError as error:
		print(error)
```

## Assercions
Objectiu: assegurar el bon funcionament. En cas contrari genera una nova excepció