ls /nonexistent_directory
echo $?  # This will output a non-zero value, e.g., 2, indicating an error.


# Example of checking exit status
mkdir /tmp/test_directory
if [ $? -eq 0 ]; then
    echo "Directory created successfully."
else
    echo "Failed to create directory."
fi


# Simple script example
if [ -z "$1" ]; then
    echo "No argument provided"
    exit 1
fi
echo "Argument: $1"
exit 0


ls /nonexistent_directory | grep "test"
echo ${PIPESTATUS[0]}  # Exit status of `ls`
echo ${PIPESTATUS[1]}  # Exit status of `grep`


#!/bin/bash

# Attempt to create a directory
mkdir /tmp/example_directory
if [ $? -ne 0 ]; then
    echo "Error: Failed to create directory"
    exit 1
fi

# Run a command that depends on the success of the previous one
touch /tmp/example_directory/example_file
if [ $? -eq 0 ]; then
    echo "File created successfully."
else
    echo "Failed to create file."
    exit 2
fi

# Clean up and exit successfully
rm -r /tmp/example_directory
exit 0



# Ejecuta el segundo comando solo si el primero se ejecuta correctamente
mkdir /tmp/mi_directorio && echo "Directorio creado con éxito."

# Ejecuta el segundo comando solo si el primero falla
mkdir /tmp/mi_directorio || echo "Error: el directorio no se pudo crear."

