public class Dog {
  PShape d1;
  PVector d1pos;
  PVector d1vel;
  float a=0;
  float tableAngle = 0;
  float angleChange = 2;
  final int ANGLE_LIMIT = 45;



  Dog() {
    d1 = loadShape("dog.svg");
    d1pos =new PVector(0, 0);
    d1vel=new PVector(0, -.6);
  }

  void doTricks() {
    pushMatrix();
    d1.disableStyle();
    
    translate(100, 100);
    fill(255, 0, 0);
    rotate(radians(tableAngle));
    fill(255);
    rect(-80, 45, 150, 15);
    fill(255, 0, 0);
    textSize(12);
    text("Dog #1", -30, 55);
    
    tableAngle += angleChange;
    if (tableAngle > ANGLE_LIMIT || tableAngle < -45) {
      angleChange = -angleChange;
      tableAngle += angleChange;
    }
    if (on) {
      fill(255, 255, 0);
    } else {
      fill(255);
    }
    shape(d1, d1pos.x-50, d1pos.y-50, 100, 100);
    popMatrix();
  }

  void speak() {
    fill(255);
    //ellipse(100, 100, 200, 100);
    text("arf", 150, 100);
  }
}
