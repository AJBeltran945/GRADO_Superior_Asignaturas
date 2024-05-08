function actividad4() {
    // Generar un número aleatorio entre 1 y 100
    let numR = Math.floor(Math.random() * 100) + 1;
    let numUser = 0;
    console.log(numR);
    while (numUser != numR) {
        // Obtener el valor ingresado por el usuario
        numUser = window.prompt("Introduce un numero: ");

        // Verificar si el input es un número
        if (isNaN(numUser)) {
            alert("No me tientes. Ingresa un número válido.");
        } else {
            // Convertir el input a número entero
            numUser = parseInt(numUser);

            // Verificar si el número es correcto
            if (numUser === numR) {
                alert("¡Has acertado! El número era " + numR + ".");
            } else if (numUser > numR) {
                alert("El número es menor.");
            } else {
                alert("El número es mayor.");
            }
        }
    }
}