import java.util.Scanner;
import java.io.IOException;
import java.io.FileNotFoundException;
Scanner scan;
void setup(){
  size(800, 400);  
  try{
    scan = new Scanner(new File("Desktop/jaccardLab/jaccard/data/mathset.dat"));
    while(scan.hasNext()){
      String one = scan.nextLine();
      String two = scan.nextLine();
      MathSet mSet = new MathSet(one,two);
      System.out.println(mSet);
      System.out.println("union - " + mSet.union());
      System.out.println("intersection - " + mSet.intersection());
      System.out.println("difference A-B - " + mSet.differenceAMinusB());  
      System.out.println("difference B-A - " + mSet.differenceBMinusA());        
      System.out.println("symmetric difference " + mSet.symmetricDifference()+"\n\n");
    }
  }catch(Exception e){
    println(e);
    e.printStackTrace();
  }
  
}

void draw(){
  
}
