class Principal {
  int x, y, sx, tx;
  PImage[] sprites = new PImage[5];

  float t;  //Variable para Animar

  Principal(int x_, int y_) {
    x = x_;
    y = y_;
    sx = 1;
    tx = 0;

    sprites[0] = loadImage("sprites/cuerpo.png");
    sprites[1] = loadImage("sprites/brazo_der.png");
    sprites[2] = loadImage("sprites/brazo_izq.png");
    sprites[3] = loadImage("sprites/pierna_der.png");
    sprites[4] = loadImage("sprites/pierna_izq.png");
  }

  void mostrar() {
    pushMatrix();

    translate(x+tx, y);//Posición
    scale(sx, 1);      //Efecto Espejo

    pushMatrix();
    rotate(sin(t)/15);
    
    image(sprites[1], 70, -35);  //Brazo Derecho
    popMatrix();

    pushMatrix();
    rotate(sin(t)/15);
    translate(sin(t)*6, 0);
    
    image(sprites[3], 50, 150);  //Pierna Derecha
    popMatrix();

    pushMatrix();
    rotate(sin(-t)/15);
    translate(sin(t)*-7, 0);
    
    image(sprites[4], 15, 150);  //Pierna Izquierda
    popMatrix();

    image(sprites[0], 0, 0);     //Cuerpo

    pushMatrix();
    translate(sin(t)*5, 0);

    image(sprites[2], -10, 80);  //Brazo Izquierdo

    popMatrix();

    popMatrix();
  }

  void animar() {
    if (presDerecha == true || presIzquierda == true) {
      t += 0.2;
    }else{
      t=0;
    }
  }

  void mover() {
    if (presDerecha == true) {
      x += 3;
      sx = 1;
      tx = 0;
    }
    if (presIzquierda == true) {
      x -= 3;
      sx = -1;
      tx = 190;
    }
    
    x = constrain(x, 0, width-190);
  }
}

