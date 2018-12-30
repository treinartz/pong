import java.util.*;
Scanner scan;
int [][] mountains;
int count=0;
int numRows=0;
int numCols=0;
String m="";
String s="";
int lowest=1824;
float ratio=5.75;
int fillVal;
int [][]newMountains;
int x=0;
int y=0;
int forward;
int up;
int down;
int current;
int f;
int u;
int d;
int eye;
int jay;
int currenti=15;
int currentj=0;


Queue<Integer> myQueue=new LinkedList<Integer>();

void setup() {
  size(800, 800);
  mountains=new int[30][30];
  newMountains=new int[30][30];
  try {
    scan = new Scanner(new File("/home/thomas/sketchbook/mountainPaths/colo30x30.dat"));
    //scan = new Scanner(new File("/home/thomas/sketchbook/mountainPaths/testMountains.dat"));
    //scan = new Scanner(new File("/home/thomas/sketchbook/mountainPaths/small.dat"));
  }
  catch (Exception e) {
    e.printStackTrace();
  }

  for (int i=0; i<mountains.length; i++) {
    for (int j=0; j<mountains[0].length; j++) {
      mountains[i][j]+=scan.nextInt();
    }
  }
  //print(maxElement());
  //printQueue();
  //printCols();
  getFills();
  //print(getAverage());
  makeMap();
  getSmallestEl();
  makePath();
}
void draw() {
  // background(0);
}
void makeMap() {
  int x=0;
  int y=0;
  for (int i=0; i<mountains.length; i++) {
    for (int j=0; j<mountains[0].length; j++) {
      int num=newMountains[i][j];
      //noStroke();
      fill(num, num, num);
      rect(x, y, 20, 20);
      x=x+20;
    }
    x=0;
    y=y+20;
  }
}
int [][] getFills() {
  for (int i=0; i<mountains.length; i++) {
    for (int j=0; j<mountains[0].length; j++) {
      fillVal=mountains[i][j];
      float transpose=(fillVal-lowest)/ratio;
      //println(transpose);
      newMountains[i][j]=(int)transpose;
    }
  }
  return newMountains;
}

void getSmallestEl() {
  int current=mountains[15][0];
  //myQueue.add(current);
  while (currenti<mountains.length-1&&currentj<mountains[0].length-1&&currenti>=0&&currentj<mountains[0].length-1) {
    forward=mountains[currenti][currentj+1];
    up=mountains[currenti-1][currentj+1];
    down=mountains[currenti+1][currentj+1];

    f=Math.abs(current-forward);
    u=Math.abs(current-up);
    d=Math.abs(current-down);
    if (f<u&&f<d) {
      //forward
      current=mountains[currenti][currentj+1];
      myQueue.add(forward);
      currentj++;
    } else if (d<f&&d<u) {
      //down
      current=mountains[currenti+1][currentj+1];
      myQueue.add(down);
      currentj++;
      currenti++;
    } else if (u<f&&u<d) {
      //up
      current=mountains[currenti-1][currentj+1];
      myQueue.add(up);
      currenti--;
      currentj++;
    }
  }
}
void makePath() {

  int currentRow=15;
  int currentCol=0;

  int rectj=currentRow*20;
  int recti=currentCol;

  fill(255, 0, 0);
  rect(recti, rectj, 20, 20);

  //rect(200, 200, 20, 20);
  int c=0;
  while (currentRow<mountains.length-1&&currentCol<mountains[0].length-1&&currentCol>-1&&currentRow>-1&&!myQueue.isEmpty()) {
    //while(c<3){
    c++;
    int findPath=myQueue.remove();
    //forward
    println(findPath);
    //println("mtnforward" + mountains[currentRow][currentCol+1]);
    //println("mtndown" + mountains[currentRow+1][currentCol+1]);

    if (findPath==mountains[currentRow][currentCol+1]) {
      println("mtnforward" + mountains[currentRow][currentCol+1]);
      fill(255, 0, 0);//red
      // print(recti);

      currentCol=currentCol+1;
      recti=currentCol;
      rectj=currentRow;
      rect(recti*20, rectj*20, 20, 20);

      //down
    } else if (findPath==mountains[currentRow+1][currentCol+1]) {
      println("mtndown" + mountains[currentRow+1][currentCol+1]);
      fill(0, 255, 0);//green

      currentCol=currentCol+1;
      currentRow=currentRow+1;
      recti=currentCol;
      rectj=currentRow;
      rect((recti)*20, (rectj)*20, 20, 20);
      //print(rectj);

      //up
    } else if (findPath==mountains[currentRow-1][currentCol+1]) {
      println("mtnup" + mountains[currentRow-1][currentCol+1]);
      fill(255, 255, 0);///yellow

      currentRow=currentRow-1;
      currentCol=currentCol+1;
      recti=currentCol;
      rectj=currentRow;
      rect((recti)*20, (rectj*20), 20, 20);
      
    } else {
      println("nothin");
    }
  }
}





















void print() {
  for (int i=0; i<29; i++) {
    for (int j=0; j<29; j++) {
      m+= newMountains[i][j]+" ";
    }
    m+="\n";
  }
  print("PRINTING:\n");
  //println(m);
}

void printQueue() {
  int count=0;
  for (Integer i : myQueue) {
    print(i+ " ");
    //count++;
  }
  //print(count);
}


void printRows() {
  String s="";
  for (int i=0; i<mountains.length; i++) {
    for (int j=0; j<mountains[0].length; j++) {
      s+=mountains[1][j]+ " ";
    }
    s+="\n";
  }
  //print(s);
}

void printCols() {
  String s="";
  for (int i=0; i<mountains.length; i++) {
    for (int j=0; j<mountains[0].length; j++) {
      s+=mountains[j][3];
    }
    s+="\n";
  }
  //println(s);
}






















int maxElement() {
  int max=0;
  for (int i=0; i<29; i++) {
    for (int j=0; j<29; j++) {
      if (mountains[i][j]>max) {
        max=mountains[i][j];
      }
    }
  }
  return max;
}

int minElement() {
  int min=4000;
  for (int i=0; i<29; i++) {
    for (int j=0; j<29; j++) {
      if (mountains[i][j]<min) {
        min=mountains[i][j];
      }
    }
  }
  return min;
}

int getAverage() {
  int average=0;
  int count=0;
  for (int i=0; i<29; i++) {
    for (int j=0; j<29; j++) {
      count+=mountains[i][j];
    }
  }
  average=count/30;
  return average;
}