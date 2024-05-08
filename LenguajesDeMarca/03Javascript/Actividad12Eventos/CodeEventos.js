let moveUP = 500
let moveDOWN = 500
let moveLEFT = 500
let moveRIGHT = 500

function tecla(event){
    let box = document.getElementById("box")
    var codigo = event.keyCode;
    var left_top = parseInt(box.style.top)
    var left_right = parseInt(box.style.left)

    if (codigo == 119) { // w (up)
        left_top -= 20+"px";
        // moveUP -= 20;
        // box.style.marginTop = moveUP;
    }
    if (codigo == 97) { // a (left)
        left_top -= 20+"px";
        // moveLEFT -= 20;
        // box.style.marginLeft = moveLEFT;
    }
    if (codigo == 115) { // s (down)
        moveUP += 20+"px";
        // moveDOWN -= 20;
        // box.style.marginTop = moveUP;
    }
    if (codigo == 100) { //d (right)
        moveLEFT += 20;
        // moveRIGHT -= 20;
        // box.style.marginLeft = moveLEFT;
    }

    box.style.le = moveDOWN+"px";
    box.style.marginRight = moveRIGHT+"px";
    box.style.marginBottom = moveDOWN+"px";
    box.style.marginRight = moveRIGHT+"px";

}

document.body.addEventListener("keypress", tecla)