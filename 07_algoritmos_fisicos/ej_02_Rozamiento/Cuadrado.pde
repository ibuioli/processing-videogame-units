class Cuadrado {
  Rozamiento a;    //Se crea una clase gravedad para este Objeto
  float x, y, v, vr;

  Cuadrado(float x_, float y_, float v_, float vr_) {  //Constructor
    x = x_;  //Posición X
    y = y_;  //Posición Y
    v = v_;  //Velocidad
    vr = vr_;//Velocidad mientras está en Rozamiento
    
    a = new Rozamiento(x, v, vr, 200, 350);
  }

  void mostrar() {
    pushStyle();
    fill(255, 0, 0);
    rect(x, y, 50, 50);  //Forma afectada por la gravedad
    popStyle();
  }

  void mover() {
    a.calculo_rozamiento(x);  //Se calcula el rozamiento con cada ciclo del draw
    v = a.v;  //Se configura la nueva velocidad
    
    if (presDerecha == true) {
      x+=v;
    }
    if (presIzquierda == true) {
      x-=v;
    }

    x = constrain(x, 0, width-50);
  }
}

