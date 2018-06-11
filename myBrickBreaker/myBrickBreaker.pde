
ArrayList<Brick> myBricks=new ArrayList<Brick>();
int xCoord;
int yCoord;
int bWidth=100;
int bHeight=20;
int yOff=20;
int xOff=70;
int xBrickNum=515;
int yBrickNum=100;
boolean up=true;
int count=0;


Ball b=new Ball(200, 300, 30, 30);
Paddle p;
void setup() {
  size(600, 400);
  p=new Paddle(75, 390);

  for (int i=yOff; i<100; i+=25) {
    for (int j=xOff; j<515; j+=105) {
      myBricks.add(new Brick(j, i, bWidth, bHeight));
    }
  }
}


void draw() {
  background(0);
  show();
  b.move();
  b.display();
  brickCollision();
  paddleCollision();
  p.display();

  if (up) {
    p.getLeftX();
  } else {
    p.getRightX();
  }
}
void brickCollision() {
  for (int j=myBricks.size()-1; j>=0; j--) {
    int x=myBricks.get(j).getBrickx();
    int w=myBricks.get(j).getBrickw();
    int y=myBricks.get(j).getBricky();
    int h=myBricks.get(j).getBrickh();
    if (b.getX()+b.getW()/2>= x-w/2&&b.getX()+b.getW()/2<=x+w/2) {
      if (b.getY()+b.getH()/2< y+15+h) {
        b.getSpeed();
        myBricks.remove(j);
      }
    }
  }
}
void paddleCollision() {
  if (b.getX()+b.getW()/2>= p.getX()-p.getW()/2&&b.getX()+b.getW()/2<= p.getX()+p.getW()/2) { 
    if (b.getY()+b.getH()/2>p.getY()-p.getH()/2) {
       println(count++);
      b.getSpeed();
    }
  }
}

void show() {
  for (int j=0; j<myBricks.size(); j++) {
    myBricks.get(j).display();
  }
}
void keyPressed() {
  if (key==CODED) {
    if (keyCode==LEFT) {
      up=true;
    } else  if (keyCode==RIGHT) {
      up=false;
    }
  }
}
