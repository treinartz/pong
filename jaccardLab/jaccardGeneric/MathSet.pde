import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import static java.lang.System.*;

public class MathSet<E> {
  private Set<E> one;
  private Set<E> two;

  public MathSet() {
    one = new TreeSet<E>();
    two = new TreeSet<E>();
  }

  public MathSet(String o, String t) {
    one = new TreeSet<E>();
    two = new TreeSet<E>();
    for (String s : o.split(" ")) {
      one.add((E)s);
    }
    for (String w : t.split(" ")) {
      two.add((E)w);
    }
  }

  public Set<E> union() {
    TreeSet<E> union = new TreeSet<E>();
    union.addAll(one);
    union.addAll(two);
    return union;
  }

  public Set<E> intersection() {
    TreeSet<E> inter = new TreeSet<E>();
    inter.addAll(one);
    inter.retainAll(two);
    return inter;
  }

  public Set<E> differenceAMinusB() {
    TreeSet<E> diff = new TreeSet<E>();
    diff.addAll(one);
    diff.removeAll(two);
    return diff;
  }

  public Set<E> differenceBMinusA() {
    TreeSet<E> diff = new TreeSet<E>();
    diff.addAll(two);
    diff.removeAll(one);
    return diff;
  }

  public Set<E> symmetricDifference() {
    //TreeSet<Integer> diff = new TreeSet<Integer>();
    //diff.addAll(differenceAMinusB());
    //diff.addAll(differenceBMinusA());    
    //return diff;

    //or
    Set<E> diff = union();
    diff.removeAll(intersection());
    return diff;
  }  

  public String toString() {
    return "Set one " + one + "\n" +  "Set two " + two +  "\n";
  }
}
