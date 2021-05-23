class Principal {
  int x, y, sx, tx;    //Posición y Efecto espejo
  int numCuadros = 24; //Número de cuadros a animar
  int cuadro = 0;      //Cuadro Actual
  boolean loop = true; //Bucle. Probras las diferencias entre valores true o false
  PImage[] sprite = new PImage[numCuadros];  //Array de Imágenes

  Principal(int x_, int y_) {  //Constructor
    x = x_;
    y = y_;
    sx = 1;
    tx = 0;

    for (int i = 0; i < numCuadros; i++) {
      sprite[i] = loadImage("sprites/ani-"+nf(i, 2)+".png");
    }
  }

  void mostrar() {
    pushMatrix();      //Matrix de Control
    translate(x+tx, y);//Posición
    scale(sx, 1);      //Efecto Espejo
    image(sprite[cuadro], 0, 0);
    popMatrix();
  }

  void mover() {
    if (presDerecha == true || presIzquierda == true) {
      cuadro = animarSprites(numCuadros, cuadro, loop);  //Llamamos a la función para animar los sprites
    }
    if (presDerecha == false && presIzquierda == false) {
      cuadro = 0;    //Resetea los cuadros
    }

    if (presDerecha == true) {
      x+=4;
      sx = 1;
      tx = 0;
    }
    
    if (presIzquierda == true) {
      x-=4;
      sx = -1;  //Escala en el eje x negativa, genera efecto espejo parcial
      tx = sprite[0].width;  //A la posición se le suma el ancho de un fotograma para el efecto espejo total
    }

    x = constrain(x, 0, width-sprite[0].width);  //Limita los movimientos del personaje al ancho de pantalla
  }
}

