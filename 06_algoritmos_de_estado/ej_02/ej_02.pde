/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 6: Algoritmos de Estado          */
/*Ejemplo 02: Barra Interactiva           */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Principal personaje;

void setup(){
  size(180, 140);
  background(90);
  
  personaje = new Principal();
}

void draw(){
  personaje.barraDeVida();  //Barra que interactua con el Mouse
}
