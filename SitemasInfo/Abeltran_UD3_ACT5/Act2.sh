#!/bin/bash

numR=$((RANDOM % 2))

echo "Se viene un monstruo. preparate para una batalla."

echo -n "Elige un numero de 0 a 1 para matar lo: "
read num

if [ "$num" -eq "$numR" ]; then
    echo "El monstruo ha muerto, enorabuena!!"
else
    echo "Has muerto."
fi

