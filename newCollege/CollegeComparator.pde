import java.util.Comparator;
class CollegeComparator implements Comparator<College> {

  @Override
    int compare(College c1, College c2) {
    if (c1.getAverage()>c2.getAverage()) {
      return 1;
    } else if (c1.getAverage()<c2.getAverage()) {
      return -1;
    }
    return 0;
  }
}