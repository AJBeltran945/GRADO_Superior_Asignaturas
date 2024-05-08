function act3() {
    let nombre = document.getElementById('nombre').value;
    let salario = document.getElementById('salario').value;
    let edad = document.getElementById('edad').value;
    let salarioResultado

    if (salario > 2000) {
        salarioResultado = salario;
        document.getElementById('resultado3').textContent = "Tu nombre es: " + nombre + ", Tienes " + edad + " años y Tu saalrio final es: " + salarioResultado
    } else if (salario >= 1000 && salario <= 2000) {
        if (edad > 45) {
            salarioResultado = salario * 1.03; // Aumentar un 3%
            document.getElementById('resultado3').textContent = "Tu nombre es: " + nombre + ", Tienes " + edad + " años y Tu saalrio final es: " + salarioResultado
        } else {
            salarioResultado = salario * 1.10; // Aumentar un 10%
            document.getElementById('resultado3').textContent = "Tu nombre es: " + nombre + ", Tienes " + edad + " años y Tu saalrio final es: " + salarioResultado
        }
    } else if (salario < 1000) {
        if (edad < 30) {
            document.getElementById('resultado3').textContent = "Tu nombre es: " + nombre + ", Tienes " + edad + " años y Tu saalrio final es: " + salarioResultado
        } else if (edad >= 45) {
            salarioResultado = salario * 1.15; // Aumentar un 15%
            document.getElementById('resultado3').textContent = "Tu nombre es: " + nombre + ", Tienes " + edad + " años y Tu saalrio final es: " + salarioResultado
        } else {
            salarioResultado = salario * 1.03; // Aumentar un 3%
            document.getElementById('resultado3').textContent = "Tu nombre es: " + nombre + ", Tienes " + edad + " años y Tu saalrio final es: " + salarioResultado
        }
    }
}