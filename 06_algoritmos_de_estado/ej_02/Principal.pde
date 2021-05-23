class Principal {
  float vida;

  Principal() {  //Constructor vacío
  }

  void barraDeVida() {
    vida = mouseX;

    //Mapear los valores para que vayan de 0 a 100
    vida = map(vida, 0, width, 0, 100);

    pushStyle();  //Barra trasera, solo a modo visual
    fill(0);
    rect(40, 60, 100, 25);
    popStyle();

    pushStyle();  //Barra interactiva
    noStroke();
    fill(255, 0, 0);

    //Se contraen los valores en un rango para evitar que los valores se pasen de 100
    vida = constrain(vida, 0, 100);

    rect(40, 60, vida, 25);
    popStyle();
  }
}

