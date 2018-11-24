
class SnowFlake {
  double xloc, yloc, speedX, speedY, size, vel, grow;
  float damping, friction;

  SnowFlake() {
    xloc=Math.random()*width;
    yloc=(Math.random()*200)-200;
    speedY=(Math.random()*3)-2;
    speedX=(Math.random()*3)-2;
    size=Math.random()*10;
    vel=.01;
    grow=30;
  }
  void move() {
    if (xloc>width+20) {
      xloc=width+20;
      speedX*=-1;
    }
    if (xloc<-20) {
      xloc=-20;
      speedX*=-1;
    }

    if (yloc>height&&speedY>5) {
      yloc=-5;
      speedY=4;
    } else {
      speedY+=vel;
      yloc+=speedY;
      xloc+=speedX;
      println(speedY);
    }
  }

  void show() {
    fill(255);
    ellipse((float)xloc, (float)yloc, (float)size, (float)size);

    fill(255, 255, 255);
    rect(0, height, width, (float)grow);

    if (grow<-100) {
      grow=-100;
    } else {
      grow-=.08;
    }
  }
}
