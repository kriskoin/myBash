#!/bin/bash
echo "bash version: ${BASH_VERSION}..."
x=1 
while [ $x -le 10 ]  ; 
do
 echo "hola este es el valor de x: $x "
 ((x++))
done

for i in 1 2 3 4 5
do
    echo " Valor de i: $i"
done

for j in {1..5}
do
    echo "Welcome $j times"
done

for y in {0..10..2}
do
    echo "this is the y: $y value"
done


g = 1
until [ $g -gt 10 ]
do  
    echo "This is f: $g value"
    ((g++))
done


xx = 10

until [  -gt $xx ]
do
    echo "El valor de xx : $xx"
    ((xx--))
done
