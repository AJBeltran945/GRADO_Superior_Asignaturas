const myTimeout = setInterval(reloj, 500);

function reloj() {
    let currentTime = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit', second: '2-digit' });
    console.log(currentTime);

    //hacemos un bucle que revisa el string de la hora
    for (let i = 0; i < currentTime.length; i++) {
        //guardamos un numero de la hora
        let num = currentTime[i];
        if (i === 2 || i === 5) {
            continue;
        }
        //console.log(num)

        // hacemos un condicion que revisa si la posicion del numero en el html es lo mismo que la del string
        // que revise que numero es y cambie la foto segun el numero que es
        if (i == 0) {
            for (let j = 0; j < 10; j++) {
                if (num == j) {
                    document.getElementById("0").src = "img" + j + ".png";
                }
            }
        }

        if (i == 1) {
            for (let j = 0; j < 10; j++) {
                if (num == j) {
                    document.getElementById("1").src = "img" + j + ".png";
                }
            }
        }

        if (i == 3) {
            for (let j = 0; j < 10; j++) {
                if (num == j) {
                    document.getElementById("3").src = "img" + j + ".png";
                }
            }
        }

        if (i == 4) {
            for (let j = 0; j < 10; j++) {
                if (num == j) {
                    document.getElementById("4").src = "img" + j + ".png";
                }
            }
        }

        if (i == 6) {
            for (let j = 0; j < 10; j++) {
                if (num == j) {
                    document.getElementById("6").src = "img" + j + ".png";
                }
            }
        }

        if (i == 7) {
            for (let j = 0; j < 10; j++) {
                if (num == j) {
                    document.getElementById("7").src = "img" + j + ".png";
                }
            }
        }
    }
}
reloj();