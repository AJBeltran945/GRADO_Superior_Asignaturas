#!/bin/bash

echo -n "Dime un directorio donde quieres crear"
read directorio

if [ -d "$directorio" ]; then
    echo "El directorio $directorio ya existe."
else
    mkdir "$directorio"
    echo "Se ha creado el directorio $directorio."
fi

cd "$directorio" 

echo -n "Dime un archivo que quieres crear dentro del directorio: "
read archivo

touch "$archivo"
echo "Se ha creado el archivo $archivo dentro del directorio $directorio."
