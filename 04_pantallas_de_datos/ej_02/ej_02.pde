/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 4: Pantallas de Datos            */
/*Ejemplo 02: Interacción con Retorno     */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

boolean pantalla01, pantalla02, m_over01, m_over02;

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
  }else if (pantalla02 == true){
    pantalla02();
  }
}

void mousePressed(){
  if(m_over01){
    pantalla01 = false;
    pantalla02 = true;
  }
  if(m_over02){
    pantalla01 = true;
    pantalla02 = false;
  }
}
