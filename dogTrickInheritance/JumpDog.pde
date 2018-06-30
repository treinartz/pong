class JumpDog extends Dog {

  JumpDog() {
    super();
  }

  void doTricks(boolean on) {
    d1pos.add(d1vel);
    pushMatrix();
    d1.disableStyle();
    translate(700, 100);
    if (on) {
      fill(0, 0, 255);
      d1vel.y=-4;
    } else {
      fill(255);
      d1vel.y+=.6;
      if (d1pos.y+100>200) {
        d1vel.y*=-.4;
      }
    }
    shape(d1, d1pos.x-75, d1pos.y-50, 150, 100);
    popMatrix();
  }

  void buildTable() {
    fill(255);
    rect(620, 245, 150, 15);
    fill(255, 0, 0);
    textSize(12);
    text("JumpDog", 650, 255);
  }
  void speak() {
  }
}
