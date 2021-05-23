class Principal {
  int cuadro, vel;
  int anchoSheet, altoSheet, xSheet, ySheet;
  PImage sheet;
  PImage[] sprites = new PImage[7];

  Principal() {
    vel = 3;

    sheet = loadImage("sheet.png"); //Se carga la Sprite Sheet en una PImage 

    anchoSheet = sheet.width/20;    //Se trazan las columnas divisorias
    altoSheet = sheet.height/4;     //Se trazan las filas divisorias
    xSheet = anchoSheet * 6;        //Ya que se va a iniciar con la animación a partir del sexto frame es necesario multiplicar el ancho por seis 

    for (int i = 0; i < sprites.length; i++) {
      sprites[i] = sheet.get(xSheet, ySheet, anchoSheet, altoSheet);

      xSheet = xSheet + anchoSheet;  //Se cambia al siguiente cuadro por sumar el ancho general a la posición actual
    }
  }

  void mostrar() {
    pushStyle();
    imageMode(CENTER);
    image(sprites[cuadro], mouseX, mouseY);        //Visualización de la Animación posicionada en el lugar del cursor
    popStyle();
  }

  void animar() {
    cuadro = animarSprites(7, cuadro, vel, true);  //Animación
  }
}

