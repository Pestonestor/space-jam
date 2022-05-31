//crear imagen en INDEX.HTML y APPEND a link hacia NOSOTROS.HTML
const alien_image=document.createElement("img")
alien_image.src="./img/alienship.png"
alien_image.width=200
alien_image.alt="alien ship"
alien_image.id="alienId"
document.getElementById("alienLink").appendChild(alien_image)

