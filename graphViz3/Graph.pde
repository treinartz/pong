import java.util.Map;
import java.util.HashMap;
import java.util.Scanner;
import java.util.Arrays;

public class Graph {
  String str;
  HashMap<Integer, ArrayList<Integer>> map;
  public Graph() {
    map=new HashMap<Integer, ArrayList<Integer>>();
  }

  void loadMap(String s) {
    String [] str=s.split(" ");
    for (int i=0; i<str.length-1; i++) {
      int first=Integer.parseInt(str[0]);
      if (map.get(first)==null) {
        map.put(first, new ArrayList<Integer>());
      }
      map.get(first).add(Integer.parseInt(str[i+1]));
    }
  }

  void makeViz() {
    int x=0;
    int y=0;
    int size=0;

    for (int m : map.keySet()) {
      size=map.get(m).size();
      x=map.get(m).get(0);
      y=map.get(m).get(1);
      fill(255);
      stroke(255);
      ellipse(x, y, 20, 20);
      for (int i=2; i<size; i++) {
        int nextVertex=map.get(m).get(i);
        line(x, y, map.get(nextVertex).get(0), map.get(nextVertex).get(1));
      }
    }
  }
  String toString() {
    String output="";
    for (int k : map.keySet()) {
      output += " " + k + " - " + map.get(k) + "\n";
    }
    return output;
  }
}
//next: number each vertex, put on mousePressed and timer, add more
