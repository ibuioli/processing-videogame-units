/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 6: Algoritmos de Estado          */
/*Ejemplo 03: Estetica de la Barra        */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Principal personaje;

void setup(){
  size(180, 140);
  
  personaje = new Principal(40, 60, 350);  //Explorar lo que ocurre al cambiar el tercer valor
}

void draw(){
  background(90);
  
  personaje.barraDeVida();  //Barra que interactua con el Mouse
}
