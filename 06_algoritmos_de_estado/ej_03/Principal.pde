class Principal {
  float vida;
  int bx, by, c;

  Principal(int bx_, int by_, int c_) {  //Constructor
    bx = bx_;
    by = by_;
    c = c_;
  }

  void barraDeVida() {
    vida = mouseX;

    //Mapear los valores para que vayan de 0 a 100
    vida = map(vida, 0, width, 0, 100);

    pushMatrix();
    translate(bx, by);

    pushStyle();  //Barra trasera, solo a modo visual
    fill(0);
    rect(0, 0, 100, 25);
    popStyle();

    pushStyle();  //Barra interactiva
    colorMode(HSB, 350, 100, 100);  //Cambiar modo de color

    //Se contraen los valores en un rango para evitar que los valores se pasen de 100
    vida = constrain(vida, 0, 100);

    for (int i = 0; i < vida; i++) {
      stroke(c-i, 100, 100);
      line(i, 0, i, 25);
    }

    popStyle();

    popMatrix();
  }
}

