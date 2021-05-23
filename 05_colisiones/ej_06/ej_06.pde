/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 5: Colisiones                    */
/*Ejemplo 06: Colisión en Movimiento      */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Cuadrado forma1;          //Crea Objeto
Cuadrado_Volador forma2;  //Crea Objeto
float d;                  //Distancia

void setup() {
  size(500, 500);

  forma1 = new Cuadrado(0, 0, 360);
  forma2 = new Cuadrado_Volador(170, 80, 245);
}

void draw() {
  background(90);  //Actualiza el Fondo

  forma1.mostrar();
  forma2.mostrar();

  forma1.x = mouseX;  //Actualiza posición X de forma
  forma1.y = mouseY;  //Actualiza posición Y de forma

  d = dist(forma1.x, forma1.y, forma2.x, forma2.y);

  if (d < 50) {  //Detecta la colisión para simular empuje
    forma2.x += mouseX - pmouseX; //Con valores previos se puede optimizar el código y simular empuje
    forma2.y += mouseY - pmouseY;
  }

  //Imprime distancia en la Consola
  //Cuanto más cerca, el valor es menor
  println(d);
}

