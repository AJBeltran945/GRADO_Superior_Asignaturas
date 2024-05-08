#!/bin/bash

echo -n "Dime un numero de 1 a 30: "
read num

 if [ "$num" -gt "30" ]; then
         echo "no es un numero valido"
         exit 1
 fi

for i in {1..$num}; 
do 
	echo $i; echo
done