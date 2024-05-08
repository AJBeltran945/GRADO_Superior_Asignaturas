#!/bin/bash

if [ "$EUID" -eq 0 ]; then
	echo "Este usuario es ROOT"
else
	echo "El usuario necesita privilegios de admin"
fi

echo "Actualizando repositorios..."
apt update

echo "Instalando GIMP y htop..."
apt install -y gimp htop

if [ $? -eq 0 ]; then
    echo "La instalación de GIMP y htop fue exitosa."
else
    echo "ERROR: error durante la instalación"
fi
