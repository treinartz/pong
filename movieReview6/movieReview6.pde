import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Collections;

int count4=0;
String s="";
String word="This word";
boolean test=false;
boolean mostFreq=false;
String result="stats";
int count;
double totalScore;
Scanner reviewScanner;
MovieList myList=new MovieList();

void setup() {
  size(1400, 200);
  try {
    reviewScanner = new Scanner(new File("Desktop/movieReview6/movieReviews.txt"));
  }
  catch(Exception e) {
    println(e);
  }
}

void draw() {
  background(0);
  if (test==true) {
    myList.checkFile();
  } else if (test==false) {
    fill(100);
    rect(250, 100, 100, 25);
    fill(255);
    textSize(20);
    text("Enter a word and press right arrow", 10, 60);
    text(s, 255, 120);
    text(result, 10, 30);
    result=word+" appears "+count + " times with an average score of "+totalScore;
    myList.makeViz();

    if (mostFreq==true) {
      fill(255, 0, 0);
      textSize(15);
      text(myList.getMostFrequentRating(), 20, 120);
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      word=s;
      test=true;
      s="";
    }
  }
}
void keyTyped() {
  s+=key;
  print(s);
}

void mousePressed() {
  if (mostFreq==true) {
    mostFreq=false;
  } else if (mostFreq==false) {
    mostFreq=true;
  }
}
