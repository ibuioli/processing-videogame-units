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
float y = 50;    //Posición Y
float v = 0;     //Velocidad
float g = 0.2;   //Gravedad

void setup() {
  size(600, 400);
  forma = new Cuadrado(x, y, v, g);  //Asigna Valores
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

