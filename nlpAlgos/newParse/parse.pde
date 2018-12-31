String[] lines;
PImage lib;
StringParser sp;
/*
  problem: can't use a local variable in another class, but you also can't import a file without importing it into a 
 class.
   solution
     - make those variables global to the class you need them in
     - make a method under default method that takes a string, then that'll allow you to
     - do all the calculations, the switching from sentence array to word array in the class that needs them
     - import the file in setup, then make a new instance os StringParser sending in a string.

*/

void setup() {
  size(1139, 594);

  lines=loadStrings("paper.txt");
  String s=join(lines, " ");
  sp=new StringParser(s);
  println(s);


  lib=loadImage("background.png");
  background(lib);
  textSize(50);
  fill(255);
  float w=textWidth("Click on a glowing book to find its \nreading level and difficulty");
  text("Click on a glowing book to find its \nreading level and difficulty", 170, 460);
  parseIt();
}
void draw() {
  parseIt();
}
void parseIt() {

  println("words: "+sp.countWords());
  println("vowels: "+sp.countVowels());
  println("exceptions: "+sp.exceptions());
  println("syllables: "+sp.countSyllables());
  println("sentences: "+sp.countSentences());
  println("Flesch reading ease: "+sp.ease());
  println("Flesch reading level: "+sp.level());
}
