let num1 = prompt("Introduce un número:");

// Comprobamos han introducido algo
if (num1.length != 0)  {
    num1 = Number(num1);

    // Comprobamos que es un número
    if(!isNaN(num1)) {
        document.write("Es un número.");
    }
    else {
        // Han introducido algo que no es un número
        document.write("No es un número.");
    }
}
else {
    // No han introducido algo
    document.write("Error: Has dejado el número en blanco.");
}