/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 2: Métodos de Entrada            */
/*Ejemplo 02: Mouse Over Círculo          */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

int x = 50;  //Posición en X
int y = 50;  //Posición en Y
int d = 40;  //Diámetro

boolean sobreCir;

void setup(){
}

void draw(){
  background(208);
  
  if(sobreCir == true){
    fill(255, 0, 0);
  }else{
    fill(255);
  }
  
  ellipse(x, y, d, d);
  
  sobreCir = mouseOverCirculo(x, y, d);
}
