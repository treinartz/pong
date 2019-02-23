import java.util.List;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;
import java.util.Iterator;

Disc nextDisc;
int numDiscs=9;
int x=10;
int y=0;
int w;
int h=30;
int n=0;
Queue <Disc>incomingQ=new LinkedList<Disc>();
Queue<Tower>outbound=new LinkedList<Tower>();
Stack<Disc>tower=new Stack<Disc>();
Stack<Disc>temp=new Stack<Disc>();

void setup() {
  size(800, 450);
  background(0);
  loadDisks();
  showQ();
  processDisks();
  printDisks();
}

void loadDisks() {
  for (int i=0; i<numDiscs; i++) {
    w=(int)(Math.random()*5)+1;
    incomingQ.add(new Disc(x, y, w, h, n));
    n++;
  }
}
void showQ() {
  for (Disc d : incomingQ) {
    d.showQueue();
  }
}
void processDisks() {
  while (!incomingQ.isEmpty()) {
    nextDisc=incomingQ.poll();
    if (tower.isEmpty()) {
      tower.push(nextDisc);
    } else if (!tower.isEmpty()) {
      Disc towerDisc1=tower.peek();
      if (nextDisc.w<towerDisc1.w) {
        tower.push(nextDisc);
      } else {
        while (!tower.isEmpty()&&nextDisc.w>tower.peek().w) {
          temp.push(tower.pop());
        }
        tower.push(nextDisc);
        while (!temp.isEmpty()) {
          tower.push(temp.pop());
        }
      }
    }
  }
}

void printDisks() {
  while (!tower.isEmpty()) {
    Disc d=tower.pop();
    d.showStack();
  }
}
