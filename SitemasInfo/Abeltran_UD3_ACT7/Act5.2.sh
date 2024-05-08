#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Error: Debes proporcionar al menos un archivo."
    exit 1
fi

echo -n "Introduce la cadena a buscar: "
read cadena_buscar

echo -n "Introduce la cadena de reemplazo: "
read cadena_reemplazo

for archivo in "$@"; do
    if [ -e "$archivo" ]; then
        sed -i "s/$cadena_buscar/$cadena_reemplazo/g" "$archivo"
        echo "Se ha realizado el reemplazo en el archivo $archivo."
    else
        echo "Error: El archivo $archivo no existe."
    fi
done
