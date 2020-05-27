Snake s;
Grid g;

int rows=400;
int cols=400;
int scl=20;
int posx=scl;
int posy=scl;
int reduce=rows/scl;
int total=1;

void setup() {
    size(400, 400);

    s=new Snake();
    g=new Grid(500, 500, scl);
    frameRate(5);
    addFood();
}

void draw() {
    background(0);

    s.update();
    s.display();

    g.show();
    if (s.eatFood(posx, posy)) {
        addFood();
    }
    fill(0, 0, 255);
    rect(posx, posy, scl, scl);
}
void addFood() {
    posx=(int)(random(rows/scl));
    posy=(int)(random(cols/scl));
    posx=posx*scl;
    posy=posy*scl;
}

void keyPressed() {
    if (keyCode==UP) {
        s.dir(0, -1);
    } else if (keyCode==RIGHT) {
        s.dir(1, 0);
    } else if (keyCode==DOWN) {
        s.dir(0, 1);
    } else if (keyCode==LEFT) {
        s.dir(-1, 0);
    }
}
