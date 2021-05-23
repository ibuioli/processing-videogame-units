/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 3: Animación Interactiva         */
/*Ejemplo 02: Animación con Comando       */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

int numCuadros = 24; //Número de cuadros a animar
int cuadro = 0;      //Cuadro Actual
PImage[] sprite = new PImage[numCuadros];  //Array de Imágenes

void setup() {
  frameRate(10);  //Baja cantidad de cuadros por segundos. Necesario para percibir el movimiento.
  for (int i = 0; i < 24; i++) {
    sprite[i] = loadImage("sprites/ani-"+nf(i, 2)+".png");
  }
}

void draw() {
  background(255);  //Actualiza el Fondo
  image(sprite[cuadro], 10, 10);
}

void keyPressed() {
  if (keyCode == RIGHT) {
    cuadro++;
    if (cuadro == numCuadros) {
      cuadro = 0;
    }
  }
}

void keyReleased(){
  cuadro = 0;    //Resetea al primer Sprite
}

