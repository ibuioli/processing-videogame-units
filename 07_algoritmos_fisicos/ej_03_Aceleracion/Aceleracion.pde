class  Aceleracion {
  float vel, ac, valor, velocidad, max;

  Aceleracion(float valor_, float velocidad_, float max_) {
    valor = valor_;
    velocidad = velocidad_;
    max = max_;
  }

  void inicio_aceleracion() {
    ac = 0;
  }
  void fin_aceleracion() {
    if (vel < max && vel > -max) {
      vel += ac;
    }
  }

  void acelera() { 
    ac += valor;
  }
  void desacelera() {
    ac -= valor;
  }
  void friccion() {
    vel *= velocidad;
  }
}

