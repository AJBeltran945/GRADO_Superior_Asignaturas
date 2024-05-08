#!/bin/bash

echo -n "Introduce el nombre de un archivo: "
read nombre_archivo

echo -n "Introduce la cadena a buscar: "
read cadena_buscar

echo -n "Introduce la cadena de reemplazo: "
read cadena_reemplazo

if [ -e "$nombre_archivo" ]; then
    sed -i "s/$cadena_buscar/$cadena_reemplazo/g" "$nombre_archivo"
    echo "Se ha realizado el reemplazo en el archivo $nombre_archivo."
else
    echo "Error: El archivo $nombre_archivo no existe."
fi
