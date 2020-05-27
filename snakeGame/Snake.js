class Snake {
    constructor() {
        this.x = 0;
        this.y = 0;
        this.xspeed = 1;
        this.yspeed = 0;
        this.tail = [];
        this.tail[0] = createVector(floor(200 / 2), floor(200 / 2));
        this.total = 1;
        this.newTail = {};

    }
    dir(x, y) {
        this.xspeed = x;
        this.yspeed = y;
    }

    eat(pos) {
        var d = dist(this.x, this.y, pos.x, pos.y);
        if (d < 1) {
            this.total++; //total only goes up when it eats, otherwise, in update, new head is created over and over
            return true;
        } else {
            return false;
        }
    }

    eatFood(pos) {
        end = snake[snake.length - 1];
        console.log("end " + end.x);
        let top = end.getY() + scl > ypos;
        let right = end.getX() + scl > xpos;
        let bottom = end.getY() < ypos + scl;
        let left = end.getX() < xpos + scl;
        if (top && right && bottom && left)
            return true;
        return false;
    }

    update() {
        for (var i = 0; i < this.tail.length - 1; i++) { //first shift down
            this.tail[i] = this.tail[i + 1];
            console.log("tailx " + this.tail[i].x);
        }
        this.x = this.x + this.xspeed * scl; //then increment to a new space
        this.y = this.y + this.yspeed * scl;

        if (this.total >= 1) {
            this.newTail = { //create new tail positions at the incremented spot
                x: this.x,
                y: this.y
            }
            //this.tail[this.total - 1] = createVector(this.x, this.y);
            this.tail[this.total - 1] = this.newTail; //assign the new positions to the end
        }
        this.constraint();
        //this.x=constrain(this.x, 0, this.x-scl);
        //this.y=constrain(this.y, 0, this.y-scl);
    }
    show() {
        for (var i = 0; i < this.total; i++) {
            fill(255);
            rect(this.tail[i].x, this.tail[i].y, scl, scl);
        }
        fill(255, 0, 0);
        rect(this.x, this.y, scl, scl);
    }
    constraint() {
        if (this.x + scl > width) {
            this.x = width - scl;
        } else if (this.x < 0) {
            this.x = 0;
        } else if (this.y + scl > height) {
            this.y = height - scl;
        } else if (this.y < 0) {
            this.y = 0;
        }
    }
}