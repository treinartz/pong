int currentIndex = 0;
int frameC = 0;
int MAX_NODES = 8;
int[] values;
List list;
List list2=new List();
PFont font;
Node current;
int count=5;

void setup() {
  size(1200, 800);
  smooth();
  fill(255);
  font = createFont("Arial", 10, true);
  textFont(font, 10);
  init();

  list2.add(1);
  list2.add(2);
  list2.add(3);
  list2.add(4);
}
void draw() {
  background(0);
  frameC++;
  int nextValue = -1;
  if (frameC == 30 && currentIndex < MAX_NODES) {
    nextValue = values[currentIndex++];
    frameC = 0;
  }

  if (nextValue > -1) {
    list.add(nextValue);
    //list2.add(count);
    count++;
  }
  fill(255, 0, 0);
  text("Click mouse to refresh.", 200, 20);
  drawNode(list.root);
  printGreen();
}
void printGreen() {
  current = list2.root;
  while (current.getNext()!=null) {
    current.data.position.display2();
    float x=current.data.position.pos.x+100;
    float y = current.data.position.pos.y;

    fill(255);
    textSize(18);
    text(""+current.data.value + "", x, y);
    fill(255, 0, 0);
    float x2=current.getNext().data.position.pos.x;
    float y2 = current.getNext().data.position.pos.y;
    stroke(255);
    line(x, y, x2, y2);
    current=current.getNext();
  }
}
void drawNode(Node node) {
  if (node != null) {
    int xPos = node.data.position.x;
    int yPos = node.data.position.y;
    int xPosition=xPos;
    int yPosition = yPos*15;
    fill(255); 
    ellipse(xPos, yPos*15, 50, 50); 
    fill(255, 0, 0);
    text(""+node.data.value + "", xPosition-10, yPosition+3);
    drawConnector(node.first, xPosition, yPosition);
    drawNode(node.first);
  }
}
void drawConnector(Node node, int x, int y) {
  if (node == null) 
    return;
  int x2=node.data.position.x;
  int y2 = node.data.position.y*15;
  stroke(255);
  line(x, y, x2, y2);
}

int[] getValues() {
  int[] values = new int[MAX_NODES];
  int MAX_VALUE = 500;
  values[0] =  MAX_VALUE / 2;
  for (int i= 1; i < MAX_NODES; i++) {
    values[i] = (int)random(0, MAX_VALUE); 
    //println("Got: " + values[i]);
  }
  return values;
}
void init() {
  list = new List();
  values = getValues();
  currentIndex = 0;
  frameC = 0;
}

void mousePressed() {
  list.add((int)random(0, 10));
  list2.add((int)random(0, 10));
  println("list1 size " +list.size());
  println("list2 size " + list2.size());
}
