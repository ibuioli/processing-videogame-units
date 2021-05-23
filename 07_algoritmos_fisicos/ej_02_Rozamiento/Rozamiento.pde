class Rozamiento {
  float x, v, vr, r1, r2;
  float v2; //Para almacenar la velocidad por defecto

  Rozamiento(float x_, float v_, float vr_, float r1_, float r2_) {
    x = x_;  //Posición en Y
    v = v_;  //Velocidad de Roce
    vr = vr_;
    r1 = r1_;
    r2 = r2_;
    v2 = v_;
  }

  void calculo_rozamiento(float x_) {
    x = x_;
    
    if(x > r1 && x < r2){
      v = 0.5;
    }else{
      v = v2;
    }
  }
}
