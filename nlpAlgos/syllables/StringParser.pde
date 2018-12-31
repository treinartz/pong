import java.util.List;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
public class StringParser {
  String vowels = "aeiouy";
  String []sArray;
  String fresh[];
  String str;

  public StringParser(String s) {
    str=s;
    sArray=s.split("\\,.!? ");
    fresh=s.split("[a-zA-Z]+");
  }
  public StringParser(String [] s) {
    sArray=s;
  }
  //protected List<String> getTokens(String pattern) {
  //  ArrayList<String> tokens = new ArrayList<String>();
  //  Pattern tokSplitter = Pattern.compile(pattern);
  //  Matcher m = tokSplitter.matcher(text);

  //  while (m.find()) {
  //    tokens.add(m.group());
  //  }

  //  return tokens;
  //}
  //public int getNumSyllables()
  //{
  //List<String> tokens = getTokens("[a-zA-Z]+");
  //  int totalSyllables = 0;
  //  for (String word : tokens){
  //    totalSyllables += countSyllables(word);
  //  }
  //  return totalSyllables;
  
  //}
  
  

  public float countWords() {
    float count = 0;
    for (int i = 0; i < fresh.length; i++) {
      count ++;
    }
    return count;
  }
  public float countVowels() {
    float count = 0;
    for ( String c : fresh) {
      for (int i = 0; i < c.length(); i++ ) {
        if ( c.charAt(i) == 'a' || c.charAt(i) == 'e' || c.charAt(i) == 'i' || c.charAt(i) == 'o' || c.charAt(i) == 'u' || c.charAt(i) == 'y') {
          count ++;
        }
      }
    }
    return count;
  }

  private int countSyllables() {
    int count = 0;
    boolean newSyll = true;

    for (String s : sArray) {
      char[] wordArray = s.toCharArray();
      for (int i = 0; i < wordArray.length; i++) {
        if (i == wordArray.length-1 && wordArray[i] == 'e' && newSyll && count > 0) {
          count--;
        } 

        if (newSyll && vowels.indexOf(wordArray[i]) >= 0) {
          newSyll = false;
          count++;
        } else if (vowels.indexOf(wordArray[i]) < 0) {
          newSyll = true;
        }
      }
    }
    return count;
  }

  public float countSentences() {
    float count = 0;
    for (int i = 0; i < fresh.length; i++) {
      if (fresh[i].endsWith(".")) {
        count++;
      }
    }
    return count;
  }
  public float readEase() {
    return 206.835 - (1.015 * ((float)countWords() / (float)countSentences())) - (84.6 * ((float)countSyllables() / (float)countWords()));
  }
  public float gradeLevel() {
    return ((.39 * ((float)countWords() / (float)countSentences())) + (11.8 * ((float)countSyllables() / (float)countWords()))) - 15.59;
  }
}
