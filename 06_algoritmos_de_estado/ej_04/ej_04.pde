/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 6: Algoritmos de Estado          */
/*Ejemplo 04: Barra con Imagen            */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Principal personaje;

void setup(){
  size(300, 140);
  
  personaje = new Principal();
}

void draw(){
  background(90);
  
  personaje.barraDeVida();  //Barra que interactua con el Mouse
}
