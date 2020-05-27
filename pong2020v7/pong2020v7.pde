
Ball ball;
Paddle paddle;
Game g;
boolean on=false;
float pychange=8;//essentially speed
float px=10;
float py=10;
float pw=20;
float ph=100;

void setup() {
    size(300, 300);
    g=new Game(new Ball(width/2, height/2, 30), paddle=new Paddle(px, py, pw, ph));
}

void draw() {
    background(0);
    g.run();
}

void keyPressed() {
    on=true;
}

void keyReleased() {
    on=false;
}
