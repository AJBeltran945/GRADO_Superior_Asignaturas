#!/bin/bash

echo -n "Ingresa la URL del archivo a descargar: "
read url

echo -n "Ingresa la ubicación donde deseas guardar el archivo: "
read ubicacion

curl -o "$ubicacion" "$url"

if [ $? -eq 0 ]; then
    echo "La descarga se ha completado con éxito. El archivo se ha guardado en: $ubicacion"
else
    echo "Error en la descarga. Por favor, verifica la URL e inténtalo de nuevo."
fi
