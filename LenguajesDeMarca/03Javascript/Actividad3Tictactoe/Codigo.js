let cruz_circulo = true;
const casillas = Array(10).fill(null);

function enrayas(indice) {
    if (casillas[indice] === null) {
        if (cruz_circulo) {
            document.getElementById("img" + indice).src = "02img_Cross.jpg";
            cruz_circulo = false
            casillas[indice] = "1";
        } else {
            document.getElementById("img" + indice).src = "03img_Ball.jpg";
            cruz_circulo = true
            casillas[indice] = "0";
        }
    }

    //Comprobacioin de toda las posibilidades

    if (casillas[1] === "1") {
        if (casillas[2] === "1") {
            if (casillas[3] === "1") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[4] === "1") {
        if (casillas[5] === "1") {
            if (casillas[6] === "1") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[7] === "1") {
        if (casillas[8] === "1") {
            if (casillas[9] === "1") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[1] === "1") {
        if (casillas[4] === "1") {
            if (casillas[7] === "1") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[2] === "1") {
        if (casillas[5] === "1") {
            if (casillas[8] === "1") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[3] === "1") {
        if (casillas[6] === "1") {
            if (casillas[9] === "1") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[7] === "1") {
        if (casillas[5] === "1") {
            if (casillas[3] === "1") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[1] === "1") {
        if (casillas[5] === "1") {
            if (casillas[9] === "1") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }




    if (casillas[1] === "0") {
        if (casillas[2] === "0") {
            if (casillas[3] === "0") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[4] === "0") {
        if (casillas[5] === "0") {
            if (casillas[6] === "0") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[7] === "0") {
        if (casillas[8] === "0") {
            if (casillas[9] === "0") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[1] === "0") {
        if (casillas[4] === "0") {
            if (casillas[7] === "0") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[2] === "0") {
        if (casillas[5] === "0") {
            if (casillas[8] === "0") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[3] === "0") {
        if (casillas[6] === "0") {
            if (casillas[9] === "0") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[7] === "0") {
        if (casillas[5] === "0") {
            if (casillas[3] === "0") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
    if (casillas[1] === "0") {
        if (casillas[5] === "0") {
            if (casillas[9] === "0") {
                document.getElementById("result").innerHTML = "Has Ganado";
            }
        }
    }
}
