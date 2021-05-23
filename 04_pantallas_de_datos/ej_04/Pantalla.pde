class Pantalla {
  int sel_x;  //Variable de Control
  int sel_y;  //Variable de Control

  Pantalla() {
    sel_x = 20;
    sel_y = 25;
  }

  void grilla() {
    pushMatrix();
    translate(20, 25); //Se acomoda la grilla
    for (int x=0; x < width; x += width/4) {
      for (int y=0; y < height; y += height/3) {
        pushStyle();
        noStroke();
        fill(100);
        rect(x, y, 80, 70);
        popStyle();
      }
    }
    popMatrix();
  }

  void selector() {
    pushStyle();
    strokeWeight(5);
    stroke(random(100, 255));
    noFill();
    rect(sel_x, sel_y, 80, 70);
    popStyle();
  }
}

