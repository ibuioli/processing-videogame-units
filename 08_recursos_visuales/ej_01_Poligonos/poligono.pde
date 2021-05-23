void poligono(float x_, float y_, float r_, float l_) {
  
  float x = x_;         //Posición X
  float y = y_;         //Posición Y
  float r = r_;         //Radio del polígono
  float l = (int)l_;    //Lados del polígono

  pushMatrix();
  translate(x, y);
  beginShape();
  for (int i = 0; i < l;i++) {
    vertex(r/2 * cos(radians(360 * i / l)), r/2 * sin(radians(360 * i / l)));
  }
  endShape(CLOSE);
  popMatrix();
}

