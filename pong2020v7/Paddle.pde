public class Paddle {

    float px;
    float py;
    float ph;
    float pw;
    
    public Paddle() {
    }
    public Paddle(float x, float y, float w, float h) {
        this.px=x;
        this.py=y;
        this.ph=h;
        this.pw=w;
        py=pychange;
    }

    void move() {
        //py = constrain(py, ph/2, 300-ph/2);
        if (keyCode==UP) {
            py-=pychange;
        }
        if (keyCode==DOWN) {
            py+=pychange;
        }
        limitPaddle();
    }
    void show() {
        fill(255);
        rect(px, py, pw, ph);
    }

    void limitPaddle() {
        if (py-ph+100<0) {
            py+=pychange;
        }
        if (py+ph>300) {
            py-=pychange;
        }
    }

    float getX() {
        return px;
    }

    float getY() {
       
        return py;
    }

    float getW() {
        return pw;
    }

    float getH() {
        return ph;
    }
}
