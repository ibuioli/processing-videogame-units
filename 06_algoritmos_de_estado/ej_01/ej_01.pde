/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 5: Algoritmos de Estado          */
/*Ejemplo 01: Barra Simple                */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

float vida;

void setup(){
  size(180, 140);
  background(90);
  
  vida = 550;    //Cambiar este valor y comprobar que ocurre
  
  //Mapear los valores para que vayan de 0 a 100
  vida = map(vida, 0, 500, 0, 100);
}

void draw(){
  pushStyle();  //Barra trasera, solo a modo visual
  fill(0);
  rect(40, 60, 100, 25);
  popStyle();
  
  pushStyle();  //Barra interactiva
  noStroke();
  fill(255, 0, 0);
  
  //Se contraen los valores en un rango para evitar que los valores se pasen de 100
  vida = constrain(vida, 0, 100);
  
  rect(40, 60, vida, 25);
  popStyle();
}
