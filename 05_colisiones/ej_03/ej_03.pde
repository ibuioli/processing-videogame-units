/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 5: Colisiones                    */
/*Ejemplo 03: Colisión con Empuje         */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Cuadrado forma1, forma2;  //Crea Objeto
float d;                  //Distancia

void setup() {
  size(400, 200);

  forma1 = new Cuadrado(0, 0, 360);
  forma2 = new Cuadrado(170, 80, 245);
}

void draw() {
  background(90);  //Actualiza el Fondo

  forma1.mostrar();
  forma2.mostrar();
  
  forma1.x = mouseX;  //Actualiza posición X de forma
  forma1.y = mouseY;  //Actualiza posición Y de forma
  
  d = dist(forma1.x, forma1.y, forma2.x, forma2.y);
  
  if(d < 50){  //Detecta la colisión para simular empuje
    if(forma1.x < forma2.x){
      forma2.x++;  //Suma a la segunda forma
    }else{
      forma2.x--;  //Resta a la segunda forma
    }
  }
  
  //Imprime distancia en la Consola
  //Cuanto más cerca, el valor es menor
  println(d);
}

