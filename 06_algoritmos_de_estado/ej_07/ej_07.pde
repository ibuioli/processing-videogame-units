/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 6: Algoritmos de Estado          */
/*Ejemplo 07: Barra con Diagrama de Estado*/
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Principal personaje;
String estado;

void setup(){
  size(180, 140);
  
  personaje = new Principal(40, 20, 0);
  estado = " ";  //Para evitar problemas de contenido nulo (null)
}

void draw(){
  background(90);
  
  personaje.barraDeVida();    //Barra que interactua con el Mouse
  personaje.evaluarEstado();  //Evalúa el estado de la Barra
  personaje.cuerpo();         //Dibuja el cuerpo del personaje
}
