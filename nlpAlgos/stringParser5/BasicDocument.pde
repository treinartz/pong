import java.util.List;

public class BasicDocument extends Document {


  public BasicDocument() {
    super();
  }


  public BasicDocument(String text) {
    super(text);
  }

  public int getNumWords() {
    //List<String> tokens = getTokens("\\w+");
    List<String> tokens = getTokens("[a-zA-z]+");
    return tokens.size();
  }

  public int getNumSentences() {
    //List<String> tokens = getTokens("[0-9]|\\.+\\s+|\\?+\\s+|\\?+|\\!+\\s+");
    List<String> tokens = getTokens("[^.!?]+");
    return tokens.size();
  }


  public int getNumSyllables() {
    int numSyllables=0;
    List<String> tokens = getTokens("\\w+");
    for (String t : tokens) {
      numSyllables+=countSyllables(t);
    }
    return numSyllables;
  }
}
