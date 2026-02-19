Quiz — reconocimiento de números complejos con flex
descripción

Este programa implementado en flex permite reconocer números complejos de la forma:

a+bi
a-bi

donde a y b son números reales y la unidad imaginaria puede ser i, I, j o J.

La entrada del programa se realiza a través de un archivo de texto y la salida muestra en pantalla “acepta” si la expresión cumple el formato o “no acepta” si no lo cumple.

El programa valida que toda la línea del archivo corresponda exactamente a un número complejo con parte real y parte imaginaria obligatorias.

estructura del proyecto

El proyecto contiene los siguientes archivos:

ncomplejos.l
entrada.txt
README.md

funcionamiento

El programa utiliza una expresión regular que permite reconocer:

números enteros positivos o negativos

números decimales

signo positivo o negativo entre la parte real y la imaginaria

unidad imaginaria en cualquiera de las formas: i, I, j o J

La validación exige que no existan caracteres adicionales antes o después de la expresión.

compilación

En la terminal UCRT64 de MSYS2 se debe ejecutar:

flex ncomplejos.l
gcc lex.yy.c -o ncomplejos.exe -lfl

ejecución

Para ejecutar el programa:

./ncomplejos.exe entrada.txt

o

ncomplejos.exe entrada.txt

ejemplos que acepta

3+4i
5-2j
-3.5+6.7I
0-8J
.5+2i

ejemplos que no acepta

3+i
4j
3+4k
3 + 4i
abc

conclusión

Este ejercicio demuestra cómo flex puede utilizarse para construir analizadores léxicos que validen estructuras matemáticas mediante expresiones regulares. Se evidencia cómo una definición formal permite reconocer correctamente números complejos respetando las reglas establecidas para su escritura.
