let sec;
let min;
let horas;
let dias;
let años;
function PasswordTester() {
    let password = document.getElementById("pasword").value;
    let maquina = document.getElementById("maquina").value;
    console.log(password, maquina)
    let total = (Math.pow(256, password.length)) / maquina;
    console.log(total)

    sec = total % 60;
    sec = Math.trunc(sec)
    total = total / 60;

    min = total % 60;
    min = Math.trunc(min)
    total = total / 60;

    horas = total % 60
    horas = Math.trunc(horas)
    total = total /24;

    dias = total % 365;
    dias = Math.trunc(dias)
    años = total / 365
    años = Math.trunc(años)

    

    if(sec === 0 && min === 0 && horas === 0 && dias === 0 && años === 0){
        document.getElementById("result").innerHTML = "0"
    }else if (años === 0 && dias === 0 && horas === 0 && min === 0){
        document.getElementById("result").innerHTML = sec+" Sec";
    } else if (años === 0 && dias === 0 && horas === 0){
        document.getElementById("result").innerHTML = min+" Min, "+sec+" Sec";
    }else if(años === 0 && dias === 0){
        document.getElementById("result").innerHTML = horas+" Hours, "+min+" Min, "+sec+" Sec";
    }else if (años === 0 ){
        document.getElementById("result").innerHTML = dias+" Days, "+horas+" Hours, "+min+" Min, "+sec+" Sec";
    }else{
        document.getElementById("result").innerHTML = años+" Years, "+dias+" Days, "+horas+" Hours, "+min+" Min, "+sec+" Sec";
    }

    if (password == "123456" || password == "12345678" || password == "123456789" || password == "qwerty" || password == "password"){
        document.getElementById("result").innerHTML = "USE A BETTER PASSWORD YOU DUMBASS"
    }
    
}