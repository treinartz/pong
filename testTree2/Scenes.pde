public class Scenes implements Comparable {
  PImage img;
  public Scenes() {
  }

  void scene0() {
    img = loadImage("data/blue.jpg");
    image(img, 0, 0, 400, 200);
  }

  void scene1() {
    img = loadImage("data/txel.png");
    image(img, 0, 0, 400, 200);
  }
  void scene2() {
    img = loadImage("data/augs.jpg");
    image(img, 0, 0, 400, 200);
  }
  int compareTo(Object o) {
    return -1;
  }
}
