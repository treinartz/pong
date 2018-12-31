

// This program demonstrates the use of Java's Set collection.
// The program originally used a List, but a Set is faster for this example.

import java.io.*;
import java.util.*;
Scanner input;
void setup() {
  try {
    Set<String> words = new HashSet<String>();

     input= new Scanner(new File("Desktop/steppDataStructsProcessing/sets/theBible.txt"));
    while (input.hasNext()) {
      String word = input.next();
      // don't need to call contains because Set already avoids duplicates
      // if (!words.contains(word)) {
      words.add(word);
      // }
    }

    System.out.println("There are " + words.size() + " unique words.");

    // use a "for-each" loop to loop over the elements of a Set
    for (String w : words) {
      System.out.println(w);
    }
  }
  catch(Exception e) {
    println(e);
  }
}
