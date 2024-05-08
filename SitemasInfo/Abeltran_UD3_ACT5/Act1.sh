#!/bin/bash

echo -n "Como te llamas? "
read nom

echo -n "Cuantos anyos tienes? "
read edat

random=$((RANDOM % 101))

echo "${nom}, seras rico cuando tengas $((edad + random)) anyos."
