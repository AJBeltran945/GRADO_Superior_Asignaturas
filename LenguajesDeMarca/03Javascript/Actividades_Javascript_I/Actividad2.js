function act2() {
    let num1 = document.getElementById('inputNum1').value;
    let num2 = document.getElementById('inputNum2').value;
    if (num1 > num2) {
        document.getElementById('resultado2').textContent = "El numero mayor es " + num1 + " y el menor es " + num2;
    } else if (num1 < num2) {
        document.getElementById('resultado2').textContent = "El numero mayor es " + num2 + " y el menor es " + num1;
    } else {
        document.getElementById('resultado2').textContent = "Los numeros " + num1 + " y " + num2 + " son iguales";
    }

}