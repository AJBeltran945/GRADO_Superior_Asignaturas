let long, lat;
const xhttp = new XMLHttpRequest();
xhttp.onload = function () {
    let datos = JSON.parse(this.responseText);

    for (let i = 0; i < datos.response.row.row.length; i++) {
        if (datos.response.row.row[i].propietari === "JOSE FRANCISCO LADARIA SUREDA") {
            long = datos.response.row.row[i].long;
            lat = datos.response.row.row[i].lat;
            var map = L.map('map').setView([lat, long], 130);

            L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
            }).addTo(map);

            var marker = L.marker([lat, long]).addTo(map);
            break;
        }
    }
}
xhttp.open("GET", "http://infocaib.com/farmacias/farmacias.json");
xhttp.send();


