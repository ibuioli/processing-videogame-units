/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 6: Algoritmos de Estado          */
/*Ejemplo 05: Barras con Máscara          */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Principal personaje;

void setup(){
  size(300, 170);
  
  personaje = new Principal();
}

void draw(){
  background(90);
  
  personaje.barraDeVida();
}
