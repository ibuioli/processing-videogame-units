/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 8: Recursos Visuales             */
/*Ejemplo 01: Polígonos                   */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

int lados;

void setup(){
  size(200, 200);
}

void draw(){
  background(0);
  
  noStroke();
  fill(200);
  
  //Esta función recibe cuatro parámetros: los dos primeros es la posición espacial, 
  //el tercero es el radio total de la figura, y el cuarto es la cantidad de lados 
  poligono(width/2, height/2, 100, lados);  //Poligono: Desde un pentágono hasta un octógono
  
  lados = (int)map(mouseX, 0, width, 3, 9);  //Aumenta o disminuye la cantidad de lados acorde a la posición X
}
