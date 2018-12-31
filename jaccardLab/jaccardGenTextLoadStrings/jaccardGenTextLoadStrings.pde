import java.util.Scanner;
import java.io.IOException;
import java.io.FileNotFoundException;
void setup() {
  size(800, 400);  
  try {
    String []one = loadStrings("text1.txt");
    String [] two = loadStrings("text3.txt");
    String oneJoin=join(one, " ");
    String twoJoin=join(two, " ");
    
    MathSet mSet = new MathSet(oneJoin, twoJoin);
    System.out.println(mSet);
    System.out.println("union - " + mSet.union());
    System.out.println("intersection - " + mSet.intersection());
    System.out.println("difference A-B - " + mSet.differenceAMinusB());  
    System.out.println("difference B-A - " + mSet.differenceBMinusA());        
    System.out.println("symmetric difference " + mSet.symmetricDifference()+"\n\n");

    System.out.println("jaccard " + mSet.jaccard()+"\n\n");
  
}
catch(Exception e) {
  println(e);
  e.printStackTrace();
}

}

void draw() {
}
