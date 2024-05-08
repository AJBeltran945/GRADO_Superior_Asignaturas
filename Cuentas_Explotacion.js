const puppeteer = require('puppeteer');



const fs = require('fs').promises;
const path = require('path');
const username = 'descargas';
const password = 'Gb.2023Gb.2023';
const sourceFilePath = 'C:\\Users\\AdminGB\\Downloads\\output.xlsx';
// const sourceFilePath = 'C:\\Users\\PCIT-01\\Downloads\\Output.xlsx';
const fecha = new Date();
const mesActual = fecha.getMonth() + 1;
const anioActual = fecha.getFullYear();

const Restaurantes303 = [
  '001',
  '002',
  '003',
  '004',
  '101',
  '102',
  '103',
  '104',
  '105',
  '106',
  '107',
  '111',
  '112',
  '114',
  '115'
]

const destinationsURL = [
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\ibiza\\001 San Antonio\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\ibiza\\002 Kiosco\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\ibiza\\003 Ibiza Puerto\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\ibiza\\004 Platja den Bossa\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\mallorca\\101 Ocimax\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\mallorca\\102 Porto Pi\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\mallorca\\103 Santa Ponsa\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\mallorca\\104 Magaluf\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\mallorca\\105 Torrenova\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\mallorca\\106 Poligono de Levante\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\mallorca\\107 Plaza España\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\mallorca\\111 Can Picafort\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\mallorca\\112 Gaviotas\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\mallorca\\114 Puerto Pollensa\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\mallorca\\115 Inca II\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\popeyes\\',
  '\\\\WIN-J3ISNGO02KT\\GrupoBahias\\Informatica\\Gestion\\00 Calculos Cuentas explotación\\Tim Hortons\\']

const Restaurantes46 = [
  '1716', // Sant Antoni
  '1719', // Kiosco
  '1717', // Ibiza
  '1718', // Platja den Bossa
  '1722', // Ocimax
  '1711', // Porto pi
  '1686', // Santa Ponsa
  '1704', // Magaluf
  '1706', // Torrenova 
  '1705', // Levante
  '1675', // Plaza Espana
  '1685', // Can Picafort
  '1712', // Gaviotas
  '1709', // Pto Pollensa
  '1702' // Inca II
]
const Restaurantes110 = [
  '1716',
  '1719',
  '1717',
  '1718',
  '1722',
  '1711',
  '1686',
  '1704',
  '1706',
  '1705',
  '1675',
  '1685',
  '1712',
  '1709',
  '1702'
]
const Restaurantes307 = [
  '847',
  '850',
  '848',
  '849',
  '853',
  '842',
  '817',
  '835',
  '837',
  '836',
  '806',
  '816',
  '843',
  '840',
  '833'
]
const Franquicias = [
  'https://burgerking.storesace.com',
  'https://popeyes.storesace.com',
  'https://timhortons.storesace.com'
]


function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

async function moveFile(source, destination) {
  try {
    await fs.copyFile(source, destination);
    await fs.unlink(source);
    console.log('Archivo movido correctamente.');
  } catch (err) {
    console.error('Error al mover el archivo:', err);
  }

}

function mes(mes) {
  switch (mes) {
    case 3: return 'Enero de ' + anioActual
    case 4: return 'Febrero de ' + anioActual
    case 5: return 'Marzo de ' + anioActual
    case 6: return 'Abril de ' + anioActual
    case 7: return 'Mayo de ' + anioActual
    case 8: return 'Junio de ' + anioActual
    case 9: return 'Julio de ' + anioActual
    case 10: return 'Agosto de ' + anioActual
    case 11: return 'Septiembre de ' + anioActual
    case 12: return 'Octubre de ' + anioActual
    case 1: return 'Noviembre de ' + anioActual - 1
    case 2: return 'Diciembre de ' + anioActual - 1
  }
}

function fechaini_fin(mes) {
  switch (mes) {
    case 1: return 'start_date=' + anioActual - 1 + '-12-01&end_date=' + anioActual - 1 + '-12-31'
    case 2: return 'start_date=' + anioActual + '-01-01&end_date=' + anioActual + '-01-31'
    case 3: return 'start_date=' + anioActual + '-02-01&end_date=' + anioActual + '-02-29'
    case 4: return 'start_date=' + anioActual + '-03-01&end_date=' + anioActual + '-03-31'
    case 5: return 'start_date=' + anioActual + '-04-01&end_date=' + anioActual + '-04-30'
    case 6: return 'start_date=' + anioActual + '-05-01&end_date=' + anioActual + '-05-31'
    case 7: return 'start_date=' + anioActual + '-06-01&end_date=' + anioActual + '-06-30'
    case 8: return 'start_date=' + anioActual + '-07-01&end_date=' + anioActual + '-07-31'
    case 9: return 'start_date=' + anioActual + '-08-01&end_date=' + anioActual + '-08-31'
    case 10: return 'start_date=' + anioActual + '-09-01&end_date=' + anioActual + '-09-30'
    case 11: return 'start_date=' + anioActual + '-10-01&end_date=' + anioActual + '-10-31'
    case 12: return 'start_date=' + anioActual + '-11-01&end_date=' + anioActual + '-11-30'
  }
}

async function Modificar46(i) {
  const ExcelJS = require('exceljs');
  const workbook = new ExcelJS.Workbook();
  const Celda = ['A1', 'B1', 'C1', 'D1', 'E1', 'F1', 'G1', 'H1', 'I1']
  const Titulos = ['Tienda', 'Incidencia ', 'Valor  IVA  ', 'Total Liquido   ', 'Total IVA    ', 'Total final     ', 'Nr. de Tickets      ', 'Cant.       ', 'Canal de Venta        ']

  await workbook.xlsx.readFile(sourceFilePath);

  const worksheet = workbook.getWorksheet('Sheet1');

  // Eliminar la primera fila
  worksheet.spliceRows(1, 1);

  // Encuentra el índice de la última fila no vacía
  let lastRowIndex = 0;
  worksheet.eachRow((row, rowIndex) => {
    if (row.values.some(cell => !!cell)) {
      lastRowIndex = rowIndex;
    }
  });

  // Elimina la última fila
  if (lastRowIndex > 0) {
    worksheet.spliceRows(lastRowIndex, 1);
  }

  if (i != 15) {
    // Eliminar columnas D y E
    worksheet.eachRow(row => {
      row.splice(4, 2);
    });
  }

  for (let i = 0; i < Titulos.length; i++) {
    const cell = worksheet.getCell(Celda[i]);
    cell.value = Titulos[i];
  }

  await workbook.xlsx.writeFile(sourceFilePath);

}

async function Modificar30() {
  const ExcelJS = require('exceljs');
  const workbook = new ExcelJS.Workbook();
  await workbook.xlsx.readFile(sourceFilePath);

  const worksheet = workbook.getWorksheet('Sheet1');

  // Eliminar la primera fila
  worksheet.spliceRows(1, 1);

  // Encuentra el índice de la última fila no vacía
  let lastRowIndex = 0;
  worksheet.eachRow((row, rowIndex) => {
    if (row.values.some(cell => !!cell)) {
      lastRowIndex = rowIndex;
    }
  });

  // Elimina la última fila
  if (lastRowIndex > 0) {
    worksheet.spliceRows(lastRowIndex, 1);
  }

  await workbook.xlsx.writeFile(sourceFilePath);

}

async function Modificar110() {
  const ExcelJS = require('exceljs');
  const workbook = new ExcelJS.Workbook();
  await workbook.xlsx.readFile(sourceFilePath);

  const worksheet = workbook.getWorksheet('Sheet1');

  // Encuentra el índice de la última fila no vacía
  let lastRowIndex = 0;
  worksheet.eachRow((row, rowIndex) => {
    if (row.values.some(cell => !!cell)) {
      lastRowIndex = rowIndex;
    }
  });

  // Elimina la última fila
  if (lastRowIndex > 0) {
    worksheet.spliceRows(lastRowIndex, 1);
  }

  await workbook.xlsx.writeFile(sourceFilePath);

}

async function Descargar303(franquicia, restaurante, i) {
  const browser = await puppeteer.launch({ headless: false });
  const page = await browser.newPage();
  await page.goto(franquicia + '/reports/303/#');

  await page.type('input[name="username"]', username);
  await page.type('input[name="password"]', password);
  await page.click('button[type="submit"]');

  await page.type('input[id="id_inventory"]', restaurante);
  await sleep(2000)
  await page.waitForSelector('li.ui-menu-item span b');
  const links = await page.$$('li.ui-menu-item span b');

  for (const link of links) {
    const linkText = await link.evaluate(element => element.textContent);
    if (linkText.includes(mes(mesActual))) {
      await link.click();
      break;
    }
  }

  await page.type('input[id="id_inventory2"]', restaurante);
  await page.waitForSelector('li.ui-menu-item span b');

  await sleep(2000)
  await page.click('button[id="button_filter_apply"]');
  await sleep(10000)
  await page.evaluate(() => {
    const excelLink = document.querySelector('div.btn-group a.gridExportExcel');
    if (excelLink) {
      excelLink.click();
    }
  });

  await sleep(1000)

  const buttons = await page.$$('button[class="btn btn-sm btn-primary"]');

  for (const button of buttons) {
    const buttonText = await button.evaluate(element => element.textContent);
    if (buttonText.trim() === 'Si') {
      await button.click();
      break;
    }
  }
  let fileExists = false;

  while (!fileExists) {
    try {
      await fs.access(sourceFilePath);
      fileExists = true;
      await browser.close();
      await Modificar30();
      await moveFile(sourceFilePath, destinationsURL[i] + '303 coste de comida.xlsx')
    } catch (error) {
      await sleep(5000);
    }
  }
}


async function Descargar46(franquicia, restaurante, i) {
  const browser = await puppeteer.launch({ headless: false });
  const page = await browser.newPage();
  await page.goto(franquicia + '/reports/46/grid/handler/?' + fechaini_fin(mesActual) + '&stores=' + restaurante + '&store_type=&group_by_stores=1&group_by_dates=0&report=46&_search=false&nd=1691759996061&rows=999999999999&page=1&sidx=store_name+asc%2C+zone_name+asc%2C+zone_name+asc%2C&sord=asc&export_type=xls');

  await page.type('input[name="username"]', username);
  await page.type('input[name="password"]', password);
  await page.click('button[type="submit"]');
  let fileExists = false;

  while (!fileExists) {
    try {
      await fs.access(sourceFilePath);
      fileExists = true;
      await browser.close();
      await Modificar46(i);
      await moveFile(sourceFilePath, destinationsURL[i] + '46 VentasModoPedido.xlsx')
    } catch (error) {
      await sleep(5000);
    }
  }

}

async function Descargar110(franquicia, restaurante, i) {
  const browser = await puppeteer.launch({ headless: false });
  const page = await browser.newPage();
  await page.goto(franquicia + '/reports/110/grid/handler/?' + fechaini_fin(mesActual) + '&stores=' + restaurante + '&suppliers=&store_type=&group_by_stores=1&report=110&_search=false&nd=1692183875933&rows=999999999999&page=1&sidx=store_name+asc%2C+store_name+asc%2Cvalue+desc&sord=asc&export_type=xls');
  await page.type('input[name="username"]', username);
  await page.type('input[name="password"]', password);
  await page.click('button[type="submit"]');
  let fileExists = false;

  while (!fileExists) {
    try {
      await fs.access(sourceFilePath);
      fileExists = true;
      await browser.close();
      await Modificar110();
      await moveFile(sourceFilePath, destinationsURL[i] + '110 comprasxfamilias.xlsx')
    } catch (error) {
      await sleep(5000);
    }
  }
}

async function Descargar307(franquicia, restaurante, i) {
  const browser = await puppeteer.launch({ headless: false });
  const page = await browser.newPage();
  await page.goto(franquicia + '/reports/307/grid/handler/?' + fechaini_fin(mesActual) + '&warehouses=' + restaurante + '&items=&families=&groups=&store_type=&group_by_families_groups=&report=307&_search=false&nd=1692179728525&rows=999999999999&page=1&sidx=store_name+asc%2C+family_name+asc%2C+subfamily_name+asc%2C+store_name+asc%2C+item_name&sord=asc&export_type=xls');

  await page.type('input[name="username"]', username);
  await page.type('input[name="password"]', password);
  await page.click('button[type="submit"]');
  let fileExists = false;

  while (!fileExists) {
    try {
      await fs.access(sourceFilePath);
      fileExists = true;
      await browser.close();
      await Modificar30();
      await moveFile(sourceFilePath, destinationsURL[i] + '307 ComidaPersona ly desperdicio.xlsx')
    } catch (error) {
      await sleep(5000);
    }
  }


}

(async () => {
  try {
    // // ----------------

    for (let i = 0; i < Restaurantes303.length; i++) {
      if (Restaurantes303[i] == '002' || Restaurantes303[i] == '004' || Restaurantes303[i] == '104' || Restaurantes303[i] == '105' || Restaurantes303[i] == '112' || Restaurantes303[i] == '114') {
        continue;
      }
      await Descargar303(Franquicias[0], Restaurantes303[i], i)
    }

    await Descargar303(Franquicias[1], 'PLAZA', 15)

    await Descargar303(Franquicias[2], 'PLAZA', 16)

    // // -----------------

    for (let i = 0; i < Restaurantes46.length; i++) {
      await Descargar46(Franquicias[0], Restaurantes46[i], i)
    }

    await Descargar46(Franquicias[1], '65', 15)

    await Descargar46(Franquicias[2], '9', 16)


    // // -----------------
    for (let i = 0; i < Restaurantes307.length; i++) {
      await Descargar307(Franquicias[0], Restaurantes307[i], i)
    }

    await Descargar307(Franquicias[1], '66', 15)

    await Descargar307(Franquicias[2], '9', 16)


    // ---------------
    for (let i = 0; i < Restaurantes110.length; i++) {
      await Descargar110(Franquicias[0], Restaurantes110[i], i)
    }

    await Descargar110(Franquicias[1], '66', 15)

    await Descargar110(Franquicias[2], '9', 16)




    console.log('Inicio de sesión y descarga completados correctamente.');
  } catch (error) {
    console.log('Inicio de sesión y descarga completados incorrectamente.');
  }


  await sleep(20000)
  console.log('Programa finalizado')
  process.exit(0);


})();


