#!/bin/bash

echo -n "Introdueix el nom d'un fitxer de text: "
read nom_fitxer

echo -n "Ara introdueix la paraula que vols buscar: "
read paraula

if [ -f "$nom_fitxer" ]; then
    grep -w -i -s "$paraula" "$nom_fitxer" && echo "S'han trobat coincidències." || echo "No s'han trobat coincidències."
else
    echo "Error: El fitxer $nom_fitxer no existeix o no és un fitxer de text."
fi
