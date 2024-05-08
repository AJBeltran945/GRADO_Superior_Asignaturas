// Obtenemos un número aleatorio entre 1 y 100
let solucion = Math.floor((Math.random() * 100) + 1);

let numero;

// Disponemos de 5 intentos
let intentos = 5;

do {
    numero = prompt("Introduce un número:");

    // Comprobamos que ha introducido algo
    if (numero.length > 0) {
        numero = Number(numero);

        // Comprobamos que ha introducido un número
        if (!isNaN(numero)) {
            // Comprobamos si es el correcto
            if (numero == solucion) {
                // Ha acertado
                alert("Has acertado.");
            }
            else if (numero > solucion) {
                // Disminuimos un intento
                intentos = intentos - 1;

                // El número introducido es mayor que la solución
                alert("Elegiste: " + numero + " y te quedan " + intentos + " intentos. El número a encontrar es menor.");
            }
            else {
                // Disminuimos un intento
                intentos = intentos - 1;

                // El número introducido es menor que la solución
                alert("Elegiste: " + numero + " y te quedan " + intentos + " intentos. El número a encontrar es mayor.");
            }
        }
        else {
            // No ha introducido un número.
            alert("No me times.");
        }
    }
    else {
            // No ha introducido nada.
            alert("No me times.");
    }


    if (intentos == 0) {
        alert("Has terminado tus 5 intentos y no lo has adivinado. Has perdido.");
    }
} while ((numero != solucion) && (intentos > 0));