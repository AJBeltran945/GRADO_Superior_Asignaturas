let possBall = Math.floor(Math.random() * 3+1);
function buscacup(indice) {
    if (possBall === indice) {
        document.getElementById("img" + indice).src = "lamelo.webp";
        document.getElementById("result").innerHTML = "Has Ganado";
    } else {
        document.getElementById("img" + indice).src = "skull.jpg";
        document.getElementById("result").innerHTML = "Has Perdido";
    }

}