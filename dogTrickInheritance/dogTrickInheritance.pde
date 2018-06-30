boolean on=false;
Dog d;
SpinDog sd;
BigDog bd;
JumpDog jd;
int savedTime;
int totalTime = 2000;

//jump, speak, spin, change color
//need dog stands and outside background
//arraylist
//speak
//roll on a ball
//put timer in for TV
float startTime;

void setup() {
  size(800, 600);
  d=new Dog();
  sd=new SpinDog();
  bd=new BigDog();
  jd=new JumpDog();
  fill(255);
  savedTime = millis();
}

void draw() {
  background(0);

  int passedTime = millis() - savedTime;
  // Has five seconds passed?
  if (passedTime > totalTime) {
    println("5 seconds have passed!");
    if (on==true) {
      on=false;
    } else if (on==false) {
      on=true;
    }
    savedTime = millis(); // Save the current time to restart the timer!
  }
    textSize(20);
    text("Welcome to the Dog Show! Inpsired by Olivia Alberts", 200, 40);

    d.doTricks();
    d.speak();

    sd.doTricks(on);
    sd.buildTable();

    bd.doTricks(on);
    bd.buildTable();

    jd.doTricks(on);
    jd.buildTable();
  }
  void mousePressed() {
    if (on==true) {
      on=false;
    } else if (on==false) {
      on=true;
    }
  }
