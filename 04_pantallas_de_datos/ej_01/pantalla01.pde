void pantalla01() {
  fill(255);
  for (int i = 60; i < 480; i+=120) {
    ellipse(i, 150, 100, 100);
  }
  m_over = mouseOver(135, 283, 206, 17);

  if (m_over == true) {
    fill(255, 0, 0);
    cursor(HAND);
  }
  else {
    fill(255);
    cursor(ARROW);
    m_over = false;
  }
  text("Cambiar a Cuadrados", 135, 300);
}

