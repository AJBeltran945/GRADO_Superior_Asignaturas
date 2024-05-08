let r = Math.floor(Math.random() * 1000 % 256);
let g = Math.floor(Math.random() * 1000 % 256);
let b = Math.floor(Math.random() * 1000 % 256);

document.write("<div style='background-color:rgb("+ r + "," + g + "," + b + ")'>");
document.write("rgb(" + r + "," + g + "," + b +")")
document.write("</div>");