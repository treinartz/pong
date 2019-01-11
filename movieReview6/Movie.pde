public class Movie implements Comparable<Movie> {
  int rating;
  String review;

  public Movie(int ra, String re) {
    rating=ra;
    review=re;
  }

  public int getRatings() {
    return rating;
  }
  
  public void setRatings(int r) {
    rating=r;
  }

  public String getReviews() {
    return review;
  }

  public int compareTo(Movie other) {
    if (this.rating>other.rating) {
      return 1;
    } else if (this.rating<other.rating) {
      return -1;
    }
    return 0;
  }
  public String toString() {
    return rating+ " "+review;
  }
}
