

function unoPorUno() {
    let texto = document.getElementById("texto").value;
    for (let i = 0; i < texto.length; i++) {
        document.write(texto[i] + "<br>");
        document.write("<br>")
    }
}

function unoPorUno_inverted() {
    let texto = document.getElementById("texto2").value;
    for (let i = texto.length - 1; i >= 0; i--) {
        document.write(texto[i]);
        document.write("<br>")
    }
}

function palindrimo() {
    let palindrimo = true
    let texto = document.getElementById("texto3").value;
    for (let i = 0; i < texto.length; i++) {
        if (texto[i] != texto[texto.length - i - 1]) {
            palindrimo = false
        }
    }
    if (palindrimo === true) {
        document.getElementById("result").innerHTML = texto + " Es Palindrimo";
        document.getElementById("result").className = "green"
    } else {
        document.getElementById("result").innerHTML = texto + " NO es Palindrimo";
        document.getElementById("result").className = "red"
    }
}

// oninput


