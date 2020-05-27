
public class Grid {

    int rows;
    int cols;
    int x;
    int y;
    int len;
    public Grid(int rows, int cols, int len) {
        this.rows=rows;
        this.cols=cols;
        this.len=len;
        stroke(255, 0, 0);
        strokeWeight(1);
    }

    void show() {
        for (x=0; x<rows; x+=len) {
            for (y=0; y<cols; y+=len) {
                top();
                right();
                bottom();
                left();
            }
        }
    }

    void top() {
        line(x, y, x+len, y);//top
    }
    void right() {
        line(x, y, x, y+len);//right
    }
    void bottom() {
        line(x, y, x-len, y);//bottom
    }
    void left() {
        line(x, y, x, y-len);//left
    }
}
