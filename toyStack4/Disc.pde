class Disc {
  int x;
  int y;
  int w;
  int h;
  int num;
  int countQ;
  int countStack;

  Disc() {
    
  }
  
  Disc(int x, int y, int w, int h, int n) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.num=n;
  }

  void showStack() {
    pushMatrix();
    translate(400, 0);
    int d=DiscNum.discNum+=50;
    fill(0, 0, 255);
    rect(x, d, w*50, h);
    fill(255);
    textSize(20);
    text(""+num, x+30, d+20);
    popMatrix();
  }

  void showQueue() {
    pushMatrix();
    translate(10,10);
    int d=DiscNum.queueNum+=50;
    int q=DiscNum.countQ+=1;
    fill(255, 0, 0);
    rect(x, d, w*50, h);
    fill(255);
    textSize(20);
    text(""+num, x+30, d+20);
    popMatrix();
  }
}
