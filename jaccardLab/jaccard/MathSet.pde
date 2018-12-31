import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import static java.lang.System.*;

public class MathSet
{
  private Set<Integer> one;
  private Set<Integer> two;

  public MathSet()
  {
    one = new TreeSet<Integer>();
    two = new TreeSet<Integer>();
  }

  public MathSet(String o, String t)
  {
    one = new TreeSet<Integer>();
    two = new TreeSet<Integer>();
    for (String s : o.split(" ")) {
      one.add(Integer.parseInt(s));
    }
    for (String w : t.split(" ")) {
      two.add(Integer.parseInt(w));
    }
  }

  public Set<Integer> union() {
    TreeSet<Integer> union = new TreeSet<Integer>();
    union.addAll(one);
    union.addAll(two);
    return union;
  }

  public Set<Integer> intersection() {
    TreeSet<Integer> inter = new TreeSet<Integer>();
    inter.addAll(one);
    inter.retainAll(two);
    return inter;
  }

  public Set<Integer> differenceAMinusB() {
    TreeSet<Integer> diff = new TreeSet<Integer>();
    diff.addAll(one);
    diff.removeAll(two);
    return diff;
  }

  public Set<Integer> differenceBMinusA() {
    TreeSet<Integer> diff = new TreeSet<Integer>();
    diff.addAll(two);
    diff.removeAll(one);
    return diff;
  }

  public Set<Integer> symmetricDifference() {
    //TreeSet<Integer> diff = new TreeSet<Integer>();
    //diff.addAll(differenceAMinusB());
    //diff.addAll(differenceBMinusA());    
    //return diff;

    //or
    Set<Integer> diff = union();
    diff.removeAll(intersection());
    return diff;
  }  

  public String toString(){
    return "Set one " + one + "\n" +  "Set two " + two +  "\n";
  }
}
