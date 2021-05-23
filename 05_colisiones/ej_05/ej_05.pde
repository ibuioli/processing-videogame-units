/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 5: Colisiones                    */
/*Ejemplo 05: Anti-Colisión Simple        */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Cuadrado forma1;         //Crea Objeto 1
Circulo_Volador forma2;  //Crea Objeto 2

void setup() {
  size(200, 400);

  rectMode(CENTER);

  forma1 = new Cuadrado(100, 300, 360);
  forma2 = new Circulo_Volador(0, 100, 150);
}

void draw() {
  background(90);  //Actualiza el Fondo

  forma1.mostrar();
  forma2.mostrar();

  if (forma2.x < forma1.x) {
    forma2.c = 120;          //Cuando está a la izquierda es Verde
  }
  else {
    forma2.c = 240;          //Cuando está a la derecha es Azul
  }
}

