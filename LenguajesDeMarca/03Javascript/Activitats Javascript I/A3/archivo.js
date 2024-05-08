let nombre = prompt("Introdueix tu nombre");
let edad = prompt("Introdueix tu edad");
let salario = prompt("Introduce tu salario");

// Comprobamos han introducido algo en los tres
if ((nombre.length != 0) && (edad.length !=0 ) && (salario.length !=0 )) {
    edad = Number(edad);
    salario = Number(salario);

    // Comprobamos que son números la edad y el salario
    if(!isNaN(edad) && !isNaN(salario)) {

        // Actualizamos los datos si es necesario
        if(salario < 1000) {
            // Hay tres casos:
            if(edad < 30) {
                // Edad inferior a 30 el salario es fijo en 1100
                salario = 1100;
            }
            else if(edad > 45) {
                // Edad superior a 45, aumentamos el salario un 15%
                salario = salario * 1.45;
            }
            else {
                // Edad entre 30 i 45 (ambos inclusive), aumentamos el salario un 3%
                salario = salario * 1.03;
            }
        }
        else if((salario >= 1000) && (salario <= 2000)) {
            // Hay dos casos:
            if(edad > 45 ){
                // Edad superior a 45, aumentamos el salario un 3%
                salario = salario * 1.03;
            }
            else {
                // Edad inferior o igual 45, aumentamos el salario en 10%
                salario = salario * 1.1;
            }
        }
        else {
            // No hay cambios
        }

        // Finalmente mostramos los datos actualizados
        document.write("Nombre: " + nombre + "<br>");
        document.write("Edad: " + edad + "<br>");
        document.write("Salario: " + salario + "<br>");
    }
    else {
        // Han introducido algo que no es un número en edad o salario
        document.write("Error: Has d'introduir números en edad y en salario.")
    }
}
else {
    // No han introducido algo al menos en uno de los tres
    document.write("Error: No puedes dejar algo en blanco.");
}