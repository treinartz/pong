import java.util.List;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Arrays;
//https://www.javacodegeeks.com/2018/01/deal-concurrentmodificationexception-java-beware-removing-elements-arraylist-loop.html
//javarevisited.blogspot.com/2018/01/concurrentmodificationexception-while-removing-elements-from-ArrayList-in-loop-Java-solution.html#ixzz5aWGZfL1C


List<String> listOfBooks = new ArrayList<String>();  
listOfBooks.add("Great Gatsby");
listOfBooks.add("Catcher in the Rye");
listOfBooks.add("Our Town");
listOfBooks.add("Raisin in the Sun");
listOfBooks.add("Slaughterhouse 5");


System.out.println("List before : " + listOfBooks); 
for (int i=0; i<listOfBooks.size(); i++) { 
  String book = listOfBooks.get(i); 
  if (book.contains("Great")) { 
    System.out.println("Removing: " + book); 
    listOfBooks.remove(i); // will not throw CME..not using Iterator
  }
} 
System.out.println("List after : " + listOfBooks);
println();

for (String book : listOfBooks) {
  if (book.contains("Rye")) {
    //listOfBooks.remove(book);
  }
}

System.out.println("List before : " + listOfBooks);
Iterator<String> it = listOfBooks.iterator();
while (it.hasNext()) {
  String book = it.next();
  System.out.println("Removing " + book);
  it.remove();
}
System.out.println("List after : " + listOfBooks);



//Iterator<String> iterator = listOfBooks.iterator();
//while (iterator.hasNext()) {
//  String book = iterator.next();
//  listOfBooks.remove(book);
//}
