import java.util.Arrays;
//row*width + column
//https://eli.thegreenplace.net/2015/memory-layout-of-multi-dimensional-arrays
//https://www.youtube.com/watch?v=D8UgRyRnvXU  at 6:50
//https://en.wikipedia.org/wiki/Maze_generation_algorithm#Recursive_backtracker
//check out highlight() https://github.com/acs-2019-2020/summer19Work/blob/master/reinartzMaze2/Cell.pde

int [][]nums=new int [3][3];
void setup() {
  int[] oneD = {1, 2, 3, 4, 5, 6};
  int w = 3;
  int h = 2;
  int[][] twoD = new int[h][w];
  int[] oneDReversed = new int[oneD.length];

  for (int i = 0; i < h; i++) {
    for (int j = 0; j < w; j++) {
      twoD[i][j] = oneD[i*w+j];
    }
  }
  for (int i = 0; i < h; i++) {
    for (int j = 0; j < w; j++) {
      print(twoD[i][j]);
    }
    println();
  }

  for (int i = 0; i < w*h; i++) {
    oneDReversed[i] = twoD[(i / w)][(i%w)];
  }
}
