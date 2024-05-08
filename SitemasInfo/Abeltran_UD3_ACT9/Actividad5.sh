#!/bin/bash

echo -n "Dime el nombre del primer archivo que quieres crear: "
read archivo1

touch "$archivo1"

echo "$archivo1" > $archivo1
for i in {1..14}; do 
	echo "Línea $i" >> $archivo1; 
done

echo -n "Ahora el segundo archivo: "
read archivo2

touch "$archivo2"

echo "$archivo2" > $archivo2
for i in {1..14}; do 
	echo "Línea $i" >> $archivo2; 
done

echo -n "Y por último, el tercer archivo: "
read archivo3

touch "$archivo3"

echo "$archivo3" > $archivo3
for i in {1..14}; do 
	echo "Línea $i" >> $archivo3; 
done

echo "Primeras 5 líneas del archivo $archivo1:"
head -5 $archivo1
echo
echo "Últimas 5 líneas del archivo $archivo1:"
tail -5 $archivo1
echo

echo "Primeras 5 líneas del archivo $archivo2:"
head -5 $archivo2
echo
echo "Últimas 5 líneas del archivo $archivo2:"
tail -5 $archivo2
echo

echo "Primeras 5 líneas del archivo $archivo3:"
head -5 $archivo3
echo
echo "Últimas 5 líneas del archivo $archivo3:"
tail -5 $archivo3
echo
