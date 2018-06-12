class Node {
  Data data = null;
  Node first = null;

  Node(String s, int x, int y) {
    this.data = new Data(s, new Position(x, y));
  }

  Node(String s, int x, int y, Node n) {
    first=n;
    this.data = new Data(s, new Position(x, y));
  }

  Node(int value, int x, int y) {
    this.data = new Data(value, new Position(x, y));
  }

  public Node getNext() {
    return this.first;
  }

  public void setNext(Node next) {
    this.first = next;
  }
}
