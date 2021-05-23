/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 2: Métodos de Entrada            */
/*Ejemplo 01: Mouse Over                  */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

boolean sobreRect;
int x, y, an, al;

void setup() {
  
  rectMode(RADIUS);  //Para este tipo de detecciones es necesario que el modo de las figuras sea RADIUS
  
  x = 50;
  y = 50;
  an = 20;
  al = 40;
  
}

void draw() {
  
  background(208);
  
  if(sobreRect == true){  //Necesitamos una variable booleana para detectar cada figura independiente.
    fill(255, 0, 0);
  }else{
    fill(255);
  }
  
  rect(x, y, an, al);
  sobreRect = mouseOver(x, y, an, al);  //La función recibe cuatro parámetros: Posición en X, Posición en Y, Ancho de la Figura y Alto de la Figura.
}

