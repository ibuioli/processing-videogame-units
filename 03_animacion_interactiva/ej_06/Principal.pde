class Principal {
  int x, y;    //Posición y Efecto espejo

  int numFrente = 4;    //Número de cuadros a animar
  int numDetras = 4;    //Número de cuadros a animar
  int numIzquierda = 4; //Número de cuadros a animar
  int numDerecha = 4;   //Número de cuadros a animar

  int cuadroF = 0;      //Cuadro Actual
  int cuadroA = 0;      //Cuadro Actual
  int cuadroI = 0;      //Cuadro Actual
  int cuadroD = 0;      //Cuadro Actual
  
  int vel = 10;          //Velocidad

  PImage[] spriteF = new PImage[numFrente];      //Array de Imágenes
  PImage[] spriteA = new PImage[numDetras];      //Array de Imágenes
  PImage[] spriteI = new PImage[numIzquierda];   //Array de Imágenes
  PImage[] spriteD = new PImage[numDerecha];     //Array de Imágenes

  Principal(int x_, int y_) {  //Constructor
    x = x_;
    y = y_;

    for (int i = 0; i < numFrente; i++) {
      spriteF[i] = loadImage("sprites/frente/ani-"+nf(i, 2)+".png");
    }
    for (int i = 0; i < numFrente; i++) {
      spriteA[i] = loadImage("sprites/detras/ani-"+nf(i, 2)+".png");
    }
    for (int i = 0; i < numFrente; i++) {
      spriteI[i] = loadImage("sprites/izquierda/ani-"+nf(i, 2)+".png");
    }
    for (int i = 0; i < numFrente; i++) {
      spriteD[i] = loadImage("sprites/derecha/ani-"+nf(i, 2)+".png");
    }
  }

  void mostrar() {
    pushMatrix();      //Matrix de Control
    translate(x, y);   //Posición X,Y

    if (presAbajo == false && presArriba == false &&
      presDerecha == false && presIzquierda == false &&
      soltAbajo == false && soltArriba == false &&
      soltIzquierda == false && soltDerecha == false) {
      image(spriteF[0], 0, 0);    //Imagen por Defecto
    }

    if (presAbajo == true && presDerecha == false && presIzquierda == false) {
      image(spriteF[cuadroF], 0, 0);  //Animación de Frente
    }
    if (presArriba == true && presDerecha == false && presIzquierda == false) {
      image(spriteA[cuadroA], 0, 0);  //Animación por Detrás
    }
    if (presIzquierda == true) {
      image(spriteI[cuadroI], 0, 0);  //Animación por Izquierda
    }
    if (presDerecha == true) {
      image(spriteD[cuadroD], 0, 0);  //Animación por Derecha
    }

    if (presAbajo == true && presDerecha ||
      presArriba == true && presDerecha) {
      image(spriteD[cuadroD], 0, 0);  //Animación de Frente
    }
    if (presAbajo == true && presIzquierda ||
      presArriba == true && presIzquierda) {
      image(spriteI[cuadroI], 0, 0);  //Animación por Detrás
    }

    if (presAbajo == false && presArriba == false 
      && presIzquierda == false && presDerecha == false) {  //Código para mantener las direcciones cuando no se presionan teclas

      if (soltAbajo == true) {
        image(spriteF[cuadroF], 0, 0);
      } else if (soltArriba == true) {
        image(spriteA[cuadroA], 0, 0);
      } else if (soltDerecha == true) {
        image(spriteD[cuadroD], 0, 0);
      } else if (soltIzquierda == true) {
        image(spriteI[cuadroI], 0, 0);
      }
    }
    popMatrix();
  }

  void mover() {
    //Llamados a la Función para animar los sprites y movimientos en X y en Y
    if (presAbajo == true) {
      cuadroF = animarSprites(numFrente, cuadroF, vel, true);
      y++;
    }
    if (presArriba == true) {
      cuadroA = animarSprites(numDetras, cuadroA, vel, true);
      y--;
    }
    if (presIzquierda == true) {
      cuadroI = animarSprites(numIzquierda, cuadroI, vel, true);
      x--;
    }
    if (presDerecha == true) {
      cuadroD = animarSprites(numDerecha, cuadroD, vel, true);
      x++;
    }

    x = constrain(x, 0, width-spriteD[0].width);  //Limita los movimientos del personaje al ancho de pantalla
    y = constrain(y, 0, height-spriteA[0].height);  //Limita los movimientos del personaje al alto de pantalla
  }
}

