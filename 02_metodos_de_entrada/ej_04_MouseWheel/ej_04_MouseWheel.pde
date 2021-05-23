/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 2: Métodos de Entrada            */
/*Ejemplo 03: Mouse Wheel                 */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

int y;

void setup() {
  size(100, 500);
  
  rectMode(CENTER);
  
  y = 250;
}

void draw() {

  background(208);
  
  fill(0, 255, 0);
  rect(50, y, 50, 50);
}

