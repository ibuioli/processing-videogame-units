class Cuadrado {
  Aceleracion a;    //Se crea un objeto aceleracion para este Objeto
  float x, y, ac, vel, max;

  Cuadrado(float x_, float y_, float ac_, float vel_, float max_) {  //Constructor
    x = x_;      //Posición X
    y = y_;      //Posición Y
    ac = ac_;    //Aceleración, a menor valor acelerará más despacio
    vel = vel_;  //Velocidad de Fricción, a menor valor el objeto resbalará menos
    max = max_;  //Velocidad Máxima a alcanzar

    a = new Aceleracion(ac, vel, max);
  }

  void mostrar() {
    pushStyle();
    fill(255, 0, 0);
    rect(x, y, 50, 50);  //Forma afectada por la aceleración
    popStyle();
  }

  void mover() {    
    a.inicio_aceleracion();   //Inicia la aceleración

    if (presDerecha == true) {
      a.acelera();            //Función que acelera
    }
    if (presIzquierda == true) {
      a.desacelera();         //Función que desacelera
    }
    if ( !presIzquierda && !presDerecha ) {
      a.friccion();           //Cálculo de fricción, a menor valor el objeto "resbalará" menos
    }

    a.fin_aceleracion();    //Finaliza la aceleración
    x += a.vel;             //Se agrega el valor de velocidad acelerada a la posición deseada         

    x = constrain(x, 0, width-50);
  }
}

