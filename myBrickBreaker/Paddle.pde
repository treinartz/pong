class Paddle {

  float x=75;
  float y;
  int w=150;
  int h=20;
  float targetX;
  float targetX2;
  float xSpeed=.2;
  float easing = 0.05;

  Paddle(float x, float y) {
    this.x=x;
    this.y=y;
    targetX = width + 75 - w;
    targetX2 = w-75;
  }

  float getLeftX() {
    float dx = targetX2 - x;
    x -= dx *- easing;
    return x;
  }
  float getRightX() {
    float dx = targetX - x;
    x += dx * easing;
    return x;
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
  
  int getW(){
    return w;
  }
  
  int getH(){
    return h;
  }

  void display() {
    fill(0, 255, 255);
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
