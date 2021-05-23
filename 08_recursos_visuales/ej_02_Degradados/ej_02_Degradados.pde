/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 8: Recursos Visuales             */
/*Ejemplo 02: Degradados                  */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

void setup(){
  size(250, 250);
}

void draw(){
  background(30);
  
  degradadoH(0, 0, 100, 100, 360, 0, 0.03);
  
  degradadoS(0, 150, 100, 100, 100, 0, 0.02);
  
  degradadoB(150, 0, 100, 100, 100, 0, 0.02);
  
  degradadoHSB(150, 150, 100, 100, 0, 360, 70, 0, 90, 0, 0.01);
}
