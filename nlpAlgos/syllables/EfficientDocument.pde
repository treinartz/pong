import java.util.List;

public class EfficientDocument {

  private int numWords;
  private int numSentences;
  private int numSyllables;

  public EfficientDocument(String text) {
   
    //processText();
  }

  /**
   * Take a string that either contains only alphabetic characters, or only
   * sentence-ending punctuation. Return true if the string contains only
   * alphabetic characters, and false if it contains end of sentence punctuation.
   * 
   * @param tok
   *            The string to check
   * @return true if tok is a word, false if it is punctuation.
   */
  private boolean isWord(String tok) {
    // Note: This is a fast way of checking whether a string is a word
    return !(tok.indexOf("!") >= 0 || tok.indexOf(".") >= 0 || tok.indexOf("?") >= 0);
  }

  /**
   * Passes through the text one time to count the number of words, syllables and
   * sentences, and set the member variables appropriately. Words, sentences and
   * syllables are defined as described below.
   */
  //private void processText() {
  //  List<String> tokens = getTokens("[!?.]+|[a-zA-Z]+");
  //  // for (String s : tokens) {

  //  for (int i = 0; i < tokens.size(); i++) {
  //    if (isWord(tokens.get(i)) && i == tokens.size() - 1) {
  //      numSentences++;
  //      numWords++;
  //      numSyllables += countSyllables(tokens.get(i));
  //    } else if (isWord(tokens.get(i)) == true) {
  //      numWords++;
  //      numSyllables += countSyllables(tokens.get(i));
  //    } else {
  //      numSentences++;
  //    }
  //  }
  //}

  /**
   * Get the number of sentences in the document. Sentences are defined as
   * contiguous strings of characters ending in an end of sentence punctuation (.
   * ! or ?) or the last contiguous set of characters in the document, even if
   * they don't end with a punctuation mark.
   * 
   * Check the examples in the main method below for more information.
   * 
   * This method does NOT process the whole text each time it is called. It
   * returns information already stored in the EfficientDocument object.
   * 
   * @return The number of sentences in the document.
   */
  //@Override
  //  public int getNumSentences() {
  //  return numSentences;
  //}

  //@Override
  //  public int getNumWords() {
  //  return numWords;
  //}

  //@Override
  //  public int getNumSyllables() {
  //  return numSyllables;
  //}
}
