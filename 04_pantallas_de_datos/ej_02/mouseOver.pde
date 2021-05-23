boolean mouseOver(float x, float y, float ancho, float alto) {

  if (mouseX > x-ancho && mouseX < x+ancho && 
    mouseY > y-alto && mouseY < y+alto) {
    return true;
  }
  else {
    return false;
  }
}
