class  Gravedad {
  float y, v, g, p;

  Gravedad(float y_, float v_, float g_, float p_) {
    y = y_;  //Posición en Y
    v = v_;  //Velocidad de Caída
    g = g_;  //Constante de Gravedad
    p = p_;  //Superficie de Apoyo
  }

  void calculo_gravedad() {
    y = y + v;  //Se le suma a la posición Y la Velocidad
    v = v + g;  //Se le suma a la velocidad la gravedad, aumenta la caída en cada ciclo

    if (y > p) {  //El valor de Superficie Limita la caída
      v = 0;
    }
  }
}
