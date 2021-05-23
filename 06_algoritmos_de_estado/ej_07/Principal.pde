class Principal {
  float vida;
  int bx, by, c, colorPrincipal;

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
    colorMode(HSB, 360, 100, 100);  //Cambiar modo de color

    //Se contraen los valores en un rango para evitar que los valores se pasen de 100
    vida = constrain(vida, 0, 100);

    for (int i = 0; i < vida; i++) {
      stroke(c+i, 100, 100);
      line(i, 0, i, 25);
    }

    popStyle();

    popMatrix();
  }

  void cuerpo() {
    pushMatrix();

    translate(bx+31, by+50);

    pushStyle();

    colorMode(HSB, 360, 100, 100);  //Cambiar modo de color
    fill(colorPrincipal, 100, 100);
    noStroke();
    rect(0, 0, 40, 40);

    popStyle();

    popMatrix();
  }

  void evaluarEstado() {
    if (estado == "mucha salud") {
      colorPrincipal = 120;
    }
    if (estado == "poca salud") {
      colorPrincipal = 60;
    }
    if (estado == "cero salud") {
      colorPrincipal = 360;
    }

    if (vida > 70) {
      estado = "mucha salud";
    }
    else if (vida < 70 && vida > 20) {
      estado = "poca salud";
    }
    else if (vida < 20) {
      estado = "cero salud";
    }
  }
}

