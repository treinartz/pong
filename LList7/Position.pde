class Position {
  public int x;
  public int y;
  PVector pos;
  PVector vel;
  PVector acc;
  PVector grav;

  Position(int x, int y) {
    this.x = x;
    this.y = y;

    pos=new PVector(x, y);
    vel=new PVector(0.01, 0.01);
    acc=new PVector(0.01, 0.01);
    grav=new PVector(0.0, 0.001);
    pos.y=random(10, 180);
  }

  //this one works
  void display2() {

    rect(pos.x, pos.y, 100, 50);
    if (pos.x > 0 || pos.x < 0) {
      //float r=(float)(Math.random()+1);
      vel.x*=-.79;
      //vel.x*=-r;
    }
    if (pos.y >= 400) {
      vel.y *= -0.9;
      pos.y = 450;
    }

    ///
    // Condition to make the ball stop
    //if ( speed < .65 && pos.y > height-99.5) {
    // println("bottom");
    // acc.y=0;
    //speed = 0;
    //grav.y=0;
    //}
    //else if (pos.y > height-99.5) {
    // println(speed);
    //speed = speed * -0.65;
    //println("Change Direction");
    //}
    update();
  }
  void update() {
    vel.add(acc);
    //acc.add(grav);
    pos.add(vel);
    if (pos.y==500) {
      pos.y=500;
    }
  }
}
