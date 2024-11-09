#!/bin/bash

echo "numero parametros: $# "

# Check if a filename was provided as an argument
if [ -z "$1" ]; then
    echo "Usage: ./script.sh filename"
    exit 1
fi

# Check if the provided file exists
if [ ! -f "$1" ]; then
    echo "File not found!"
    exit 1
fi

# Count the number of lines in the file and display it
line_count=$(wc -l < "$1")
echo "Number of lines in $1: $line_count"
