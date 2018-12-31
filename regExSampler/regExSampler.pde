//Regular expressions: 3 ways to combine
//Repetition Concatenation Alternation

import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

Document c;
Document d;

void setup() {
  size(100, 100);

  String text = "Hello    hello?";
  String[] words = text.split(" +");
  ArrayList<String>myList=new ArrayList<String>(Arrays.asList(words));
  println("1. "+myList);//1



  //repetition, ie get one or more spaces
  c=new Document("Hello      hello? ");
  println("2. "+c.getTokens(" +"));//2


  //concatenation, ie two regEx side by side matches when both appear one after the other
  d=new Document("Splittting a string, it's as easy as 1 2 33! Right?");
  println("3. "+d.getTokens("it"));//3
  //+ means "one or more"
  println("4. "+d.getTokens("it+"));//4
  //Use parens to group regEx's if you are not sure of grouping
  println("5. "+d.getTokens("i(t+)"));//5
  //* means zero or more
  println("6. "+d.getTokens("it*"));//6


  //alternation: | means OR
  //d=new Document("Splittting a string, it's as easy as 1 2 33! Right?");
  println("7. "+d.getTokens("it|st"));//7





  //character classes
  //[ ] mean match "anything in the set"
  // d=new Document("Splittting a string, it's as easy as 1 2 33! Right?");
  println("8. "+d.getTokens("[s]"));//8
  //indicates a range  (any character between 1 and 3)
  println("9. "+d.getTokens("[1-3]"));//9
  //indicates a range  (any character between a and f)
  println("10. "+d.getTokens("[a-f]"));//10




  //negation: excluding a character 
  //^ indicates NOT any characters in this set
  // d=new Document("Splittting a string, it's as easy as 1 2 33! Right?");
  println("11. "+d.getTokens("[^a-z123 ]"));//11
}
 
class Document {
  private String text;

  Document(String text) {
    this.text = text;
  }

  List<String> getTokens(String pattern) {
    ArrayList<String> tokens = new ArrayList<String>();
    Pattern tokSplitter = Pattern.compile(pattern);
    Matcher m = tokSplitter.matcher(text);
    while (m.find()) {
      tokens.add(m.group());
    }
    return tokens;
  }
}




//1. [Hello, hello?]
//2. [   ,  ]
//3. [it, it]
//4. [itt, it]
//5. [itt, it]
//6. [itt, i, i, it, i]
//7. [it, st, it]
//8. [1, 2, 3, 3]
//9. [1, 2, 3, 3]
//10. [a, a, e, a, a]
//11. [S, ,, ', !, R, ?]
