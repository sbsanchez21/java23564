let a=3
let b=5
a+b
let nombre

validar()

let usuOk,passOk
usuOk="jperez@gmail.com"
passOk="1234"
let raiz=raizCuadrada(16)

raiz*2


function validar() {
    let usu=document.getElementById("user").value
    let pass=document.getElementById("pass").value
}





function raizCuadrada(a) {
    let result=Math.sqrt(a)

    document.getElementById("raizResult").innerHTML=result
    document.getElementById("raizResult").className="bg-info p-2"
    return result
}
raizCuadrada(36)

let raizCuadFlecha = (a) => {
    let result=Math.sqrt(a)

    document.getElementById("raizResult").innerHTML=result
    document.getElementById("raizResult").className="bg-info p-2"
    return result
}

raizCuadFlecha(36)



nombre="juan"
a=33

suma(3,4)

function suma(a,b) {
    return a+b
}

let sumaFlech=(a,b) => a+b

sumaFlech(5,5)

function promedio3(a,b,c) {
    return (a+b+c)/3
}