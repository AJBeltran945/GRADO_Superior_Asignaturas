#!/bin/bash

echo -n "Dime una aplicacion que quieres: "
read aplicacion

dpkg -s $aplicacion &> /dev/null

if [ $? -eq 0 ]; then
    echo "La aplicación $aplicacion está instalada en el sistema."
else
    echo "La aplicación $aplicacion no está instalada en el sistema."
fi
