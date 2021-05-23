//Funciones para detectar las teclas
//En caso de Necesitarse otras, pueden ser agregadas

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
  
  //Necesario para evitar Bugs
  soltArriba = false;
  soltAbajo = false;
  soltDerecha = false;
  soltIzquierda = false;
}

void keyReleased() {        //Detectar Tecla Levantada
  switch(keyCode) {
  case RIGHT:
    presDerecha = false;
    soltDerecha = true;
    break;
  case LEFT:
    presIzquierda = false;
    soltIzquierda = true;
    break;
  case UP:
    presArriba = false;
    soltArriba = true;
    break;
  case DOWN:
    presAbajo = false;
    soltAbajo = true;
    break;
  }
}
