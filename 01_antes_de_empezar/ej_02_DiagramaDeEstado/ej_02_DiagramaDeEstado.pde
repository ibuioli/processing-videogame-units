/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 1: Antes de Empezar              */
/*Ejemplo 02: Diagramas de Estado         */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

String estado = " ";  //Cadena de texto, control del estado
int x;        //Posición en Eje X
int d = 80;   //Diámetro

void setup(){
  size(400, 100);
}

void draw(){
  background(255);
  
  //Estados//
  if(estado.equals("voy")){
    x+=2;
  }
  if(estado.equals("vuelvo")){
    x-=2;
  }
  
  //Acciones//
  if(x <= 0+d/2){
    estado = "voy";
  }
  if(x > width-d/2){
    estado = "vuelvo";
  }
  
  ellipse(x, 50, d, d);  //Dibuja la Elipse
}
