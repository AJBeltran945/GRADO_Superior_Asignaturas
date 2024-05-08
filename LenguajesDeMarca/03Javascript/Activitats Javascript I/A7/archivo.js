let salir = false;

do {
    let numero = prompt("Introduce un número positivo:");

    // Comprobamos que ha introducido algo
    if (numero.length > 0) {

        // Comprobamos que ha introducido un número
        if (!isNaN(numero)) {

            // Comprobamos si es positivo
            if (numero > 0) {

                // Dibujamos el triángulo:
                // Esto hace las filas
                for (let i = 0; i < numero; i++) {
                    // Esto hace las columnas
                    for (let j = 0; j <= i; j++) {
                        document.write("*");
                    }
                    document.write("<br>");
                }

                // Salimos
                salir = true;
            }
            else {
                // El número introducido no es positivo
                alert("Tienes que introducir un número positivo.");
            }
        }
        else {
            // El número introducido no es un número
            alert("No has introducido un número");
        }
    }
    else {
        alert("No has introducido nada.");
    }
} while (!salir);


