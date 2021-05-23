void keyReleased() {        //Detectar Tecla Levantada
  if (keyCode == RIGHT) {
    if (seleccion.sel_x < width-width/4) {
      seleccion.sel_x += width/4;
    }
  }
  if (keyCode == LEFT) {
    if (seleccion.sel_x > 20) {
      seleccion.sel_x -= width/4;
    }
  }
  if (keyCode == DOWN) {
    if (seleccion.sel_y < height-height/3) {
      seleccion.sel_y += height/3;
    }
  }
  if (keyCode == UP) {
    if (seleccion.sel_y > 25) {
      seleccion.sel_y -= height/3;
    }
  }
}

