int animarSprites(int numCuadros, int cuadro, int vel, boolean loop) {

  if (frameCount % vel == 0) {
    cuadro++;
  }
  else {
    cuadro = cuadro * 1;
  }

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

