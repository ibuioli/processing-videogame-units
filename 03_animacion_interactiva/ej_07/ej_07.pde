/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 3: Animación Interactiva         */
/*Ejemplo 07: Animación Arcade Compleja   */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Principal personaje;
PImage fondo, piso;
boolean presDerecha, presIzquierda, presArriba, presAbajo;

void setup(){
  size(640, 420);
  
  fondo = loadImage("fondo.png");
  piso = loadImage("piso.png");
  
  personaje = new Principal(20, 145);
}

void draw(){
  background(fondo);
  image(piso, 0, height-piso.height);
  
  personaje.mostrar();
  personaje.animar();
  personaje.mover();
}
