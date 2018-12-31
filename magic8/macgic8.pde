String [] answers=new String[5];
String q="Welcome to magic 8 ball: Enter a question about life ";
int choice;
int state=0;
String typed="";
String lastInput="";
void setup() {
  size(800, 400);
  answers[0]="no not yet";
  answers[1]="time will tell";
  answers[2]="this is your lucky day";
  answers[3]="Why do you ask?";
  answers[4]="I guess it's no longer a secret.";
  choice=(int)(Math.random()*5);
}

void draw() {
  background(0);
  if (state==0) {
    scene0();
  } else if (state==1) {
    scene1();
  }
  
  fill(255);
  textSize(20);
  text(typed, width/2, height/2+30, width, 30);
}

void keyTyped() {
  typed+=key;
  if (keyPressed&&key==ENTER) {
    choice=(int)(Math.random()*5);
    state=1;
    typed="";
  } else  if (key==BACKSPACE) {
    state=0;
    typed="";
  } else if (keyPressed) {
    state=0;
    change();
  } else {
    typed+=key;
  }
}
void scene0() {
  text(q, width/2-q.length()*5, height/2);
  fill(255, 0, 0);
  rect(width/2, height/2+30, 300, 25);
}
void scene1() {
  text(answers[choice], (q.length()+width/2)/2, height/2);
   fill(0);
  rect(width/2, height/2+30, 300, 25);
}
void change() {
  if (!q.equals("")) {
    q="";
  }
  if (q.equals("")) {
    q="Welcome to magic 8 ball: Enter a question about life ";
  }
}