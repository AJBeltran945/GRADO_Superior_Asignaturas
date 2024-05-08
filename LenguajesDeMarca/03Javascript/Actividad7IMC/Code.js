const count = [1];//iniciasliza un contador para el bucle para enseñar el localstorage

if(count[0] == 1){// una condicion para si reinica la pagina que hace que si el contador esta en 1 lo sustituye por el numero anterior que habia en el count
    let numero = localStorage.getItem(0)
    Number(numero)
    console.log(numero);
    count[0] = numero
}

localStorage
function calcularIMC() {
    // recoger datos de la data y tiempo cuando calcula su IMC
    let currentDate = new Date().toLocaleDateString();
    let currentTime = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit', second: '2-digit' });

    // recoger los datos introducidos del usuario 
    let altura1 = document.getElementById("altura1").value;
    let altura2 = document.getElementById("altura2").value;
    let peso = document.getElementById("peso").value;

    // hace el calculo
    let IMC = peso / (altura1 * altura2);
    IMC = parseFloat(IMC).toFixed(2); //quita decimales no necesarios

    /* Condicion que revisa que IMC tiene y pone los resultados en un div en el html
    y poner que tipo de IMC tienes y mostrar lo */ 
    if (IMC < 18.5) {
        document.getElementById("resultIMC").innerHTML = "IMC: " + IMC + "<br />" + "Bajo Peso";
        document.getElementById("resultReco").innerHTML =
            "<h2>Recomendaciones:</h2>" +
            "1. Consulta a un médico o nutricionista para orientación personalizada." + "<br />" +
            "2. Aumenta la ingesta calórica con alimentos ricos en calorías y nutrientes." + "<br />" +
            "3. Come más frecuentemente, incluyendo snacks entre comidas." + "<br />" +
            "4. Prioriza alimentos nutritivos como frutas, verduras, proteínas magras y granos enteros." + "<br />" +
            "5. Incorpora proteínas para el desarrollo muscular." + "<br />" +
            "6. Realiza ejercicios de fuerza para promover el crecimiento muscular." + "<br />" +
            "7. Evita alimentos procesados y azúcares añadidos." + "<br />" +
            "8. Hidrátate adecuadamente." + "<br />" +
            "9. Realiza un seguimiento de tu progreso y sé paciente."
            ;
    } else if (IMC >= 25 && IMC < 29.9) {
        document.getElementById("resultIMC").innerHTML = "IMC: " + IMC + "<br />" + "Sobrepeso";
        document.getElementById("resultReco").innerHTML =
            "<h2>Recomendaciones:</h2>" +
            "1. Consulta a un profesional de la salud." + "<br />" +
            "2. Establece metas realistas." + "<br />" +
            "3. Come equilibrado y controla las porcione." + "<br />" +
            "4. Haz ejercicio regularmente (cardio y fuerza)." + "<br />" +
            "5. Bebe suficiente agua." + "<br />" +
            "6. Evita dietas extremas; opta por cambios sostenibles." + "<br />" +
            "7. Prioriza el sueño." + "<br />" +
            "8. Maneja el estrés con hábitos saludables." + "<br />" +
            "9. Realiza un seguimiento para ajustar tu plan."
            ;
    } else if (IMC > 30) {
        document.getElementById("resultIMC").innerHTML = "IMC: " + IMC + "<br />" + "Obesidad";
        document.getElementById("resultReco").innerHTML =
            "<h2>Recomendaciones:</h2>" +
            "1. Consulta a un profesional de la salud." + "<br />" +
            "2. Establece metas realistas." + "<br />" +
            "3. Come equilibrado y controla las porcione." + "<br />" +
            "4. Haz ejercicio regularmente (cardio y fuerza)." + "<br />" +
            "5. Bebe suficiente agua." + "<br />" +
            "6. Evita dietas extremas; opta por cambios sostenibles." + "<br />" +
            "7. Prioriza el sueño." + "<br />" +
            "8. Maneja el estrés con hábitos saludables." + "<br />" +
            "9. Realiza un seguimiento para ajustar tu plan."
            ;
    }else if(IMC>=18.5 && IMC<=24.9){
        document.getElementById("resultIMC").innerHTML = "IMC: " + IMC + "<br />" + "Normal";
    }else{
        document.getElementById("resultIMC").innerHTML = "Error: Introduce datos";
    }

    
    console.log(count);
    let key = count // poner en un varible el numero del contador 
    // poner en un variable toda la informacion que necesita para el historial
    let Historial = "Historial" + count[0] + ": fecha= " + currentDate + ", hora= " + currentTime + ", Formula: " + peso + " / " + "(" + altura1 + " * " + altura2 + ") = " + IMC;
    console.log(Historial);
    localStorage.setItem(key, JSON.stringify(Historial)) // guarda el informacion que hemos creado anteriormente con el key que hemos inicializado con el contador que habia antes
    // suma mas el contador
    key++;
    count[0]=key
    // esto es para por si acaso si reinicia la pagina sin eliminar el historial 
    //que guarda el ultimo posicion del contador en el localstorage
    localStorage.setItem(0,JSON.stringify(key))
    console.log(count);
}

//funcion que mira el historial
function seeHistory(){
    document.getElementById("historyResult").value = ""; // elimira lo que hay dentro del text area para no duplicar el histrial
    // bucle para insertar el linia de localstorage dentro de la linea del text area
    for(let i = 1; i<localStorage.length; i++){
        let linea = localStorage.getItem(i);
        document.getElementById("historyResult").value += (linea+"\n")
    }
}

// funcion para eliminar el historial
function deleteHistory(){
    // limpia todo el localstotrage
    localStorage.clear();
    //volver al principio del contador
    count[0]=1; 
    // poner que en la key 0 del local storage sea 1 para empezar de nuevo tambien
    localStorage.setItem(0,"1")
    // elemina todo lo que hay dentro del textarea
    document.getElementById("historyResult").value = "";
}

// estos dos funciones hace para que si pones un valor en uno de los input de la altura pues que copia al otro
function copy(){
    var input1Value = document.getElementById("altura1").value; 
    document.getElementById("altura2").value = input1Value; 
}

function copy2(){
    var input1Value = document.getElementById("altura2").value; 
    document.getElementById("altura1").value = input1Value; 
}