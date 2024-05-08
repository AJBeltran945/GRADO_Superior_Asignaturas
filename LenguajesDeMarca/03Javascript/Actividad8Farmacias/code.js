function buscaFarmacia() {
    var xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
        let datos = JSON.parse(this.responseText)
        console.log(datos)
        for (let i = 0; i< datos.response.row.row.length; i++){
            document.getElementById("result").innerHTML += i+1+". "+datos.response.row.row[i].nom + "<br>";
        }
    };
    xhttp.open("GET", "http://infocaib.com/farmacias/farmacias.json");
    xhttp.send();
}