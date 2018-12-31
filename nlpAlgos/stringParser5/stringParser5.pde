import java.io.FileInputStream;
import java.io.InputStreamReader;
int savedTime;
int totalTime = 5000;

EfficientDocument ec;
BasicDocument bc;
void setup() {
  ec=new EfficientDocument();
  bc=new BasicDocument();
  String [] book=loadStrings("small.txt");
  //String [] book=loadStrings("warandpeace.txt");
  String wholeBook=join(book, " ");
  long t= System.nanoTime();

  //checkEfficient();
  //checkBasic();

  int trials = 100;
  int increment = 20000;
  int numSteps = 20;
  int start = 50000;

  String output="size\t\tbasicdocument\t\tefficient document\n";

  println(output);
  for (int numToCheck = start; numToCheck < numSteps*increment + start; numToCheck += increment) {
    output=numToCheck+"\t\t";
    for (int i=0; i<trials; i++) {
      BasicDocument b=new BasicDocument(wholeBook);
      //EfficientDocument b1=new EfficientDocument(wholeBook);
      b.getFleschScore();
    }

    for (int i=0; i<trials; i++) {
      BasicDocument b=new BasicDocument(wholeBook);
      //EfficientDocument b1=new EfficientDocument(wholeBook);
      b.getFleschScore();
    }
    print(output);
    println(checkTime()+"\t");
  }
}
public static String getStringFromFile(String filename, int numChars) {
  StringBuffer s = new StringBuffer();
  try {
    FileInputStream inputFile= new FileInputStream(filename);
    InputStreamReader inputStream = new InputStreamReader(inputFile);
    BufferedReader bis = new BufferedReader(inputStream);
    int val;
    int count = 0;
    while ((val = bis.read()) != -1 && count < numChars) {
      s.append((char)val);
      count++;
    }
    if (count < numChars) {
      System.out.println("Warning: End of file reached at " + count + " characters.");
    }
    bis.close();
  }
  catch(Exception e) {
    System.out.println(e);
    System.exit(0);
  }
  return s.toString();
}

int checkTime() {
  int passedTime=millis()-savedTime;
  return passedTime;
}
void checkBasic() {
  /* Each of the test cases below uses the method testCase.  The first 
   * argument to testCase is a Document object, created with the string shown.
   * The next three arguments are the number of syllables, words and sentences 
   * in the string, respectively.  You can use these examples to help clarify 
   * your understanding of how to count syllables, words, and sentences.
   */
  bc.testCase(new BasicDocument("This is a test.  How many???  "
    + "Senteeeeeeeeeences are here... there should be 5!  Right?"), 
    16, 13, 5);
  bc.testCase(new BasicDocument(""), 0, 0, 0);
  bc.testCase(new BasicDocument("sentence, with, lots, of, commas.!  "
    + "(And some poaren)).  The output is: 7.5."), 15, 11, 4);
  bc.testCase(new BasicDocument("many???  Senteeeeeeeeeences are"), 6, 3, 2);
  bc.testCase(new BasicDocument("Here is a series of test sentences. Your program should "
    + "find 3 sentences, 33 words, and 49 syllables. Not every word will have "
    + "the correct amount of syllables (example, for example), "
    + "but most of them will."), 49, 33, 3);
  bc.testCase(new BasicDocument("Segue"), 2, 1, 1);
  bc.testCase(new BasicDocument("Sentence"), 2, 1, 1);
  bc.testCase(new BasicDocument("Sentences?!"), 3, 1, 1);
  bc.testCase(new BasicDocument("Lorem ipsum dolor sit amet, qui ex choro quodsi moderatius, nam dolores explicari forensibus ad."), 
    32, 15, 1);
}



void checkEfficient() {
  ec.testCase(new EfficientDocument("This is a test.  How many???  "
    + "Senteeeeeeeeeences are here... there should be 5!  Right?"), 
    16, 13, 5);
  ec.testCase(new EfficientDocument(""), 0, 0, 0);
  ec.testCase(new EfficientDocument("sentence, with, lots, of, commas.!  "
    + "(And some poaren)).  The output is: 7.5."), 15, 11, 4);
  ec.testCase(new EfficientDocument("many???  Senteeeeeeeeeences are"), 6, 3, 2); 
  ec.testCase(new EfficientDocument("Here is a series of test sentences. Your program should "
    + "find 3 sentences, 33 words, and 49 syllables. Not every word will have "
    + "the correct amount of syllables (example, for example), "
    + "but most of them will."), 49, 33, 3);
  ec.testCase(new EfficientDocument("Segue"), 2, 1, 1);
  ec.testCase(new EfficientDocument("Sentence"), 2, 1, 1);
  ec.testCase(new EfficientDocument("Sentences?!"), 3, 1, 1);
  ec.testCase(new EfficientDocument("Lorem ipsum dolor sit amet, qui ex choro quodsi moderatius, nam dolores explicari forensibus ad."), 
    32, 15, 1);
}

//words 15
//vowels 29
//syllables 19
//sentences 2
