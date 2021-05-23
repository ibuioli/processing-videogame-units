class Circulo_Volador {
  float xoff = 0.0;
  float x, y;
  color c;

  Circulo_Volador(int x_, int y_, color c_) {  //Constructor
    x = x_;
    y = y_;
    c = c_;
  }

  void mostrar() {
    xoff = xoff + .01;
    float n = noise(xoff) * width;

    x = n;

    pushStyle();
    colorMode(HSB, 360, 100, 100);
    fill(c, 100, 100);
    ellipse(x, y, 50, 50);
    popStyle();
    
    println(n);
  }
}

