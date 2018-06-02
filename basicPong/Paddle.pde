class Paddle {
  float x;
  float y;
  float w;
  float h;
  boolean gameOn=true;
  int count;

  Paddle(float x, float y, float w, float h) {
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
    if (key==CODED) {
      if (keyCode==UP) {
        y-=5;
      } else if (keyCode==DOWN) {
        y+=5;
      } else {
        //println(count++);
      }
    }
  }
  
  void gameOn(){
    if(gameOn==false){
      gameOn=true;
    }else if(gameOn==true){
     gameOn=false; 
    }

  }
  void display() {
    fill(255, 0, 0);
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
