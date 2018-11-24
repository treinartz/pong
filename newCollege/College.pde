//this is the model...models the object
class College implements Comparable <College>{
  private String name;
  private String gpa;
  private String enroll;

  College(String n, String g, String en) {
    name=n;
    gpa=g;
    enroll=en;
  }
  
  int compareTo(College c){
    if(this.getEnroll()>c.getEnroll()){
      return 1;
    }else if(this.getEnroll()<c.getEnroll()){
      return -1;
    }
    return 0;
  }

  int getAverage() {
    String [] str=getGpa().split("-");
    int total=Integer.parseInt(str[0])+Integer.parseInt(str[1]);
    int ave=(total/2);
    return ave;
  }
  String getCollege() {
    return name;
  }
  String getGpa() {
    return gpa;
  }
  int getEnroll() {
    return Integer.parseInt(enroll);
  }
  public String toString() {
    String s="";
    return name +" " + gpa+ " " + enroll;
  }
}