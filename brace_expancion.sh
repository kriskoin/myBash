#!/bin/bash

echo {a,b,c}         # Outputs: a b c
echo {1..5}          # Outputs: 1 2 3 4 5
echo {a..c}{1..3}    # Outputs: a1 a2 a3 b1 b2 b3 c1 c2 c3

#Creating multiple files at once.
touch file{1..3}.txt  # Creates file1.txt, file2.txt, file3.txt

#tilde expansion
echo ~                # Expands to the current user's home directory, e.g., /home/user
echo ~username        # Expands to the specified user's home directory, e.g., /home/username
cd ~/Documents        # Navigates to the Documents directory within the home directory



#parameters expansion
name="Alice"
echo "Hello, $name"            # Outputs: Hello, Alice
echo ${name:0:3}               # Outputs: Ali (substring expansion)
echo ${name:-Default}          # Outputs "Alice" if $name is set, otherwise "Default"


#command sustitution
current_date=$(date)
echo "Today's date is $current_date"  # Executes date and uses its output

# Find the number of lines in a file
line_count=$(wc -l < file.txt)
echo "File has $line_count lines."


#Arithmetic Expansion
echo $((3 + 5))                # Outputs: 8
num=10
echo $((num * 2))              # Outputs: 20


#filename expansion Globbing

ls *.txt                        # Lists all .txt files in the current directory
ls file?.txt                    # Matches files like file1.txt, file2.txt, etc.
ls file[1-3].txt                # Matches file1.txt, file2.txt, file3.txt


# $@ y $*: Expanden todos los argumentos pasados al script.

# $@ trata cada argumento de forma independiente.
# $* trata todos los argumentos como una sola cadena.


#expansion $() ` `
fecha=$(date)
echo "La fecha actual es: $fecha"


#${ }. Esto permite establecer valores predeterminados, 
# obtener la longitud de una cadena, 
# extraer subcadenas, y realizar sustituciones.
echo ${nombre:-"Nombre por defecto"}


#longitud de cadena
nombre="Juan"
echo ${#nombre}   # Muestra: 4


# Sub cadena
echo ${nombre:1:2}   # Muestra: ua


#substitucion de cadena
# ${variable/patrón/reemplazo} r
texto="Hola Mundo"
echo ${texto/Mundo/Bash}   # Muestra: Hola Bash
