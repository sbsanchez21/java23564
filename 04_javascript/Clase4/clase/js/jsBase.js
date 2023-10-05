let a 
let b
a=3
b=4
b=5

let c=6
let d=8
d=9

segundoNombre="Pedro"
let nombre="Juan"
let apellido="Perez"
let t=3
t=9
segundoNombre="Lorena"
t="Kevin"

// operaciones matemáticas
let result
result=a+b
result=a-b
result=a/b
result=a*b

// concatenación
result=nombre+apellido
result="El nombre y apellido del usuario son: '" + nombre +"', '" + apellido+"'"
resutl=`El nombre y apellido son '${nombre}', '${apellido}'`

// Operadores de comparación
resultado = (a == b);
console.log( `a == b: ${resultado}`);

resultado = (a != b);
console.log( `a != b: ${resultado}`);

resultado = (a > b);
console.log( `a > b: ${resultado}`);

resultado = (a < b);
console.log( `a < b: ${resultado}`);

resultado = (a >= b);
b=3
resultado = (a >= b);
console.log( `a >= b: ${resultado}`);

resultado = (a >= d);
console.log( `a >= d: ${resultado}`);

resultado = (a >= c);
console.log( `a >= c: ${resultado}`);

resultado = (a <= c);
console.log( `a <= c: ${resultado}`);


// Operadores lógicos
resultado = (a > b) && (b > c);
console.log( `(a > b) && (b > c): ${resultado}`);

a=8
b=6
c=7
resultado = (a > b) && (c > b);
console.log( `(a > b) && (c > b): ${resultado}`);

resultado = (a > b) || (b > c);
console.log( `(a > b) ||  (b > c): ${resultado}`);

resultado = (b > a) || (b > c);
console.log( `(b > a) ||  (b > c): ${resultado}`);

resultado = !((b > a) || (b > c));
console.log( `!((b > a) || (b > c)): ${resultado}`);

let user
let pass 
// user=prompt("Ingrese el user")
// pass=prompt("Ingrese pass")

if (user=="jperez@gmail.com" && pass=="1234") {
    document.getElementById("mensajes").innerHTML="Bienvenido a la página"
    document.getElementById("mensajes").className="bg-info p-1"
} else {
    document.getElementById("mensajes").innerHTML="User o Pass incorrectos"
    document.getElementById("mensajes").className="bg-danger p-1"
 
}

let hoyLlueve
let hayPronostico
// hoyLlueve=prompt("Está lloviendo?")
// hayPronostico=prompt("Hay pronóstico de lluvia?")

if (hoyLlueve=="si" || hayPronostico=="si") {
    document.getElementById("mensajes").innerHTML="Llevar paragüas"
    document.getElementById("mensajes").className="bg-danger p-1"    
} else {
    document.getElementById("mensajes").innerHTML="NO Llevar paragüas"
    document.getElementById("mensajes").className="bg-info p-1"    
    
}

  // Condicionales
  const edadMayor = 18;
  let edad = 19;

  if (edad >= edadMayor) {
    //es mayor edad  
    console.log("");
  } else {
    //no es mayor edad
    console.log("");
  }
