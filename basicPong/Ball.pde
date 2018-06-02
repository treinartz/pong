class Ball {

  float x;
  float y;
  float w;
  float h;
  float speedX=2;
  float speedY=3;
  float yVelocity=.05;
  float xVelocity=.06;

  Ball(float x, float y, float w, float h) {
    this.x=x;
    this.y=y;
    this.h=h;
    this.w=w;
  }

  void run() {
    update();
    display();
  }

  void update() {
    if (x>400-w/2||x<0+w/2) {
      speedX*=-1;
      xVelocity*=-.06;
    } 
    if (y>400-w/2||y<0+w/2) {
      speedY*=-1;
    }
    //speedY+=yVelocity;
    speedX+=xVelocity;
    x+=speedX;
    y+=speedY;
   
  }


  void display() {
    fill(255);
    ellipse(x, y, w, h);
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
  
  float getSpeedX(){
    speedX*=-1;
    return speedX;
  }
  float getSpeedY(){
    speedY*=-1;
    return speedY;
  }
}
