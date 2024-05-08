#!/bin/bash

echo -n "Introdueix el nom d'un arxiu de text: "
read nom_arxiu

echo -n "Ara introdueix una paraula que vols encontrar"
read paraula

if [ -f "$nom_arxiu" ]; then
    nombre_paraules=0

    for grep -w -i -s "$paraula" $nom_arxiu; do
        ((nombre_paraules++))
    done

    echo "L'arxiu $nom_arxiu té $nombre_linies línies."
else
    echo "Error: L'arxiu $nom_arxiu no existeix o no és un arxiu de text."
fi
