String vowels="aeiouy";
char[] cArray = vowels.toCharArray();

String one="Hello! I am nine syllables long.";
String newOne=one.toLowerCase();
String two="Hey, I'm a senior, and I, for one, am ready to graduate today! See you.".toLowerCase();
String [] words=one.split("[\\,!\\s]+");
String [] sentence=one.split("[\\!.]");
char[] cArray2 = one.toCharArray();

void setup() {
  StringParser sp=new StringParser();
  println("words " + sp.countWords());
  println("vowels " + sp.countVowels());
  println("syllables " + sp.countSyllablesHelper());
  println("sentences " + sp.countSentences());
}

public class StringParser {

  public StringParser() {
  }

  public int countWords() {
    return words.length;
  }

  public int countVowels() {
    int count = 0;
    for (char c : cArray2) {
      if (c == 'a' || c == 'e' || c == 'i' ||c == 'o' || c == 'u' || c == 'y') {
        count++;
      }
    }
    //for (int i=0; i<words.length; i++) {
    //  for (int j=0; j<cArray.length; j++) {
    //    if (words[i].indexOf(vowels.charAt(j))>=0) {
    //      count++;
    //    }
    //  }
    //}
    return count;
  }
  //public int countSyllablesHelper(String [] w) {
  //  int countSyll=0;
  //  for (String s : w) {
  //    countSyll+=countSyllables(s);
  //  }
  //  return countSyll;
  //}
  
  public int countSyllablesHelper() {
    String text= one.toLowerCase();
    int countSyll=0;
    String [] words = text.split("[\\,!\\s]+");
    for (String s : words) {
      countSyll+=countSyllables(s);
    }
    return countSyll;
  }
  private int countSyllables(String word) {
    int numSyll = 0;
    boolean newSyll = true;
    char[] charArray = word.toCharArray();//each word into an array

    for (int i = 0; i < charArray.length; i++) {
      if ((i == charArray.length-1 && charArray[i] == 'e') && (newSyll) && (numSyll > 0)) {
        numSyll--;//for words like the, make, etc.
      } 

      if (newSyll && vowels.indexOf(charArray[i]) >= 0) {//look for vowels
        newSyll = false;
        numSyll++;
      } else if (vowels.indexOf(charArray[i]) < 0) {//if no vowels, count as one syll
        newSyll = true;
      }
    }
    //numSyll2=numSyll;
    return numSyll;
  }
  public int countSentences() {
    return sentence.length;
  }

  public double getFlesch() {
    double fle=0.0;
    fle= 206.835 -(1.015* countWords()/countSentences()) - (84.6 * countSyllablesHelper()/countWords());
    return fle;
  }

  public double gradeLevel() {
    double grade=0.0;
    grade = (.39* countWords()/countSentences()) + (11.8 * countSyllablesHelper()/countWords())-15.59;
    return grade;
  }
}

//one
//words 6
//vowels 9
//syllables 8
//sentences 2


//two
//words 15
//vowels 29
//syllables 19
//sentences 2
