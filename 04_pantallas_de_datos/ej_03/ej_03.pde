/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 4: Pantallas de Datos            */
/*Ejemplo 03: Pantallas con Objetos       */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Pantalla inicio;    //Objeto Pantallas
boolean pantalla01, pantalla02, m_over01, m_over02;  //Variables de Control

void setup() {
  size(480, 360);
  noStroke();
  textSize(20);
  pantalla01 = true;
  inicio = new Pantalla();  //Asignación a Objeto Pantallas
}

void draw() {
  background(30);
  if (pantalla01 == true) {
    inicio.p01();    //Las pantallas son consideradas métodos del Objeto
  }else if (pantalla02 == true){
    inicio.p02();
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
