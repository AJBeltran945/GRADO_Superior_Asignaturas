function act7() {
    while (true) {
        let numuser = Number(window.prompt("Dime un numero entero: "));

        if (Number.isInteger(numuser) && numuser > 0) {
            for (let i = 1; i <= numuser; i++) {
                let linea = '';
                for (let j = 1; j <= i; j++) {
                    linea += '*';
                }
                document.getElementById("act7").value += (linea + "\n")
            }
            break;
        } else {
            alert("Incorrecto!");
        }
    }
}