class Principal {
  PImage barra = loadImage("barra.png");
  float vida;

  Principal() {  //Constructor vacío
  }

  void barraDeVida() {
    vida = mouseX;

    //Mapear los valores para que vayan de 0 a 100
    vida = map(vida, 0, width, 0, 192);

    pushStyle();  //Barra trasera, solo a modo visual
    image(barra, 25, 40);
    popStyle();

    pushStyle();  //Barra interactiva
    noStroke();
    fill(255, 0, 0, 150);

    //Se contraen los valores en un rango para evitar que los valores se pasen de 100
    vida = constrain(vida, 0, 192);

    rect(55, 55, vida, 31);

    popStyle();
  }
}

