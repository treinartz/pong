//model/view/controller...this is the controller

CollegeView cv;
void setup() {
  size(1300, 600);
  String [] s=loadStrings("college.csv");
  cv=new CollegeView(s);
}

void draw() {
  background(0);
  smooth();
  cv.display();
}

//do same for a map
//write a regular sort method
//implement comparator
//buttons that superimpose things
//automate
//button that sorts by ACT score