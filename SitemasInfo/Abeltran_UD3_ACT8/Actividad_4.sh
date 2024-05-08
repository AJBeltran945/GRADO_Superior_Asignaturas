#!/bin/bash

if [ ! -f "frutas.txt" ]; then
    echo "El archivo frutas.txt no existe. Saliendo del programa."
    exit 1
fi

sort frutas.txt > frutas_ordenadas.txt

echo "Contenido del archivo frutas_ordenadas.txt:"
cat frutas_ordenadas.txt
