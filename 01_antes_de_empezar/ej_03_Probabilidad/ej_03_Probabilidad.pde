/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 1: Antes de Empezar              */
/*Ejemplo 03: Probabilidad                */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

float porcentaje;

void setup() {
  porcentaje = 3;

  noStroke();
}

void draw() {
  if (random(10) <= porcentaje) {
    fill(255, 0, 0);
  }
  else {
    fill(0, 0, 255);
  }

  ellipse(random(width), random(height), 10, 10);
}

