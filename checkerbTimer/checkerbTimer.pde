int count;
int sizeOfSquare;
int r1;
int g1;
int b1;

int r;
int g;
int b;

//works like the runner...always start with size()
void setup() {
  size(800, 800);
  //fullScreen();
  count=0;
  sizeOfSquare=50;
  r1=255;
  g1=255;
  b1=255;

  r=255;
  g=255;
  b=255;
}

//draws continuously for animation, interaction, etc
void draw() {
  makeRects();
}

void makeRects() {
 //row1
  int count=0;
  for (int y=0; y<=height; y+=sizeOfSquare) {
    for (int x=0; x<=width; x+=sizeOfSquare) {
    if (count%2==0) {
      fill(r1, g1, b1);
    } else {
      fill(r, g, b);
    }
    count++;
    rect(x, y, sizeOfSquare, sizeOfSquare);
  }
  }
}
void mousePressed() {
  if (count%2==0) {
    r1=(int)(Math.random()*255);
    g1=(int)(Math.random()*255);
    b1=(int)(Math.random()*255);
  } else {
    r=(int)(Math.random()*255);
    g=(int)(Math.random()*255);
    b=(int)(Math.random()*255);
  }
  count++;
}
