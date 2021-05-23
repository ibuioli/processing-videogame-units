int animarSprites(int numCuadros, int cuadro) {
  
  cuadro++;
  
  if (cuadro == numCuadros) {
    cuadro = 0;
  }
  
  return cuadro;  //devuelve el cuadro
}

