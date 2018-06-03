class Paddle {
  float x;
  float y;
  float w;
  float h;
  int count;
  float velocity;
  float ySpeed=5;

  Paddle(float x, float y, float w, float h) {
    this.x=x;
    this.y=y;
    this.h=h;
    this.w=w;
  }

  void run() {
    display();
    limitPaddle();
  }
  void movePaddleUp() {
    y-=ySpeed;
  }
  void movePaddleDown() {
    y+=ySpeed;
  }
  void limitPaddle(){
    if(y-h+100<0){
      y+=ySpeed;
    }
    if(y+h>400){
     y-=ySpeed; 
    }
  }
  void display() {
    fill(255, 0, 0);
    //rectMode(CENTER);
    rect(x, y, w, h);
  }
  float getX() {
    return x;
  }
  float getY() {
    return y;
  }
  float getW() {
    return w;
  }
  float getH() {
    return h;
  }
}
