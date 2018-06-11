class Ball {
  float x;
  float y;
  int w;
  int h;
  float xSpeed=2;
  float ySpeed=4;
  float velocity=.001;

  Ball(float x, float y, int w, int h) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
  }

  void move() {
    velocity=xSpeed;
    x+=xSpeed;
    y+=ySpeed;
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
  
  float getSpeed(){
    ySpeed*=-1;
   xSpeed*=(float)(Math.random()*5)-3;
   //velocity*=-.061;
  
    return ySpeed;
  }

  void display() {
    fill(255);
    ellipseMode(CENTER);
    ellipse(x, y, w, h);

    if (x>600-w/2||x<0+w/2) {
      xSpeed*=-1;
    }

    if (y>400-h/2||y<0+h/2) {
      ySpeed*=-1;
    }
    if(ySpeed>height){
       ySpeed*=-1;
    }
  }
}
