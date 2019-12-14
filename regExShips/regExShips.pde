import java.util.Scanner;
void setup(){
  String result = "";
    try {
      Scanner scan = new Scanner(new File("/home/thomas/Desktop/backedUpDec8.2019/december19/acsT2/stringsExceptionsRegEx19/10.1ACST22019/5.regEx/sampleRegEx/regExShips/ships.dat"));
      while (scan.hasNext()) {
        String s = scan.nextLine();
        //\s[.A-Za-z]*$
        //result += s.replaceAll("(\\s|\\*)\\s{2,}[0-9/\\s.]+|[0-9]/\\d+/..", " ");//1
        result += s.replaceAll("(\\s|\\*|\\+|\\W){1,}[0-9/\\s.]+", " starthere");//2
        result += "\n";
      }

    } catch (Exception e) {
      e.printStackTrace();
    }
    System.out.println(result);
    System.out.println();
    String result2 = "";
    Scanner scan2 = new Scanner(result);
    while (scan2.hasNext()) {
      String str = scan2.nextLine();
      //result2 += str.replaceAll("[^a-z]? (.+)", " ");//1
      result2 += str.replaceAll("[^\\S](starthere)\\w+.\\w+.\\w+.\\w+", " ");//2
      result2 += "\n";
    }
    System.out.println(result2);//
  

  }

  
