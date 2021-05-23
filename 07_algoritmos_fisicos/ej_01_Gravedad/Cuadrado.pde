class Cuadrado {
  Gravedad a;    //Se crea una clase gravedad para este Objeto
  float x, y, v, g;

  Cuadrado(float x_, float y_, float v_, float g_) {  //Constructor
    x = x_;  //Posición X
    y = y_;  //Posición Y
    v = v_;  //Velocidad
    g = g_;  //Gravedad
    
    //La clase Gravedad recibe cuatro parámetros:
    //Posición Y, Velocidad, Gravedad y Superficie
    a = new Gravedad(y, v, g, 300);
  }

  void mostrar() {
    pushStyle();
    fill(255, 0, 0);
    rect(x, y, 50, 50);  //Forma afectada por la gravedad
    popStyle();
  }

  void mover() {
    a.calculo_gravedad();  //Se calcula la gravedad con cada ciclo del draw
    y = a.y;  //Se configura la nueva posición en Y
    v = a.v;  //Se configura la nueva velocidad
    
    if (presDerecha == true) {
      x+=2;
    }
    if (presIzquierda == true) {
      x-=2;
    }
    if (presArriba == true) {
      a.y-=3;  //Para simular el salto se le resta en cada ciclo un valor al calculo de posición en Y
    }

    x = constrain(x, 0, width-50);
  }
}

