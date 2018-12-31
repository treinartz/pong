int num=100;
int xPos=1;
int [] numbers=new int[num];
int i=0;
int minIndex;
void setup() {
  size(600, 400);
  for (int i=0; i<numbers.length; i++) {
    numbers[i]=(int)(Math.random()*height)+5;
  }
  frameRate(4);
}


void draw() {
  makeRectangles();
  if (i<num) {
    //selectionSort();
    insertionSort();
  }
}

void makeRectangles() {
  background(0);
  xPos=width/num;

  for (int k=0; k<numbers.length; k++) {
    if (k<i) {
      fill(0, 255, 0);
    } else {
      fill(255);
    }
    rect(k*xPos, height-numbers[k], xPos, numbers[k]);
  }
}

void insertionSort() {

  for (int j = i; j > 0; j--) {
    if (numbers[j] < numbers[j-1]) {
      int temp = numbers[j];
      numbers[j] = numbers[j-1];
      numbers[j-1] = temp;
     
    }
  }
  i++;
}


void selectionSort() {
  minIndex=i;
  for (int j=i; j<numbers.length; j++) {
    if (numbers[minIndex]>numbers[j]) {
      minIndex=j;
    }
  }
  int temp=numbers[minIndex];
  numbers[minIndex]=numbers[i];
  numbers[i]=temp;
  i++;
}
