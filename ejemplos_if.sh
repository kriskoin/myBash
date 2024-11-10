#!/bin/bash

if [ -f "archivo.txt" ]; then
    echo "El archivo existe y es un archivo regular"
else
    echo "El archivo no existe o no es un archivo regular"
fi




edad=25

if [ $edad -ge 18 ]; then
    if [ $edad -le 35 ]; then
        echo "La persona es un adulto joven."
    else
        echo "La persona es un adulto mayor."
    fi
else
    echo "La persona es menor de edad."
fi





directorio="/tmp"
archivo="miarchivo.txt"

if [ -d "$directorio" ]; then
    echo "Directorio encontrado."
    if [ -f "$directorio/$archivo" ]; then
        echo "El archivo $archivo existe en $directorio."
    else
        echo "El archivo $archivo no existe en $directorio."
    fi
else
    echo "El directorio $directorio no existe."
fi




dia="Lunes"
hora=10

if [ "$dia" == "Lunes" ]; then
    if [ $hora -lt 12 ]; then
        echo "Es lunes por la mañana."
    else
        echo "Es lunes por la tarde."
    fi
else
    echo "Hoy no es lunes."
fi
