#!/bin/bash

echo -n "Introduce la ruta del directorio: "
read directorio

if [ -d "$directorio" ]; then
    echo "Listado de directorios en $directorio:"
    ls -d "$directorio"/*/
else
    echo "Error: El directorio $directorio no existe."
fi
