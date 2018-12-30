import java.lang.Integer;

void setup(){
  String[] data = loadStrings("Homer.txt");
  String[] homer = data[0].split(" ");
  char[][] temp = new char[Integer.parseInt(homer[0])][Integer.parseInt(homer[1])];
  int index = 2; 

      
  for(int i = 0 ; i < temp.length; i++){
    for(int k = 0; k< temp[0].length; k++){
      temp[i][k] =  (char)Integer.parseInt(homer[index]);
      index++;
    }
  }
  for(char[] a : temp){
    System.out.println();
    for (char x : a){
      System.out.print(x);
      
      }
    }
    size(500,500);
}

void draw(){
}