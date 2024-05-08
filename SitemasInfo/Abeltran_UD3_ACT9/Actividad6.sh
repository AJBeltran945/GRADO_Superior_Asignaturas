#!/bin/bash

archivo="usuarios.txt"

# Comprobar si el archivo usuarios.txt existe
if [ -f "$archivo" ]; then
    # Mostrar solo el nombre y el correo electrónico de cada usuario
    cut -d',' -f1,3 $archivo
else
    echo "El archivo $archivo no existe. El programa terminará."
fi
