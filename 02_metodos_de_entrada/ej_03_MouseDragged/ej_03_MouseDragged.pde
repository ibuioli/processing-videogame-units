/******************************************/
/*Processing en el Universo del Videojuego*/
/*Unidad 2: Métodos de Entrada            */
/*Ejemplo 03: Mouse Dragged               */
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

  if (sobreRect == true) {   //Se detecta que el mouse está sobre la superficie de la figura
    fill(255, 0, 0);

    if (mousePressed) {      //Se detecta el botón del mouse presionado
      x = mouseX;
      y = mouseY;
    }
  }
  else {
    fill(255);
  }

  rect(x, y, an, al);
  sobreRect = mouseOver(x, y, an, al);
}

