function act1() {
    let numero = document.getElementById('inputNum').value;
    
    if (isNaN(numero)) {
        document.getElementById('resultado').textContent = "NO has introducido un numero";
    }

    if ( numero >= 0 || numero < 0) {
        document.getElementById('resultado').textContent = "Has escrito un numero valido";
    }
}