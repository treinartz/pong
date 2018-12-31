

//https://www.programmingassignmenthelper.com/generic-operations/
void setup(){
   Integer[] intArray = { 5, 4, 3, 1, 2 };
    Float[] doubleArray = { 5.10, 2.20, 3.40, 1.40 };
    Character[] charArray = { 'H', 'E', 'L', 'L', 'O' };
    String[] stringArray={"sadsd", "dasafe", "4rrwe", "mkvg"};
    GenericMethodTest gm=new GenericMethodTest();

    println("Array integerArray contains:");
    printArray(intArray);
    println("Sorted integerArray contains:");
    gm.sortArray(intArray);

    println("\nArray doubleArray contains:");
    printArray(doubleArray);
    println("Sorted doubleArray contains:");
    gm.sortArray(doubleArray);

    println("\nArray charArray contains:");
    printArray(charArray);
    println("Sorted charArray contains:");
    gm.sortArray(charArray);
    
    println("\nArray stringArray contains:");
    printArray(stringArray);
    println("Sorted stringArray contains:");
    gm.sortArray(stringArray);
}


public class GenericMethodTest {
  // generic method printArray O(n)
  public < E > void printArray( E[] inputArray ) {
    // Display array elements
    for (E element : inputArray) {
      System.out.printf("%s ", element);
    }
    System.out.println();
  }

  // generic method sort Array O(n^2)
  public <E extends Comparable<E>> void sortArray(E[] inputArray) {
    for (int i=0; i<inputArray.length; i++) {
      for (int j=i+1; j<inputArray.length; j++) {
        E max=maximum(inputArray[i], inputArray[j]);
        if (max.equals(inputArray[i])) {
          inputArray[i]=inputArray[j];
          inputArray[j]=max;
        }
      }
    }
    printArray(inputArray);
  }

  public <E extends Comparable<E>> E maximum(E x, E y) {
    E max = x;   // assume x is initially the largest
    if (y.compareTo(max) > 0) {
      max = y;   // y is the largest so far
    }
    return max;   // returns the largest object
  }
}
