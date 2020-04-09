class Bird {
  int flyX = -1;
  int flyY = 100;
  Bird() {
  }
  void show() {
    image(fly, flyX, flyY);
  }

  void move() {
    //flyX-=5;
    if (flyX<700) {
      flyX +=5;
      flyY = 100;
    }
    //if (flyX==700) {
    //  flyX = -1;
    //  flyY = 100;
    //}
    //}
  }
}
