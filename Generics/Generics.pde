
void setup() {
  ArrayList al=new ArrayList(); 
  al.add("house");
  String item = (String)al.get(0);
  println("1. "+item);

  Integer a = new Integer(65);
  int b = 65;
  String foo = new String("A new String");

  MyClass<Integer> two = new MyClass<Integer>(a);
  System.out.println("2. "+two.get());

  MyClass<Integer> three = new MyClass<Integer>(b);
  System.out.println("3. "+three.get());

  MyClass<String> first = new MyClass<String>("first: "+foo);
  System.out.println("4. "+first.get());

  MyClass<String> second = new MyClass<String>("second: A new String");
  System.out.println("5. "+second.get());

  // If no equals method is provided, 
  // equals is the one implemented by the class Object
  // that compares references
  // So, you should override the equals method for this class

  if (two.equals(three))
    System.out.println("6. "+"They are equal");
  else
    System.out.println("7. "+"They are different");

  if (second.equals(first))
    System.out.println("8. "+"They are equal");
  else
    System.out.println("9. "+"They are different");

  MyClass<String> x = new MyClass<String>("x");
  MyClass<String> n1 = new MyClass<String>(null);
  MyClass<String> n2 = new MyClass<String>(null);
  System.out.println("10. "+n1.get());
  System.out.println("11. "+n2.get());
  if (n1.equals(n2) && n2.equals(n1)) {
    System.out.println("12. "+"They are equal");
  } else {
    System.out.println("13. "+"They are different");
  }
  System.out.println("14. "+n1.get());
  System.out.println("15. "+x.get());
  if (n1.equals(x) || x.equals(n1)) {
    System.out.println("16. "+"They are equal (error)");
  } else {
    System.out.println("17. "+"They are different (ok)");
  }

  MyClass<String>  se = new MyClass<String>("e");
  MyClass<Float> ie = new MyClass<Float>(2.71828);
  System.out.println("18. "+se.get());
  System.out.println("19. "+ie.get());
  if (se.equals(ie) || ie.equals(se)) {
    System.out.println("20. "+"They are equal (error)");
  } else {
    System.out.println("21. "+"They are different (ok)");
  }

  println("22. "+"A".hashCode());
  println("23. "+a.hashCode());
}
