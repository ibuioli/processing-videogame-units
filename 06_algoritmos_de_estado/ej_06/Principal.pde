class Principal {
  float vida;

  Principal() {
  }

  void barraDeVida() {
    vida = mouseX;

    //Mapear los valores para que vayan de 0 a 370
    //360 para el círculo, y 10 píxeles más para completar el cierre
    vida = map(vida, 0, width, 0, 370);

    pushStyle();  //Barra trasera, solo a modo visual
    fill(0);
    ellipse(width/2, height/2, 100, 100);
    fill(80);
    ellipse(width/2, height/2, 40, 40);
    popStyle();

    pushStyle();  //Barra interactiva
    strokeCap(SQUARE);
    strokeWeight(30);
    stroke(255, 0, 0);
    noFill();

    //Se contraen los valores en un rango para evitar que los valores se pasen de 100
    vida = constrain(vida, 0, 370);

    arc(width/2, height/2, 70, 70, 0, radians(vida));
    popStyle();
  }
}

