const town = [];
const datosF = [];
let count = 0;

const xhttp = new XMLHttpRequest();
xhttp.onload = function () {
  let datos = JSON.parse(this.responseText);

  for (let i = 0; i < datos.length; i++) {
    let municipio = datos[i].municipi;
    if (i == 0) {
      town[0] = municipio;
      continue;
    }

    for (let j = 0; j < town.length; j++) {
      if (town[j] == municipio) {
        break;
      }
      count++
    }

    if (count == town.length) {
      town[town.length] = municipio;
    }

    count = 0
  }

  for (let i = 0; i < town.length; i++) {
    datosF[i] = 0
    let name = town[i]
    for (let j = 0; j < datos.length; j++) {
      let municipio = datos[j].municipi;
      if (name == municipio) {
        datosF[i]++
      }
    }
    console.log(datosF);
  }

  const ctx = document.getElementById('myChart');

  new Chart(ctx, {
    type: 'bar',
    data: {
      labels: town,
      datasets: [{
        label: '# de Farmacias',
        data: datosF,
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });

}
xhttp.open("GET", "https://catalegdades.caib.cat/resource/euss-d827.json");
xhttp.send();