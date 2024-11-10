#!/bin/bash
# Definir una variable
numero=1

# Imprimir si el número es mayor que 5 o no
[ $numero -gt 5 ] && echo "Mayor que 5" || echo "No mayor que 5"


#EJemplo # 2

# Definir una variable
numero=3

# Usar un "ternario" para asignar un valor según la condición
resultado=$([ $numero -gt 5 ] && echo "Mayor que 5" || echo "No mayor que 5")

# Imprimir el resultado
echo $resultado


#ejemplo 3

numero=8
if [ $numero -gt 5 ]; then echo "Mayor que 5"; else echo "No mayor que 5"; fi
