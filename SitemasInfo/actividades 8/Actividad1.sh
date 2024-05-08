#!/bin/bash

echo "que archivo quieres comprobar"
	read archivo

if [ -f $archivo ]; then 

touch hola.txt

else 

mkdir $archivo

touch hola.txt

fi 
