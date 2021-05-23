void pantalla02() {
  rectMode(CENTER);
  fill(255);
  for (int i = 60; i < 480; i+=120) {
    rect(i, 150, 100, 100);
  }

  m_over02 = mouseOver(150, 283, 165, 17);

  if (m_over02) {
    fill(255, 0, 0);
    cursor(HAND);
    m_over01 = false;
  } 
  else {
    fill(255);
    cursor(ARROW);
  }
  text("Volver a Circulos", 150, 300);
}

