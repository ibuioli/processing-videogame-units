/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 7: Algoritmos Físicos            */
/*Ejemplo 01: Simular Gravedad            */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Cuadrado forma;  //Declara Objeto
boolean presDerecha, presIzquierda, presArriba, presAbajo; 

float x = 30;    //Posición X
float y = 300;    //Posición Y

void setup() {
  size(600, 400);
  forma = new Cuadrado(x, y, .1, .95, 5);  //Asigna Valores
}

void draw() {
  background(80);

  pushStyle();  //Dibuja un Piso a modo Esquemático
  noStroke();
  rect(0, 350, width, 50);
  popStyle();

  forma.mostrar();
  forma.mover();
}

