/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 1: Antes de Empezar              */
/*Ejemplo 01: Entrada de Teclas           */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

boolean presDerecha, presIzquierda, presArriba, presAbajo;

void setup() {
  //No es necesario configuraciones desde el Setup
  //Solo se usará la Consola
}

void draw() {
  if (presDerecha) {
    println("Tecla Derecha");
  }
  else if (presIzquierda) {
    println("Tecla Izquierda");
  }
  else if (presArriba) {
    println("Tecla Arriba");
  }
  else if (presAbajo) {
    println("Tecla Abajo");
  }else{
    println("No Tecla - Otra Tecla");
  }
}

