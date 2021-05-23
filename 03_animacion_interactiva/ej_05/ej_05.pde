/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 3: Animación Interactiva         */
/*Ejemplo 05: Animación y Movimientos     */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Principal personaje;  //Declara un nuevo Objeto
boolean presDerecha, presIzquierda, presArriba, presAbajo;  //Variables de control de Teclas

void setup() {
  size(600, 200);
  
  personaje = new Principal(10, 80);  //Asigna los Valores al Objeto
}

void draw() {
  background(255);  //Actualiza el Fondo
  
  pushStyle();      //Agrega un piso, solo visual, nada interactivo
  noStroke();
  fill(100);
  rect(0, 130, width, 70);
  popStyle();      //Termina el piso
  
  personaje.mostrar();  //Muestra al personaje
  personaje.mover();    //Mueve al personaje
}

