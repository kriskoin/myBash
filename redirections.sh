#!/bin/bash

echo "Hola soy cris" > output.txt



ls noexiste.txt 2> errors.log

ls noexiste.txt siexiste.txt &> all_outputs.txt

ls noexsite.txt siexiste.txt > all_output2.txt 2>&1