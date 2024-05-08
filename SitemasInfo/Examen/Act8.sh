#!/bin/bash

echo -n "Dime el directorio donde quieres buscar: "
read directorio

echo -n "Dime la extencion que de los archivos que quieres buscar: "
read extencion

if [ -d /"$directorio"/ ]; then
    echo "El directorio $directorio existe."
    sleep 1
else
    echo "El directorio $directorio no existe."
    exit 1
fi

ls -1 -R -l /$directorio/ *.$
