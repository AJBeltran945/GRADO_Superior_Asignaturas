#!/bin/bash

read -p "Introduce el nombre de un archivo: " nombre_archivo

[ -e "$nombre_archivo" ] && echo "Los permisos del archivo $nombre_archivo son: $(stat -c %A "$nombre_archivo")" || echo "Error: El archivo $nombre_archivo no existe."
