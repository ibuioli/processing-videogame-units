/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 3: Animación Interactiva         */
/*Ejemplo 01: Animación sencilla          */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

int numCuadros = 24; //Número de cuadros a animar
int cuadro = 0;      //Cuadro Actual
PImage[] sprite = new PImage[numCuadros];  //Array de Imágenes

void setup() {
  frameRate(10);  //Baja cantidad de cuadros por segundos. Necesario para percibir el movimiento.
  for (int i = 0; i < numCuadros; i++) {
    sprite[i] = loadImage("sprites/ani-"+nf(i, 2)+".png");
  }
}

void draw() {
  background(255);  //Actualiza el Fondo
  cuadro++;
  if (cuadro == numCuadros) {
    cuadro = 0;
  }
  image(sprite[cuadro], 10, 10);
}

