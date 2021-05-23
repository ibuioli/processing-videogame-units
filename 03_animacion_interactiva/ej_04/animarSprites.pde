int animarSprites(int numCuadros, int cuadro, boolean loop) {

  cuadro++;

  if (cuadro == numCuadros) {
    if (loop == true) {
      cuadro = 0;
    }
    else {
      cuadro = numCuadros-1;
    }
  }

  return cuadro;  //devuelve el cuadro
}

