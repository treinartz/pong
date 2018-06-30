class SpinDog extends Dog {
  float angle=0;

  SpinDog() {
    super();
  }

  void doTricks(boolean on) {
    pushMatrix();
    d1.disableStyle();
    translate(100, 300);

    if (on) {
      rotate(angle);
      fill(255, 0, 0);
      angle+=.1;
    } else {
      fill(255);
      angle+=.01;
      if (d1pos.y+100>200) {
        d1vel.y*=-.5;
      }
    }
    shape(d1, d1pos.x-50, d1pos.y-50, 100, 100);
    popMatrix();
  }

  void buildTable() {
    fill(255);
    rect(20, 350, 150, 15);
    fill(255, 0, 0);
    textSize(12);
    text("SpinDog", 70, 360);
  }

  void speak() {
  }
}
