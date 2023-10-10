function contCar() {
    console.log("ingreso a contCar")

    let texto=document.getElementById("contador").value
    console.log(texto)
    console.log(texto.length)

    document.getElementById("longitud").innerHTML=texto.length
}