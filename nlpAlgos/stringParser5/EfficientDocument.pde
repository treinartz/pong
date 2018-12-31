import java.util.List;

class EfficientDocument extends Document {

  private int numWords; 
  private int numSentences; 
  private int numSyllables;

  public EfficientDocument() {
    super();
  }
  public EfficientDocument(String text) {
    super(text);
    processText();
  }
  private boolean isWord(String tok) {
    return (tok.indexOf("!") <0 && tok.indexOf(".") <0 && tok.indexOf("?")<0);
  }

  private void processText() {
    int countSyll=0;
    int countSentences=0;
    int countWords=0;
    List<String> tokens = getTokens("[!?.]+|[a-zA-Z]+");
    for (String t : tokens) {
      if (isWord(t)) {
        countSyll+=countSyllables(t);
        countWords++;
      } else if (!isWord(t)&&t.equals(t )){
        countSentences++;
      }
    }
    numWords=countWords;
    numSyllables=countSyll;
    numSentences=countSentences;
  }
  public int getNumSentences() {
    return numSentences;
  }
  public int getNumWords() {
    return numWords;
  }
  public int getNumSyllables() {
    return numSyllables;
  }
}
