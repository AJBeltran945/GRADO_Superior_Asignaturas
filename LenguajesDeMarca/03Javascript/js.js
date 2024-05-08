function es_num() {
    valor_input = document.getElementById("input_numero").value;

    if (!isNaN(valor_input)) {
        alert("¡Es un numero!");
    } else {
        alert("¡No es un numero!");
    }

}

function mostrar_input() {
    document.getElementById("input_numero").style.display="block";
}

function n_mayor() {
    n1 = window.prompt("Dame el numero 1: ");
    n2 = window.prompt("Dame el numero 2: ");

    n1>n2 ? alert("El primer numero es mayor") : alert("El segundo numero es mayor");
}

function calc_datos() {
    let nombre = document.getElementById("nombre").value;
    let edad = parseInt(document.getElementById("edad").value);
    let salario = parseInt(document.getElementById("salario").value);

    if (salario>1000 && salario<2000 || edad>45) {
        salario += ((3*salario)/100);
    } else if (edad<45) {
        salario += ((10*salario)/100);
    } else if (salario<1000 && edad<30) {
        salario = 1100;
    } else if (salario<1000 && edad>45) {
        salario = 1100+((1100*15)/100);
    } else if (salario<1000 && edad>30 && edad<45) {
        salario = 1100+((1100*3)/100);
    }

    // print datos
    alert(nombre + " con edad: " + edad + " tendrá un salario: " + salario);
}

function adivinar_rand() {
    let n_rand = Math.floor(Math.random() * 100) + 1;
    let n_usuario = 0;
    console.log(n_rand);
    while(n_usuario != n_rand) {
        n_usuario = window.prompt("Intenta adivinar el numero: ");
        if (!isNaN(n_usuario)) {
            n_usuario = parseInt(n_usuario);
            if (n_rand==n_usuario) {
                alert("Numero correcto!");
            } else if (n_usuario>n_rand) {
                alert("El numero es menor");
            } else {
                alert("El numero es mayor");
            }
        } else {
            alert("No me times");
        }


    }
}

function adivinar_rand2() {
    let n_rand = Math.floor(Math.random() * 100) + 1;
    let n_usuario = 0;
    let intentos = 1;

    while(intentos<=5) {
        n_usuario = window.prompt("Intenta adivinar el numero: ");
        if (!isNaN(n_usuario)) {
            n_usuario = parseInt(n_usuario);
            if (n_rand==n_usuario) {
                alert("Numero correcto!");
            } else if (n_usuario>n_rand) {
                alert("El numero es menor");
            } else {
                alert("El numero es mayor");
            }
        } else {
            alert("No me times");
        }

        intentos++;
    }

}

function act6() {
    while (true) {
        let input_user = Number(window.prompt("Dame un numero entero: "));

        if (Number.isInteger(input_user) && input_user>0) {
            triangulo_rect_inv(input_user);
            break;
        } else {
            alert("Incorrecto!");
        }
    }
}

function triangulo_rect_inv(filas) {
    for (let i = filas; i > 0; i--) {
        let linea = '';
        for (let j = 0; j < i; j++) {
          linea += '*';
        }
        document.getElementById("area_texto_act6").value += (linea+"\n")
    }
}

function act7() {
    while (true) {
        let input_user = Number(window.prompt("Dame un numero entero: "));

        if (Number.isInteger(input_user) && input_user>0) {
            triangulo_rect(input_user);
            break;
        } else {
            alert("Incorrecto!");
        }
    }
}

function triangulo_rect(filas) {
    for (let i = 1; i <= filas; i++) {
        let linea = '';
        for (let j = 1; j <= i; j++) {
          linea += '*';
        }
        document.getElementById("area_texto_act7").value += (linea+"\n")
    }
}

function act8() {
    while (true) {
        let input_user = Number(window.prompt("Dame un numero entero: "));

        if (Number.isInteger(input_user) && input_user>0) {
            triangulo(input_user);
            break;
        } else {
            alert("Incorrecto!");
        }
    }
}

function triangulo(filas) {
    for (let i = 1; i <= filas; i++) {
        let espacios = '';
        let asteriscos = '';

        for (let j = 1; j <= filas - i; j++) { // triangulo rect de " "
          espacios += ' ';
        }
  
        for (let k = 1; k <= 2 * i - 1; k++) {
          asteriscos += '*';
        }
        document.getElementById("area_texto_act8").value += (espacios + asteriscos+"\n");
      }

}

function act9() {
    while (true) {
        let input_user = Number(window.prompt("Dame un numero entero: "));

        if (Number.isInteger(input_user) && input_user>0) {
            triangulo_inv(input_user);
            break;
        } else {
            alert("Incorrecto!");
        }
    }
}

function triangulo_inv(filas) {
    for (let i = filas; i >= 1; i--) {
        let espacios = '';
        let asteriscos = '';

        for (let j = 1; j <= filas - i; j++) { // triangulo rect de " "
          espacios += ' ';
        }
  
        for (let k = 1; k <= 2 * i - 1; k++) {
          asteriscos += '*';
        }
        document.getElementById("area_texto_act9").value += (espacios + asteriscos+"\n");
      }

}

function act10(iniciar) {
    if (iniciar==true) {
        let r = Math.floor(Math.random() * 1000),
            g = Math.floor(Math.random() * 1000),
            b = Math.floor(Math.random() * 1000);
        document.body.style.backgroundColor = ("rgb(" + r + "," + g + "," + b + ")");
    } else {
        document.body.style.backgroundColor = "";
    }
}

function crear_cuadrado_rand() {
    let r = Math.floor(Math.random() * 255),
    g = Math.floor(Math.random() * 255),
    b = Math.floor(Math.random() * 255);

    cuadrado = document.createElement("div");
    cuadrado.className = "cuadrado_rand";
    cuadrado.style.backgroundColor = ("rgb(" + r + "," + g + "," + b + ")"); // rgb aleatorio
    cuadrado.style.left = (Math.floor(Math.random() * window.innerWidth)) + "px"; // pos aleatoria
    cuadrado.style.top = (Math.floor(Math.random() * document.scrollingElement.scrollHeight - 150)) + "px";
    
    document.body.appendChild(cuadrado); // añado al body
}

function act11(iniciar) {
    if (iniciar==true) {
        for (i = 1; i <= 2000; i++) {
            crear_cuadrado_rand();
        }
    } else {
        // elimino todos los divs "cuadrados"
        const lista_divs = document.querySelectorAll('body div');
        for (div = 0; div < lista_divs.length; div++) {
            lista_divs[div].remove();
        }
    }
}

function act12(iniciar) {
    if (iniciar==true) {
        var lista_combinaciones = [];
        crear_combinaciones(lista_combinaciones);
        print_combinaciones(lista_combinaciones);
    }
}

function crear_combinaciones(lista_combinaciones) {

    while(lista_combinaciones.length != 50) {
        let comb = []
        for (let i = 1; i <= 50; i++) {
            const n = Math.floor(Math.random() * 50) + 1;
            comb.push(n);
        }

        lista_combinaciones.push(comb);
        
    }
}

function print_combinaciones(lista_combinaciones) {
    for (i = 0; i<lista_combinaciones.length; i++) {
        document.getElementById("area_texto_act12").value += (lista_combinaciones[i]+"\n"+"\n"+"\n");
    }
}