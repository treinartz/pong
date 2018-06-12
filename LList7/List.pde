class List {
  
  public Node root = null;

  public List() {
  }
  public void add(int value) {  
    int x = 0;
    int y = 20;
    if (root == null) {
      root = new Node(value, x, y);
    } else {
      x=x+110;
      goright(root, value, x, y);
    }
  }  
  //int
  private void goright(Node node, int value, int x, int y) {
    if (node.first == null) {
      node.first = new Node(value, x, y);
    } else {
      //x*=speed;
      x+=110;
      println("x " +x);
      //y*=2;
      goright(node.first, value, x, y);
    }
  }
  
  
  //String
  public void add(String value) { 
    int x = 60;
    int y = 20;
    if (root == null) {
      root = new Node(value, x, y);
    } else {
      x=x+60;
      goright(root, value, x, y);
    }
  }
  
  //String
  private void goright(Node node, String value, int x, int y) {
    if (node.first == null) {
      node.first = new Node(new String(value), x, y);
    } else {
      //y*=2;
      goright(node.first, value, x, y);
    }
  }
  
  
  
  
  
  

  public void add(String value, int x, int y) {  
    if (root == null) {
      root = new Node(value, x, y);
    } else {
      x=x+100;
      goright(root, value, x, y);
    }
  }
  int size() {
    int count=0;
    Node current = root;
    while (current!=null) {
      current=current.getNext();
      count++;
    }
    return count;
  }
}
