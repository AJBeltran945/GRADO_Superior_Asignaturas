#!/bin/bash

for archivo in "$@"; do
    [ -e "$archivo" ] && echo "El propietario del archivo $archivo es: $(stat -c %U "$archivo")" || echo "Error: El archivo $archivo no existe."
done
