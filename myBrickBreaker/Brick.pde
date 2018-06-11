class Brick {
  int x;
  int y;
  int w;
  int h;

  Brick(int x, int y, int w, int h) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
  }

  int getBrickx() {
    return x;
  }
  int getBricky() {
    return y;
  }
  int getBrickw() {
    return w;
  }
  int getBrickh() {
    return h;
  }
  void display() {
    fill (255, 0, 0);
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
