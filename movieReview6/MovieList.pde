import java.util.Scanner;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;
import static java.lang.System.*;
import java.util.Iterator;

public class MovieList {
  private ArrayList<Movie> myList;
  int reviewScore;
  String reviewText="";
  int totalCount;
  int savedTime;
  int totalTime=2000;
  int num;

  public MovieList() {
    myList = new ArrayList<Movie>();
    savedTime=millis();
  }

  void checkFile() {
    while (reviewScanner.hasNext()) {
      reviewScore = reviewScanner.nextInt();
      reviewText = reviewScanner.nextLine();

      if (reviewText.contains(word)) {
        myList.add(new Movie(reviewScore, reviewText));
        //System.out.println("Score: "+reviewScore);
        totalScore+=reviewScore;
        count++;
        //System.out.println("Text: "+reviewText);
      }
    }
    printToScreen();
    test=false;
    totalScore*=100;
    totalScore=(int)totalScore/count;
    totalScore=(double)totalScore/100;
  }


  public void printToScreen() {//could add more for each rating here
    Collections.sort(myList);
    Iterator <Movie> it=myList.iterator();
    while (it.hasNext()) {
      if (it.next().getRatings()==4) {
        count4++;
        totalCount=count4;
      }
    }
  }

  public void makeViz() {//count add more interesting viz here
    fill(255);
    rect(10, height, 10, -totalCount*5);
    textSize(20);
    text("num 4's: "+totalCount, 10, 80);
    println(totalCount);
    seeResults();
  }
  
  void seeResults() {
    int passedTime = millis() - savedTime;
    if (passedTime>totalTime) {  
      num=(int)(Math.random()*myList.size());
      savedTime=millis();
    }

    fill(255);
    textSize(18);
    if (num!=0)
      text(myList.get(num).getReviews(), 25, 180);
  }
  
  public void getSort() {
    Collections.sort(myList);
  }

  public String getMostFrequentRating() {
    Movie m1 = null;
    int max = 0;
    for (Movie m : myList) {
      if (m.getRatings() > max) {
        max = m.getRatings();
        m1 = m;
      }
    }
    return "max rating == \n" + m1.getReviews() + ", " + max;
  }
  
    public String toString() {
    return myList.toString() + "\n" + getMostFrequentRating();
  }
  
  //public void loadMovies(int rating, String review) {//started here, not same data as Toy
  //  Scanner scan = new Scanner(movies);
  //  while (scan.hasNext()) {
  //    String s = scan.next();
  //    if (getThatMovie(s) != null)
  //      getThatMovie(s).setRatings(getThatMovie(s).getRatings() + 1);
  //    else
  //      myList.add(new Movie(s));
  //  }
  //}

  //public Movie getThatMovie(String nm) {
  //  for (Movie m : myList) {
  //    if (m.getReviews().equals(nm)) {
  //      return m;
  //    }
  //  }
  //  return null;
  //}

}
