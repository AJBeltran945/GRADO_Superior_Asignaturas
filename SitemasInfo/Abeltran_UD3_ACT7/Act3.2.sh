#!/bin/bash

read -p "Introduce el nombre de un archivo: " nombre_archivo

[ -e "$nombre_archivo" ] && echo "El propietario del archivo $nombre_archivo es: $(stat -c %U "$nombre_archivo")" || echo "Error: El archivo $nombre_archivo no existe."
