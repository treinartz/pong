let s;
let scl = 20;
let food;
let xpos = 20;
let ypos = 30;
let snake = new Array();
let len;
let end;
let pos = {
    x: this.x,
    y: this.y
}

function setup() {
    createCanvas(400, 400);
    s = new Snake();
    frameRate(4);
    addFood();
}

function draw() {
    background(0);
    s.update();
    s.show();
    if (s.eat(pos)) {
        addFood();
    }
    fill(0, 0, 255);
    rect(pos.x, pos.y, scl, scl);
}

function pickLocaton() {
    var cols = floor(width / scl);
    var rows = floor(height / scl);
}

function addFood() {
    pos.x = floor(random(0, width / scl));
    pos.y = floor(random(0, height / scl));
    pos.x = pos.x * scl;
    pos.y = pos.y * scl;
    fill(255);
    //rect(pos.x, pos.y, scl, scl);
}

function keyPressed() {
    if (keyCode == UP_ARROW) {
        s.dir(0, -1);
        console.log("up");
    } else if (keyCode == DOWN_ARROW) {
        s.dir(0, 1);
    } else if (keyCode == LEFT_ARROW) {
        s.dir(-1, 0);
    } else if (keyCode == RIGHT_ARROW) {
        s.dir(1, 0);
    }
}