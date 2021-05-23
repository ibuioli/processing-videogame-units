void mouseWheel(MouseEvent event) {
  float e = event.getAmount();

  if (e == 1) {
    y += 5;    //Suma 5 Píxeles cuando la rueda del mouse va hacia abajo
  }
  else if (e == -1) {
    y -= 5;    //Resta 5 Píxeles cuando la rueda del mouse va hacia arriba
  }
}

