function guardar() {
 
    let n = document.getElementById("txtNombre").value
    let e = document.getElementById("numEdad").value
    let o = document.getElementById("txtOrigen").value
    let i = document.getElementById("imageFile").value
 
    let cliente = {
        nombre: n,
        edad: e,
        origen: o,
        imagen: i,
    }
    let url = "http://localhost:5000/clientes"
    var options = {
        body: JSON.stringify(cliente),
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
       // redirect: 'follow'
    }
    fetch(url, options)
        .then(function () {
            console.log("creado")
            alert("Grabado")
 
            // Handle response we get from the API
        })
        .catch(err => {
            //this.errored = true
            alert("Error al grabar" )
            console.error(err);
        })
}
