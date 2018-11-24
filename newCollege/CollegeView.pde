//this is the view...contains elements for the visualization
import java.util.Collections;
ArrayList <College> myList;
boolean circleOver = false;
boolean on=false;

class CollegeView {
  CollegeView(String [] s) {
    myList=new ArrayList<College>();
    for (int i=0; i<s.length; i++) {
      String [] str=s[i].split(",");
      myList.add(new College(str[0], str[1], str[2]));
    }
    ///sortByEnroll();
    sortByACT();
  }
  void sortByEnroll() {
    Collections.sort(myList);
  }
  
  void sortByACT(){
    Collections.sort(myList, new CollegeComparator());
  }
      
  void display() {
    fill(255, 0, 0);
    ellipse(1200, 100, 100, 100);
    rect(1200, 220, 120, 100);
    fill(255);
    textSize(14);
    text("ACT Scores\n     and\n Enrollment", 1160, 85);
    drawLines();
    overSquare();
    //if(overSquare()){
      //sortByACT();
    //}else{
     // sortByEnroll();
      
    //}
  }
  void drawLines() {
    stroke(255, 0, 0);
    line(100, 100, 100, 550);
    line(100, 550, 1200, 550);///h
    fill(255);
    text("Undergraduate Enrollment", 150, 580);
    text("Average ACT Score", 10, 280);
    drawPoints();
  }

  void drawPoints() {
    for (int i=0; i<myList.size(); i++) {
      fill(255, 0, 0);
      ellipse((i+4)*33, ((float)(Math.pow(myList.get(i).getAverage(), -1))*10000), 20, 20);
      fill(255);
      text(myList.get(i).getAverage()+" ", (i+4)*33, ((float)(Math.pow(myList.get(i).getAverage(), -1))*10000)+25);
      if (overCircle((i+4)*33, ((float)(Math.pow(myList.get(i).getAverage(), -1))*10000), 20)==true) {
        ellipse((i+4)*33, ((float)(Math.pow(myList.get(i).getAverage(), -1))*10000), 30, 30);
        cursor(HAND);
        fill(255);
        text(myList.get(i).getCollege(), (i+4)*33, ((float)(Math.pow(myList.get(i).getAverage(), -1))*10000)+70);
        text(myList.get(i).getEnroll()+" ", (i+4)*33, 420);
        // update((i+4)*33, myList.get(i).getAverage()*11, 20);
      }
    }
  }
  boolean overCircle(float x, float y, int diameter) {
    float disX = x - mouseX;
    float disY = y - mouseY;
    if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
      return true;
    } else {
      return false;
    }
  }
  
   void overSquare() {
    //rect(1200, 220, 200, 100);
    if ((mouseX>1200&&mouseX<1400)&&(mouseY>220&&mouseY<320)) {
      cursor(HAND);
      if(mousePressed){
      sortByACT();
      on=true;
    }
    }else if((on==true&&mousePressed)) {
           
      sortByEnroll();
      on=false;
    }else{
      cursor(ARROW);
    }
    
   // return false;
  }
  void update(int x, float y, int diameter) {
    if ( overCircle(x, y, diameter) ) {
      circleOver = true;
    } else {
      circleOver = false;
    }
  }
}