const max_combinaciones = 50;

let n1;
let n2;
let n3;
let n4;
let n5;
let n6;


document.write("<h1> Combinaciones </h1>");

document.write("<ol>");
for (let i = 0; i < max_combinaciones; i++) {

    n1 = Math.floor(Math.random() * 49 + 1);

    do {
        n2 = Math.floor(Math.random() * 49 + 1);
    } while (n2 == n1);

    do {
        n3 = Math.floor(Math.random() * 49 + 1);
    } while (n3 == n1 || n3 == n2);

    do {
        n4 = Math.floor(Math.random() * 49 + 1);
    } while (n4 == n1 || n4 == n2 || n4 == n3);

    do {
        n5 = Math.floor(Math.random() * 49 + 1);
    } while (n5 == n1 || n5 == n2 || n5 == n3 || n5 == n4);

    do {
        n6 = Math.floor(Math.random() * 49 + 1);
    } while (n6 == n1 || n6 == n2 || n6 == n3 || n6 == n4 || n6 == n5);

    document.write("<li>" + n1 + " " + n2 + " " + n3 + " " + n4 + " " + n5 + " " + n6 + "</li>");
}
document.write("</ol>");
