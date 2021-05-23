class Principal {
  PImage barra = loadImage("barra.png");          //Imagen de Barra
  PImage degradado = loadImage("degradado.jpg");  //Imagen de degradado, podría procesarse en tiempo real con un ciclo for
  PImage mascara = loadImage("mascara.png");      //Máscara de recorte, no visible

  float vida;

  Principal() {
    degradado.mask(mascara);  //Máscara declarada, recomendable que sea en el constructor
  }

  void barraDeVida() {
    vida = mouseX;

    //Mapear los valores para que vayan de 0 a 100
    vida = map(vida, 0, width, 0, 250);

    image(degradado, 25, 40);  //Degradado
    image(barra, 25, 40);      //Barra

    //Se contraen los valores en un rango para evitar que los valores se pasen de 100
    vida = constrain(vida, 0, 250);

    //El ancho del degradado depende del valor de la variable vida
    degradado.width = int(vida);
  }
}
