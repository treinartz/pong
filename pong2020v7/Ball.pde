class Ball {
    float x;
    float y;
    float s;
    float c;
    float xspeed=5;
    float yspeed=.9;
    float xvelocity=.02;
    //float yvelocity=.02;
    float angle=1;
    float radius=5;
    int count=0;


    public Ball() {
    }
    public Ball(float x, float y, float s) {
        this.x=x;
        this.y=y;
        this.s=s;
        //reset();
    }

    void move() {
        //yspeed+=yvelocity;
        this.x+=xspeed;
        this.y+=yspeed;
        edges();
    }

    void edges() {
        //if (this.x+s/2>300) {
        if (this.x+s/2>300) {
            float angle=random(TWO_PI);
            yspeed=radius*sin(angle);
            xspeed*=-1;
        }
        //if (this.x-s/2<0) {
        if (this.x-s/2<0) {
            //float angle=random(TWO_PI);
            //yspeed=4*sin(angle);
            println(this.x);
            xspeed*=-1;
        }


        if (this.y+s/2>300) {
            //float angle=random(TWO_PI);
            float angle=random(0, PI);//or this
            //https://www.youtube.com/watch?v=14w_FEzsX0I
            this.y=300-this.s/2;//set to where it landed to avoid stuck
            xspeed=4*cos(angle);
            yspeed*=-1;
        }
        if (this.y-s/2<0) {
            //xspeed=4*cos(angle);
            yspeed*=-1;
        }
    }
    
      

    void show() {
        fill(255);
        ellipse( x, y, s, s);
    }

    void reset() {
        float angle=random(TWO_PI);
        yspeed=radius*sin(angle);
        xspeed=radius*cos(angle);
    }

    //void checkCollision(Paddle p) {
    //    //if (b.getX()-b.getW()/2<p.getX()+p.getW()&&b.getY()+b.getW()/2>p.getY()&&b.getX()+b.getW()/2<p.getH()) {
    //    if (this.getX()-this.getW()/2<p.getX()+p.getW()&&this.y>p.getY()&&this.y<p.getH()) {
    //        //float angle=random(TWO_PI);
    //        //yspeed=-radius*sin(angle);
    //        //xspeed*=-(1+Math.random());
    //        println("hello"+p.getY());

    //        // xspeed = - abs(xspeed) ;
    //        // this.x=p.getX()+p.getH();

    //        xspeed*=-1;
    //        //delay(10);
    //        //xspeed=radius*cos(angle);
    //        println(count++);
    //    }


    //}
    float getX() {
        return x;
    }
    void setX(float x) {
        this.x=x;
    }
    float getY() {
        return y;
    }
    float getW() {
        return s;
    }

    float getSpeedX(Paddle p) {
        float angle=random(-PI/4, PI/4);//effectively xspeed*=-1
        //always points right
        float diff=this.y-(p.getY()-p.getH()/2);
        float rad=radians(45);
        float ang=map(diff, 0, p.getH(), -rad, rad);
        yspeed=radius*sin(ang);//or angle from above
        xspeed=radius*cos(ang);
        
        
        //xspeed+=xvelocity;//can get out of hand
        xspeed+=-xvelocity*.08;//damping slows it down by 20%; or 80% of previous velocity
        // xspeed*=-.5;
        // delay(10);//could use this to prevent sticking

        if (random(1)<0.5) {//50% of the time it'll reverse 
            //from here https://www.youtube.com/watch?v=Ep2N0N6SB6U&list=PLYNGZdVGGmHz_2bC7uCeEc4mtDMTc9wWT
            //the direction headed to the right
            xspeed *= -1;
        }
        this.x=p.getX()+p.getW()+this.x/2;//reset it to where paddle and ball meet
        return xspeed;
    }
    float getSpeedY() {
        if (yspeed<0) {
            // yspeed*=-1;
        }
        return yspeed;
    }
}
