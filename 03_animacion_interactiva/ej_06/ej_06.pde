/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 3: Animación Interactiva         */
/*Ejemplo 06: Animación Rol Compleja      */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Principal personaje;  //Declara un nuevo Objeto
PImage fondo;
boolean presDerecha, presIzquierda, presArriba, presAbajo,
soltDerecha, soltIzquierda, soltArriba, soltAbajo;  //Variables de control de Teclas

void setup() {
  size(256, 192);
  
  fondo = loadImage("fondo.png");
  personaje = new Principal(110, 80);  //Asigna los Valores al Objeto
}

void draw() {
  image(fondo, 0, 0);   //Fondo con Imagen
  
  personaje.mostrar();  //Muestra al personaje
  personaje.mover();    //Mueve al personaje
}

