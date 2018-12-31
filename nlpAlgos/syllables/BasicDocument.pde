class BasicDocument {

  String str;
  int words;
  int sentences;
  int syllables;
  public BasicDocument() {
   

  }

  public boolean testCase(StringParser s, int syllables, int words, int sentences) {
    System.out.println("Testing text: ");
    //System.out.print(doc.getText() + "\n....");
    boolean passed = true;
    int syllFound = s.countSyllables();
    int wordsFound = (int)s.countWords();
    int sentFound = (int)s.countSentences();
    if (syllFound != syllables) {
      System.out.println("\nIncorrect number of syllables.  Found " + syllFound + ", expected " + syllables);
      passed = false;
    }
    if (wordsFound != words) {
      System.out.println("\nIncorrect number of words.  Found " + wordsFound + ", expected " + words);
      passed = false;
    }
    if (sentFound != sentences) {
      System.out.println("\nIncorrect number of sentences.  Found " + sentFound + ", expected " + sentences);
      passed = false;
    }

    if (passed) {
      System.out.println("passed.\n");
    } else {
      System.out.println("FAILED.\n");
    }
    return passed;
  }
}
