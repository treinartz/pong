class BigDog extends Dog {

  BigDog() {
    super();
  }

  void doTricks(boolean on) {
    d1pos.add(d1vel);
    pushMatrix();
    d1.disableStyle();
    translate(width/2, height/2);
    if (on) {
      fill(0, 255, 0);
      d1vel.y=-3;
    } else {
      fill(255);
      d1vel.y+=.7;
      if (d1pos.y+100>200) {
        d1vel.y*=-.3;
      }
    }
    shape(d1, d1pos.x-50, d1pos.y-50, 220, 200);
    popMatrix();
  }

  void buildTable() {
    fill(255);
    rect(360, 545, 150, 15);
    fill(255, 0, 0);
    textSize(12);
    text("BigDog", 420, 555);
  }

  void speak() {
  }
}
