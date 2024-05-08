
echo " que archivo quieres leer" 
	read archivo

if [ -f $archivo ] then

echo "si existe"

sort -u " $archivo" > " frutas_ordenadas.txt"

cat $archivo

else 

echo " no existe"
exit 1 
fi 


