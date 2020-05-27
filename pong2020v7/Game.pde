public class Game {
    Ball b;
    Paddle p;
    int count=0;


    public Game(Ball b, Paddle p) {
        this.b=b;
        this.p=p;
    }
    void run() {

        b.move();
        b.show();
        p.show();
        if (on) {
            p.move();
        }
        //if(checkCollision2()){
        //     b.getSpeedX(p);
        //}
        checkCollision();
    }
    boolean checkCollision2() {
        boolean checkX=b.getX()-b.getW()/2>p.getX()+p.getW();
        boolean checkY=b.getY()+b.getW()/2>p.getY()&&b.getY()-b.getW()/2<p.getH()+p.getY();
        if (checkX||checkY) {
            return false;
        }
        return true;
    }
  
    void checkCollision() {
        println(p.getY());
        if (b.getX()-b.getW()/2<p.getX()+p.getW()&&b.getY()+b.getW()/2>p.getY()&&b.getY()-b.getW()/2<p.getH()+p.getY()) {
            if (b.getX()>p.getX()) {
                b.getSpeedX(p);
                println(count++);
            }
        }
    }
}
///so far to make pong, need boolean on keyPressed and Released
//need paddle size
//the paddle changes direction if it hits one side or another
//it is set to a speed
