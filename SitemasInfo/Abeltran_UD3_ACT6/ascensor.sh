#!/bin/bash

echo "Benvingut a l'ascensor de l'hotel $USER"
sleep 1

echo "Ens anem cap a dalt"
sleep 1

for planta in {1..17};
do
	if [ $planta -eq 10 ]; then
		continue
	fi
	
	echo "Esteim en la planta $planta"
	sleep 1
done