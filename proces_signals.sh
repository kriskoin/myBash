# this script waits for another script

#!/bin/bash

echo "start: $(date +"%M:%S")"

#launch the script 
./sleep5.sh &
pid=$! # get the process id

wait $pid

echo "end: $(date +"%M:%S")"

####

ls /no_existe
echo $?   # Muestra el código de salida del comando `ls`


###
echo $$   # Muestra el PID del proceso del shell


###
echo "Número de argumentos: $#"
