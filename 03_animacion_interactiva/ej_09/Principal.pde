class Principal {
  int cuadro, vel;
  PImage sheet;
  PImage[] sprites = new PImage[7];

  Principal() {
    vel = 3;

    sheet = loadImage("sheet.png"); //Se carga la Sprite Sheet en una PImage

    for (int i = 0; i < sprites.length; i++) {
      sprites[i] = cargarHoja(sheet, 20, 4, i+6, 0);  //Función para Cargar la Hoja de Sprites. El primer parámetro es la variable tipo PImage donde se encuentra la hoja. Le siguen el ancho, alto, posición en X y en Y del cuadro.
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

