//https://www.coursera.org/learn/data-structures-optimizing-performance/lecture/g0J9L/project-week-3-project-walk-through

import java.io.IOException;
import java.io.File;
import java.io.FileNotFoundException;
import java.lang.reflect.InvocationTargetException;
import java.util.Scanner;
import static java.lang.System.*;
BasicDocument test=new BasicDocument();;
String fresh[];
StringParser p; 
PFont f;
float theta;
void setup() {
  //size(800, 400);
  f = createFont("Arial", 40);

  //String[] line = loadStrings("accStory.dat");
  //String para = join(line, " ");
  //fresh = splitTokens(para, ",?!: ;/\"");
  //printArray(fresh);
  //p= new StringParser(fresh);

  //println("Number of Words; " +p.countWords());
  //println("\nNumber of Vowels: " +p.countVowels()); 
  //println("\nNumber of Syllables: " + p.countSyllables());
  //println("\nNumber of Sentences: " + p.countSentences()); 
  //println("\nReading Ease Value: " + p.readEase());
  //println("\nGrade Level: " + p.gradeLevel());
  checkDoc();
}


void draw() {
  background(0);
  fill(255);
  textSize(30);

  textAlign(CENTER);
  pushMatrix();
  translate(width/2, height/2); 
  rotate(theta);                
  //text("ReadingEase "+ p.readEase(), 0, 0);
  popMatrix();
  theta += 0.02;
}


void checkDoc() {
  test.testCase(new StringParser("This is a test.  How many???  "
    + "Senteeeeeeeeeences are here... there should be 5!  Right?"), 16, 13, 5);
  test.testCase(new StringParser(""), 0, 0, 0);
  test.testCase(new StringParser("sentence, with, lots, of, commas.!  "
    + "(And some poaren)).  The output is: 7.5."), 15, 11, 4);
  test.testCase(new StringParser("many???  Senteeeeeeeeeences are"), 6, 3, 2);
  test. testCase(new StringParser("Here is a series of test sentences. Your program should "
    + "find 3 sentences, 33 words, and 49 syllables. Not every word will have "
    + "the correct amount of syllables (example, for example), "
    + "but most of them will."), 49, 33, 3);
  test.testCase(new StringParser("Segue"), 2, 1, 1);
  test.testCase(new StringParser("Sentence"), 2, 1, 1);
  test.testCase(new StringParser("Sentences?!"), 3, 1, 1);
  test.testCase(new StringParser("Lorem ipsum dolor sit amet, qui ex choro quodsi moderatius, nam dolores explicari forensibus ad."), 
    32, 15, 1);
}
