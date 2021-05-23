/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 6: Algoritmos de Estado          */
/*Ejemplo 06: Barra Circular              */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Principal personaje;

void setup(){
  size(180, 140);
  
  personaje = new Principal();
}

void draw(){
  background(90);
  
  personaje.barraDeVida();
}
