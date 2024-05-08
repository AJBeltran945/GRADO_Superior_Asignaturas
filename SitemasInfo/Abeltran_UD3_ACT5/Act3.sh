#!/bin/bash

numR=$((RANDOM % 2))

echo "Se viene un monstruo. preparate para una batalla."

echo -n "Elige un numero de 0 a 1 para matar lo: "
read num

if [ "$num" -eq "$numR" ]; then
        echo "El monstruo ha muerto, Enorabuena!!"
else
        echo "Has muerto."
        exit 1
fi

numRB=$((RANDOM % 10))

echo "Se viene otro monstruo, es un BOSS"

echo -n "Elige un numero de 0 a 9 para matar lo: "
read numB

if [ "$numB" -eq "$numRB" ]; then
        echo "El BOSS ha muerto, Enorabuena!!!"
else
        echo "Has muerto"
fi