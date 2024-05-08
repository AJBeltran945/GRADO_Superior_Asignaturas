function act6() {
    while (true) {
        let numuser = Number(window.prompt("Dime un numero entero: "));

        if (Number.isInteger(numuser) && numuser > 0) {
            for (let i = numuser; i > 0; i--) {
                let linea = '';
                for (let j = 0; j < i; j++) {
                    linea += '*';
                }
                document.getElementById("act6").value += (linea + "\n")
            }
            break;
        } else {
            alert("Incorrecto!");
        }
    }
}