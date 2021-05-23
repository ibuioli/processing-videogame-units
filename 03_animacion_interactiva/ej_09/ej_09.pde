/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 3: Animación Interactiva         */
/*Ejemplo 08: Animación por Sprites Sheet */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Principal personaje;

void setup() {
  size(200, 200);
  colorMode(HSB);
  noCursor();

  personaje = new Principal();
}

void draw() {
  background(frameCount%360, 360, 360);

  personaje.mostrar();
  personaje.animar();
}
