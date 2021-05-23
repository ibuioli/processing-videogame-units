/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 5: Colisiones                    */
/*Ejemplo 01: Calcular Distancia          */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

float x1, y1, x2, y2;  //Creación de las variables
float d;               //Distancia

void setup() {
 size(200, 200);
 
 y1 = 80;
 x2 = 150;
 y2 = 80;
}

void draw() {
  background(90);  //Actualiza el Fondo
  
  x1 = mouseX;
  
  pushStyle();
  fill(255, 0, 0);
  rect(x1, y1, 50, 50);
  popStyle();
  
  pushStyle();
  fill(0, 0, 255);
  rect(x2, y2, 50, 50);
  popStyle();
  
  d = dist(x1, y1, x2, y2);  //Calcula distancia
  
  //Imprime distancia en la Consola
  //Cuanto más cerca, el valor es menor
  println(d);
}

