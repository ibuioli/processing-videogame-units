class Cuadrado_Volador {
  float x, y, a;
  color c;

  Cuadrado_Volador(int x_, int y_, color c_) {  //Constructor
    x = x_;
    y = y_;
    c = c_;
  }
  
  void mostrar(){
    
    x = x + sin(a)*8;
    y = y + sin(a)*5;
    a += .1;
    
    pushStyle();
    colorMode(HSB, 360, 100, 100);
    fill(c, 100, 100);
    rect(x, y, 50, 50);
    popStyle();
  }
}
