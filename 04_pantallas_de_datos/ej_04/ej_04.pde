/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 4: Pantallas de Datos            */
/*Ejemplo 04: Pantalla de Selección       */
/*                                        */
/* ibuioli@gmail.com                      */
/* jaimeperezmarin@gmail.com              */
/******************************************/

Pantalla seleccion;    //Objeto Pantallas

void setup() {
  size(480, 360);
  seleccion = new Pantalla();  //Asignación a Objeto Pantallas
}

void draw() {
  background(30);
  seleccion.grilla();
  seleccion.selector();
}
