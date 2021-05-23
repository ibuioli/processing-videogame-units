void degradadoH(float x_, float y_, float w_, float h_, float c1_, float c2_, float m_) {
  float x = x_;
  float y = y_;
  float w = w_;
  float h = h_;
  float c1 = c1_;
  float c2 = c2_;
  float m = m_;

  pushMatrix();
  translate(x, y);
  pushStyle();
  colorMode(HSB, 360, 100, 100);
  noFill();
  for (int i = 0;i < w;i++) {
    c1 = lerp(c1, c2, m);
    stroke(c1, 100, 100);
    line(i, 0, i, h);
  }
  popStyle();
  popMatrix();
}

void degradadoS(float x_, float y_, float w_, float h_, float c1_, float c2_, float m_) {
  float x = x_;
  float y = y_;
  float w = w_;
  float h = h_;
  float c1 = c1_;
  float c2 = c2_;
  float m = m_;

  pushMatrix();
  translate(x, y);
  pushStyle();
  colorMode(HSB, 360, 100, 100);
  noFill();
  for (int i = 0;i < w;i++) {
    c1 = lerp(c1, c2, m);
    stroke(0, 100, c1);
    line(i, 0, i, h);
  }
  popStyle();
  popMatrix();
}

void degradadoB(float x_, float y_, float w_, float h_, float c1_, float c2_, float m_) {
  float x = x_;
  float y = y_;
  float w = w_;
  float h = h_;
  float c1 = c1_;
  float c2 = c2_;
  float m = m_;

  pushMatrix();
  translate(x, y);
  pushStyle();
  colorMode(HSB, 360, 100, 100);
  noFill();
  for (int i = 0;i < w;i++) {
    c1 = lerp(c1, c2, m);
    stroke(0, c1, 100);
    line(i, 0, i, h);
  }
  popStyle();
  popMatrix();
}

void degradadoHSB(float x_, float y_, float w_, float h_, float c1_, float c2_, float c3_, float c4_, float c5_, float c6_, float m_) {
  float x = x_;
  float y = y_;
  float w = w_;
  float h = h_;
  float c1 = c1_;
  float c2 = c2_;
  float c3 = c3_;
  float c4 = c4_;
  float c5 = c5_;
  float c6 = c6_;
  float m = m_;

  pushMatrix();
  translate(x, y);
  pushStyle();
  colorMode(HSB, 360, 100, 100);
  noFill();
  for (int i = 0;i < w;i++) {
    c1 = lerp(c1, c2, m);
    c3 = lerp(c3, c4, m);
    c5 = lerp(c5, c6, m);
    stroke(c1, c2, c3);
    line(i, 0, i, h);
  }
  popStyle();
  popMatrix();
}

