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
    //println(savedTime);
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
    printStuff();

    test=false;
    totalScore=totalScore*100;
    totalScore=(int)totalScore/count;
    totalScore=(double)totalScore/100;
  }

  void seeResults() {
    Iterator <Movie> it=myList.iterator();
    int passedTime = millis() - savedTime;
    if (passedTime>totalTime) {  
      num=(int)(Math.random()*myList.size());
      savedTime=millis();
    }
    
    fill(255);
    textSize(20);
    if(num!=0)
    text(myList.get(num).getReviews(), 20, 180);
  }
  public void printStuff() {
    Collections.sort(myList);
    for (Movie m : myList) {
      if (m.getRatings()==4) {
        count4++;
        totalCount=count4;
      }
      println(m);
    }
  }

  public void makeViz() {
    fill(255);
    rect(10, height, 10, -totalCount*5);
    textSize(20);
    text("num 4's: "+totalCount, 10, 80);
    println(totalCount);
    seeResults();
  }

  //public void loadMovies(int rating, String review) {
  //  Scanner scan = new Scanner(movies);
  //  while (scan.hasNext()) {
  //    String s = scan.next();
  //    if (getThatMovie(s) != null)
  //      getThatMovie(s).setRatings(getThatMovie(s).getRatings() + 1);
  //    else
  //      myList.add(new Movie(s));
  //  }
  //}

  public Movie getThatMovie(String nm) {
    for (Movie m : myList) {
      if (m.getReviews().equals(nm)) {
        return m;
      }
    }
    return null;
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
    return "max == " + m1.getReviews() + ", " + max;
  }

  public String toString() {
    return myList.toString() + "\n" + getMostFrequentRating();
  }
}
