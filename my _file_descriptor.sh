# Asigna el file descriptor 3 para escribir en "output.txt"
exec 3> output.txt

# Usa el nuevo file descriptor para escribir en el archivo
echo "Este es un mensaje para output.txt" >&3

# Cierra el file descriptor 3
exec 3>&-

# FILE DESCRIPTOR para ESCITURA
# Asigna el file descriptor 4 para leer desde "input.txt"
exec 4< input.txt

# Leer la primera línea del archivo usando descriptor 4
read -r linea <&4
echo "Primera línea de input.txt: $linea"

# Cierra el file descriptor 4
exec 4<&-
