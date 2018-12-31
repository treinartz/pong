public class StringParser {
  
  String txt;
  String text;
  String[] words;
  String[] sentence;
  char[] cArray;

  public StringParser() {
  }
  
   public StringParser(String s) {
     txt=s;
     text=s.toLowerCase();
     words=text.split("[\\,!;\"\\s]+");
     sentence=text.split("[\\!.]");
     cArray=text.toCharArray();
  }
  public int countWords() {
    return words.length;
  }

  public int countVowels() {
    int vow=0;
    for (int i=0; i<cArray.length; i++) {
      if (cArray[i]=='a'||cArray[i]=='e'||cArray[i]=='i'||cArray[i]=='o'||cArray[i]=='u'||cArray[i]=='y') {//could also make a for loop
        vow++;
      }
    }
    return vow;
  }
  public int exceptions() {
    int dob=0;
    for (int i=0; i<cArray.length-1; i++) {
      if (cArray[i] == 'a' || cArray[i] == 'e' || cArray[i] == 'i' ||cArray[i] == 'o' || cArray[i] == 'u' || cArray[i] == 'y') {
        if (cArray[i+1] == 'a' || cArray[i+1] == 'e' || cArray[i+1] == 'i' ||cArray[i+1] == 'o' || cArray[i+1] == 'u' || cArray[i+1] == 'y') {
          dob++;
        }
      }
    }

    for (int i=0; i<cArray.length-1; i++) {
      if (cArray[i]=='e') {
        if (cArray[i+1]==' ') {
          dob++;
        }
      }
    }
    return dob;
  }
  public int countSyllables() {
    int syl=0;
    int tVow=countVowels();
    int ex=exceptions();
    syl=tVow-ex;
    return syl;
  }
  public int countSentences() {
    return sentence.length;
  }


  public float ease() {
    float e=0;
    float tSent=(float)countSentences();
    float tW=(float)countWords();
    float tSyl=(float)countSyllables();
    e=206.835-1.015 *(tW/tSent)-84.6 *(tSyl/tW);
    return e;
  }
  public String level() {
    String level="";
   float e=ease();
    if(e>=90){
      level="Fifth Grade Reading Level";
    }
    else if(e<90&&e>=80){
      level="Sixth Grade Reading Level";
    }
    else if(e<80&&e>=70){
      level="Seventh Grade Reading Level";
    }
    else if(e<70&&e>=60){
      level="Eighth/Ninth Grade Reading Level";
    }
    else if(e<60&&e>=50){
      level="Tenth/ Eleventh Grade Reading Level";
    }
    else if(e<50&&e>=30){
      level="College Reading Level";
    }
    else{
      level="College Graduate Reading Level";
    }

    return level;
  }
}
