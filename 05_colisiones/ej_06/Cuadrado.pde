class Cuadrado {
  int x, y;
  color c;

  Cuadrado(int x_, int y_, color c_) {  //Constructor
    x = x_;
    y = y_;
    c = c_;
  }
  
  void mostrar(){
    pushStyle();
    colorMode(HSB, 360, 100, 100);
    fill(c, 100, 100);
    rect(x, y, 50, 50);
    popStyle();
  }
}

