/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 4: Colisiones                    */
/*Ejemplo 05: Colisión Simple             */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Cuadrado forma1, forma2;  //Crea Objeto
float d;                  //Distancia

void setup() {
  size(200, 200);

  forma1 = new Cuadrado(10, 80, 360);
  forma2 = new Cuadrado(150, 80, 245);
}

void draw() {
  background(90);  //Actualiza el Fondo

  forma1.mostrar();
  forma2.mostrar();
  
  forma1.x = mouseX;  //Actualiza posición de forma
  
  d = dist(forma1.x, forma1.y, forma2.x, forma2.y);
  
  if(d < 50){
    forma1.x = 100;  //Deja la primer forma quieta
  }
  
  //Imprime distancia en la Consola
  //Cuanto más cerca, el valor es menor
  println(d);
}

