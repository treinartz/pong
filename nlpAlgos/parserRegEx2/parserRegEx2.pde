import java.util.Arrays;

String vowels="aeiouyAEIOUY";
char[] cArray = vowels.toCharArray();

String one="Hello, I am nine syllables long. And it is great!";
String newOne=one.toLowerCase();
String two="Hey, I'm a senior, and I, for one, am ready to graduate today! See you.".toLowerCase();
String [] words=one.split("[\\,!\\s.]+");
String [] sentence=one.split("[\\!.]");//or \\.\\s|\\!
char[] cArray2 = one.toCharArray();

void setup() {
  StringParser sp=new StringParser();
  //println("words " + sp.countWords());
  //println("vowels " + sp.countVowels());
  //println("syllables " + sp.countSyllablesHelper());
  //println("syllables " + sp.countSyllables(newOne));
  //println("sentences " + sp.countSentences());

  //String str = "Hello I am nine syllables long. And it is great!";
  String str = "Hey, I'm a senior, and I, for one, am ready to graduate today! See you.".toLowerCase();
  String[] strArr = str.split(" ");

  //WordCounter
  println(strArr.length);

  //VowelCounter
  String[] vowelCount = str.split("[aeiouyAEIOUY]");
  if (vowelCount[1].equals(""))
    println(vowelCount.length - 1);
  else
    println(vowelCount.length);

  //SyllableCounter
  String[] eAtEnd = str.split("[e][\\s||//,]");
  String[] vCountArr = str.split("[aeiouyAEIOUY]+");
  println(vCountArr.length - eAtEnd.length);
  
  println("eAtEnd "+eAtEnd.length);
  println(Arrays.toString(eAtEnd));
  println(eAtEnd[0]);
  println(eAtEnd[1]);
  println(eAtEnd[2]);
  println(eAtEnd[3]);
  
  
  println();
  println("vowelCountArr "+vCountArr.length);
  println(Arrays.toString(vCountArr));
}

public class StringParser {

  public StringParser() {
  }

  public int countWords() {
    return words.length;
  }

  public int countVowels() {
    int count = 0;
    //for (char c : cArray2) {
    //  if (c == 'a' || c == 'e' || c == 'i' ||c == 'o' || c == 'u' || c == 'y') {
    //    count++;
    //  }
    //}

    for (int i=0; i<words.length; i++) {
      if (one.indexOf(vowels)>0) {
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

  int countSyllables2(String s) {
    int count = 0;
    String[] words = s.split("[aeiouy]+[^$e(,.!?)]");
    for (int i = 0; i<words.length; i++) {
      count++;
      println(words[i]);
    }
    return count-1;
  }

  public int countSyllablesHelper() {
    String text= one.toLowerCase();
    int countSyll=0;
    String [] words = text.split("[\\,!\\s.]+");
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
//syllable
//a unit of pronunciation having one vowel sound, 
//with or without surrounding consonants, 
//forming the whole or a part of a word; 
//e.g., there are two syllables in water and three in inferno.

//one
//words 10
//vowels 15
//syllables 13
//sentences 2


//two
//words 15
//vowels 29
//syllables 19
//sentences 2
