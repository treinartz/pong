
import java.util.Scanner;
Graph g=new Graph();

void setup() {
  size(800, 400);
  try {
    Scanner scan=new Scanner(new File("Desktop/graphViz/data/graph.dat"));
    int size=scan.nextInt();
    scan.nextLine();
    for (int i=0; i<size; i++) {
      String s=scan.nextLine();
      g.loadMap(s);
      //println(g);
    }
    //g.makeViz();
  }
  catch(Exception e) {
    println(e);
  }
}
void draw() {
  background(0);
  g.makeViz();
}
