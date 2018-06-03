Paddle p;
Ball b;
boolean up;
boolean down;
int count;

void setup() {
  size(400, 400);
  p=new Paddle(10, 20, 20, 100);
  b=new Ball(100, 100, 40, 40);
}

void draw() {
  background(0);
  p.run();
  b.run();
  if (up) {
    p.movePaddleUp();
  } 
  if (down) {
    p.movePaddleDown();
  }
  checkCollision();
}

void checkCollision() { 
  if (b.getX()<b.getW()-10+p.getW()&&b.getY()<p.getY()+p.getH()&&b.getY()>p.getY()) {
    b.getSpeedX();
    b.getSpeedY();
  }
}

void keyPressed() {
  if (keyCode==UP) {
    up=true;
  }
  if (keyCode==DOWN) {
    down=true;
  }
}

void keyReleased() {
  if (keyCode==UP) {
    up=false;
  }
  if (keyCode==DOWN) {
    down=false;
  }
}
