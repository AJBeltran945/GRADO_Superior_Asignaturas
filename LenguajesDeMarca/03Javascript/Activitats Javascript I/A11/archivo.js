function square() {
    let x = Math.random() * 100-1;
    let y = Math.random() * 100-1;

    let r = (Math.random() * 1000) % 256;
    let g = (Math.random() * 1000) % 256;
    let b = (Math.random() * 1000) % 256;

    document.write("<div style= 'width: 50px; height :50px; position:absolute;top:" + y + "vh; left:" + x +"vw;background-color:rgb(" + r + "," + g + "," + b + ")'></div>");
    setTimeout(square, 1)
}

setTimeout(square, 1);