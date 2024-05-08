#!/bin/bash

for archivo in "$@"; do
    [ -e "$archivo" ] && echo "Los permisos del archivo $archivo son: $(stat -c %A "$archivo")" || echo "Error: El archivo $archivo no existe."
done
