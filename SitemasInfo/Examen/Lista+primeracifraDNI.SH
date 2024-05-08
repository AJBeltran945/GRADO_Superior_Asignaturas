#!/bin/bash

echo -n "Dime un directorio donde quieres saber info de sus archivos: "
read directorio

echo "Has dicho el directorio: $directorio"
sleep 1
ls /$directorio/ -lh