PImage cargarHoja(PImage hoja, int col, int fil, int inicioX, int inicioY) {
  
  int anchoSheet, altoSheet, xSheet, ySheet;  //Variables locales
  
  anchoSheet = hoja.width/col;    //Se trazan las columnas divisorias
  altoSheet = hoja.height/fil;    //Se trazan las filas divisorias
  
  xSheet = anchoSheet * inicioX;        
  ySheet = altoSheet * inicioY;
  
  return hoja.get(xSheet, ySheet, anchoSheet, altoSheet);
}

