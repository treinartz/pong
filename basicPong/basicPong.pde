
Paddle p;
Ball b;
boolean gameOn=true;
int count;


void setup() {
  size(400, 400);
  p=new Paddle(10, 20, 20, 200);
  b=new Ball(100, 100, 40, 40);
  println(b.getX());
  println(b.getH());
  println(p.getX());
  println(p.getH());
}


void draw() {
  background(0);
  p.run();
  b.run();
  checkCollision();
}

void keyPressed() {
  p.gameOn();
}

boolean checkCollision(){ 
  
 //println(p.getY()+p.getH());
  if(b.getX()<b.getW()-10+p.getW()&&b.getY()<p.getY()+p.getH()&&b.getY()>p.getY()){
    
    //prevents left paddle from sticking
  //if (p.getY()>=p.getH()) {
  //  p.getY()=p.getY()-2;
  //}
  //if (lpY+pSize<=pU) {
  //  lpY+=computerSpeed;
  //}
   println("hey"); 
   b.getSpeedX();
   b.getSpeedY();
   return true;
  }
  return false; 
}
