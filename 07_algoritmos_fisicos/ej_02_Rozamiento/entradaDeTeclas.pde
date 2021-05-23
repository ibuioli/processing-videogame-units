void keyPressed() {        //Detectar Tecla Presionada
  switch(keyCode) {
  case RIGHT:
    presDerecha = true;
    break;
  case LEFT:
    presIzquierda = true;
    break;
  case UP:
    presArriba = true;
    break;
  case DOWN:
    presAbajo = true;
    break;
  }
}

void keyReleased() {        //Detectar Tecla Levantada
  switch(keyCode) {
  case RIGHT:
    presDerecha = false;
    break;
  case LEFT:
    presIzquierda = false;
    break;
  case UP:
    presArriba = false;
    break;
  case DOWN:
    presAbajo = false;
    break;
  }
}
