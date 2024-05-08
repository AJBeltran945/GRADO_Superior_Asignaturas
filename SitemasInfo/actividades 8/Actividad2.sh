#!/bin/bash 

if [ "$EUID" -eq 0 ] then 

echo " el usuario es root"

apt-get  update 

sleep 2 

apt-get gimp

apt-get htop

if [ $$ -eq 0 ] then 

echo "ha salido bien" 

else 

echo "el usuario no es root" 

exit 1 

fi 



