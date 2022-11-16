//crear HEADER con texto y APPEND al DOM
const head_1=document.createElement("h1")
const headtext=document.createTextNode("SpaceJam")
head_1.appendChild(headtext)
document.getElementById("header").appendChild(head_1)

//crear NAV y APPEND al HEADER
const navBar_1=document.createElement("nav")
const navSucursales=document.createElement("a")
const navServicios=document.createElement("a")
const navNosotros=document.createElement("a")
const navRegistro=document.createElement("a")
const navHome=document.createElement("a")
const navClientes=document.createElement("a")
const navResto=document.createElement("a")
navSucursales.href="./sucursales.html"
navSucursales.textContent=" Sucursales "
navServicios.href="./servicios.html"
navServicios.textContent=" Servicios "
navNosotros.href="./nosotros.html"
navNosotros.textContent=" Nosotros "
navRegistro.href="./registro.html"
navRegistro.textContent=" Registro "
navHome.href="./index.html"
navHome.textContent=" Home "
navClientes.href="./clientes.html"
navClientes.textContent=" Clientes "
navResto.href="./resto.html"
navResto.textContent=" Resto"
navBar_1.appendChild(navHome)
navBar_1.appendChild(navNosotros)
navBar_1.appendChild(navServicios)
navBar_1.appendChild(navSucursales)
navBar_1.appendChild(navRegistro)
navBar_1.appendChild(navClientes)
navBar_1.appendChild(navResto)
document.getElementById("header").appendChild(navBar_1)

//crear FOOTER y APPEND al DOM
const head_2=document.createElement("h4")
head_2.id="head_2"
const foottext=document.createTextNode("El viaje de tu vida...")
head_2.appendChild(foottext)
document.getElementById("footer").appendChild(head_2)
/*const face=document.createElement("a")
const face_icon=document.createElement("img")
face_icon.src="./img/facebook_icon.png"
face.href="https://facebook.com"
face.appendChild(face_icon)
face_icon.style="width:30px"
document.getElementById("footer").appendChild(face)*/

// ONCLICK de NOSOTROS.HTML genera link en FOOTER para SUCURSALES.HTML
function moon(){
    document.getElementById("head_2").innerHTML=`El viaje de tu vida...<a href="./sucursales.HTML#luna">la Luna!</a>`
    }
function earth(){
    document.getElementById("head_2").innerHTML=`El viaje de tu vida...<a href="./sucursales.HTML#tierra">la Tierra!</a>`
}
function planet(){
    document.getElementById("head_2").innerHTML=`El viaje de tu vida...<a href="./sucursales.HTML#omicron">Omicron Persei VIII!</a>`
}


