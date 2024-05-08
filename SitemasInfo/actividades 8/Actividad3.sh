#!/bin/bash

# dpkg se utiliza para gestionar los paquetes de sofware en los sitemas 
# operativos linux basados en DEB
# dpkg -i + nombre del paquete (instalar)
# dkpg -r + nombre del paquete ( eliminar)
# dkpg -u + nombre del paquete ( atualizar)
# dkpg -l (listar los paquetes instalados)
# dkpg -s (obtener información sobre un paquete)

echo " que programa quiere instalar " 
	read programa
sleep 2

dpkg -i $programa

if [ $? -eq 0 ] then 

echo "ha salido bien" 

else 

echo " ha salido mal" 


fi  

