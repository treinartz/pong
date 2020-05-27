
class Snake {
    int x;
    int y;
    int xspeed = 1;
    int yspeed = 0;
    Pos [] coords;

    public Snake() {
        this.x=0;
        this.y=0;
        coords=new Pos[100];
    }

    void dir(int x, int y) {
        this.xspeed = x;
        this.yspeed = y;
    }
    boolean eatFood(float px, float py) {//
        float d=dist(this.x, this.y, px, py);
        if (d<1) {
            total++;
            return true;
        }
        return false;
    }
    void update() {
        for (int i=total-1; i>=0; i--) {
            coords[i+1]=coords[i];
        }
        this.x=this.x+this.xspeed*scl;
        this.y=this.y+this.yspeed*scl;
        /// if (total >= 1) {
        coords[0]=new Pos(this.x, this.y);
        //}
        this.x=constrain(this.x, 0, width-scl);
        this.y=constrain(this.y, 0, height-scl);
    }

    void display() {
        fill(0, 255, 0);
        for (int i=total-1; i>=0; i--) {
            rect(coords[i].posx, coords[i].posy, scl, scl);
        }
        fill(255);
        rect(this.x, this.y, scl, scl);
    }
}
