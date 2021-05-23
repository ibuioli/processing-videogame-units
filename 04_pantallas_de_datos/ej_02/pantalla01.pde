void pantalla01() {
  fill(255);
  for (int i = 60; i < 480; i+=120) {
    ellipse(i, 150, 100, 100);
  }
  m_over01 = mouseOver(135, 283, 206, 17);

  if (m_over01) {
    fill(255, 0, 0);
    cursor(HAND);
    m_over02 = false;
  }
  else {
    fill(255);
    cursor(ARROW);
  }
  text("Cambiar a Cuadrados", 135, 300);
}

