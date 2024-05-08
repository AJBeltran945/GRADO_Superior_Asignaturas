function buscaDominio() {
    document.getElementById("dominio").value;
    var xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
        let datos = JSON.parse(this.responseText)
        console.log(datos)
        if (datos > 0){
            document.getElementById()
        }
    };
    xhttp.open("GET", "http://");
    xhttp.send();
}