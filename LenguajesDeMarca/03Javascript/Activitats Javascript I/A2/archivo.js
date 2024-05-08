let num1 = prompt("Introduce un primer número:");
let num2 = prompt("Introduce un segundo número:");

// Comprobamos que han introducido algo en los dos
if ((num1.length != 0) && (num2.length !=0 )) {
    num1 = Number(num1);
    num2 = Number(num2);

    // Comprobamos que son números
    if(!isNaN(num1) && !isNaN(num2)) {
        // Comprobamos quién es el mayor
        if(num1 > num2) {
            // El mayor es num1
            document.write("El número mayor es " + num1);
        }
        else {
            // El mayor es num2 o son iguales
            document.write("El número mayor es " + num2);
        }
    }
    else {
        // Han introducido algo que no es un número
        document.write("Error: Tienes que introducir dos números.")
    }
}
else {
    // No han introducido algo al menos en uno de los números
    document.write("Error: Has dejado al menos un número en blanco.");
}