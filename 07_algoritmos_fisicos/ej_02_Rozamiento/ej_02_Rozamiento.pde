/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 7: Algoritmos Físicos            */
/*Ejemplo 02: Simular Rozamiento          */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Cuadrado forma;  //Declara Objeto
boolean presDerecha, presIzquierda, presArriba, presAbajo; 

float x = 30;      //Posición X
float y = 300;     //Posición Y
float v = 2;       //Velocidad
float vr = 0.5;    //Velocidad Rozamiento

void setup() {
  size(600, 400);
  forma = new Cuadrado(x, y, v, vr);  //Asigna Valores
}

void draw() {
  background(80);

  pushStyle();  //Dibuja un Piso a modo Esquemático
  noStroke();
  rect(0, 350, width, 50);
  popStyle();
  
  pushStyle();  //Dibuja zona de rozamiento a modo representativo
  noStroke();
  fill(0, 0, 255);
  rect(200, 350, 150, 50);
  popStyle();
  
  forma.mostrar();
  forma.mover();
}

