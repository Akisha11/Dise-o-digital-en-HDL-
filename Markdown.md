# Proyecto II - Introducción a diseño digital en HDL


## Introducción

El diseño digital es una disciplina que se enfoca en la creación de productos y servicios que se presentan en formato digital. Esto puede incluir desde sitios web y aplicaciones móviles hasta productos de realidad virtual y aumentada. El diseño digital es una parte integral de la era digital actual y es esencial para que las empresas y organizaciones conecten con su audiencia en línea.


## Modo de selección
Según el input del usuario utilizando los switches 14 y 15 de la tarjeta FPGA siendo 0 el estado apagado y 1 el estado encendido se seleccionará el modo de operación de entre los 4 posibles.


```mermaid
graph TD;
    A[Input de la tarjeta FPGA]-->J((14-OFF y 15 OFF))-->B[Modo 00];
    A-->F((14-OFF y 15 ON))-->C[Modo 01]
    A-->G((14-ON y 15 OFF))-->D[Modo 10];
    A-->I((14-ON y 15 ON))-->E[Modo 11];
```

## Modo de lectura y sincronización



## Modo de cálculo de código BCD



## Modo de decodificado en display de 7 segmentos



## Modo 00 - Conversión de binario de 14 bits a  BCD

En el modo de operación 00. Calculará los dígitos de unidades, decenas, centenas y millares que se desplegarán en el panel de siete segmentos. 

```mermaid
graph TD;
	A[Inicializa las variables]
	A-->B{Si 14>0}
	B-->C[14-1]
	C-->D[Corre el BCD un bit a la izquierda]
	D-->E[Agrega el próximo dígito binario desde la derecha del número binario al bit menos significativo del BCD]
	E-->F{Los 4 bits menos significativos son mayores a 9}
	F-->G[Sigue buscando solución]
	F-->H[Sumar 6 al BCD]
	G-->I{Si los bits del 4 al 7 del BCD son mayores que 9}
	I-->J[Sigue buscando solución]
	I-->K[Agregar 6 a los bits del 4 al 7 del BCD]
	J-->L{Si los bits del 8 al 11 del BCD son mayores que 9}
	L-->M[Sigue buscando solución]
	L-->N[Agregar 6 a los bits del 8 al 11 del BCD]
	M-->O{Si los bits del 9 al 14 del BCD son mayores que 9}
	O-->P[Sigue buscando solución]
	O-->Q[Agregar 6 a los bits del 9 al 14 del BCD]
	P-->R[Convierta los 4 bits menos significativos del BCD a su valor BCD equivalente usando la tabla de conversión]
	R-->S{Si el valor del BCD no es válido}
	S-->T[Imprimir no válido]
	T-->U[Break loop]
	S-->V[Agregue el valor del BCD al resultado]
	V-->W[Envía señal al decodificador de 7 segmentos]
	W-->B
	
	
```


## Modo 01 - Conversión de dos números binarios de 6 bits a BCD

Se realiza el mismo procedimiento de conversión de binario a BCD pero con dos números de 6 bits. Descartando los bits 13 y 6.

## Modo 10 - Despliegue de número binario de 14 bits en hexadecimal

Desplega el número sin signo de 14 bits en hexadecimal a través del 7 segmentos.

```mermaid
graph TD
A[Inicializa las variables]
A-->B[i = 14, binario = input, hex = 0]
B-->C{i>0}
C-->D[i = i - 1]
D-->E[Corre el número hexadecimal a la izquierda 4 bits]
E-->F[Extraer los siguientes 4 bits de la derecha del binario y convertirlos a su valor hexadecimal equivalente usando la tabla de conversión]
F-->G{Agregue el valor hexadecimal a los 4 bits más significativos}
G-->H[Continúa]
H-->I[Envía señal al decodificador de 7 segmentos]
H-->J[Desplaza el binario a la derecha por 4 bits]


```

## Modo 11 - Código inversión de signo en complemento a dos de número binario de 14 bits en hexadecimal

Invierte el signo del número en complemento a dos y se desplegará el número con signo de 14 bits en hexadecimal a través del 7 segmentos.

## Análisis de principales problemas hallados durante el trabajo y de las soluciones aplicadas.

Dificultades en la comunicación entre las partes, falta de coherencia en el diseño entre las partes dificultando la implementación y conexión entre los distintos módulos creados por los integrantes del grupo y desconocimiento a la hora del uso de las herramientas necesarias para la creación del proyecto.
