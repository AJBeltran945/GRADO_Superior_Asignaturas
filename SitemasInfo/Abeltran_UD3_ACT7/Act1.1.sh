#!/bin/bash

echo -n "Introdueix el nom d'un arxiu de text: "
read nom_arxiu

echo -n "Ara introdueix una paraula que vols trobar: "
read paraula

if [ -f "$nom_arxiu" ]; then
    nombre_paraules=0

    while read -r linia; do
        if grep -w -i -s "$paraula" <<< "$linia" >/dev/null; then
            ((nombre_paraules++))
        fi
    done < "$nom_arxiu"

    echo "L'arxiu $nom_arxiu té $nombre_paraules paraules."
else
    echo "Error: L'arxiu $nom_arxiu no existeix o no és un arxiu de text."
fi
