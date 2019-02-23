
import java.util.Stack;
class Tower {
  Stack<Disc> tower;

  public Tower() {
    tower=new Stack<Disc>();
  }

  public void loadTower(Disc d) {
    tower.push(d);
  }

  public int tSize() {
    return tower.size();
  }
  public boolean isDisc() {
    if (tower.isEmpty())
      return true;
    return false;
  }

  public Disc getDisc() {
    Disc r=new Disc();
    if (!tower.isEmpty()) {
      r= tower.pop();
    }
    return r;
  }

  public void popEmAll() {
    while (!tower.isEmpty()) {
      Disc d=tower.pop();
      d.showStack();
    }
  }
}
