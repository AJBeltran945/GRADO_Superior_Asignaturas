// Obtenemos un número aleatorio entre 1 y 100
let solucion = Math.floor((Math.random()*100) + 1);

let numero;

do {
    numero = prompt("Introduce un número:");
    numero = Number(numero);

    // Comprobamos que ha introducido un número
    if(!isNaN(numero)) {
        // Comprobamos si es el correcto
        if(numero == solucion) {
            // Ha acertado
            alert("Has acertado.");
        }
        else if(numero > solucion) {
            // El número introducido es mayor que la solución
            alert("Elegiste: " + numero + ". El número a encontrar es menor.");
        }
        else {
            // El número introducido es menor que la solución
            alert("Elegiste: " + numero + ". El número a encontrar es mayor.");
        }
    }
    else {
        // No ha introducido un número.
        alert("No me times.");
    }

} while(numero != solucion);