/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 4: Pantallas de Datos            */
/*Ejemplo 01: Interacción sencilla        */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

boolean pantalla01, m_over;

void setup() {
  size(480, 360);
  noStroke();
  textSize(20);
  pantalla01 = true;
}

void draw() {
  background(30);
  if (pantalla01 == true) {
    pantalla01();
  }else{
    pantalla02();
  }
}

void mousePressed(){
  if(m_over){
    pantalla01 = false;
  }
}
