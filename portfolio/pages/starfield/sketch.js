'use strict';

var npArray = new Array();
var opArray = new Array();
var jpArray = new Array();


var earth;
var sun;
var moon;

function preload() {
    earth = loadImage("../../images/earth2.png");
    moon = loadImage("../../images/moon2.png");
    sun = loadImage("../../images/sun2.png");

    //console.log("test");

}

function setup() {
    createCanvas(800, 800);
    //canvas.parent('sketch-div');
    earth.resize(100, 100);
    moon.resize(50, 50);
    sun.resize(200, 200);
    for (var i = 0; i < 500; i++) {
        npArray[i] = new NormalParticle();
    }

    for (var i = 0; i < 1; i++) {
        opArray[i] = new OddballParticle();
    }

    for (var i = 0; i < 1; i++) {
        jpArray[i] = new JumboParticle();
    }
}

function draw() {
    background(0);
    for (var i = 0; i < npArray.length; i++) {
        npArray[i].show();
        npArray[i].move();
    }
    for (var i = 0; i < opArray.length; i++) {
        opArray[i].show();
        opArray[i].move();
        for (var i = 0; i < jpArray.length; i++) {
            jpArray[i].show();
            jpArray[i].move(opArray[i].getX(), opArray[i].getY());
        }
    }
    image(sun, 295, 295);

}


//interface Particle {
//   public function show();
//   public function move();
//}


class NormalParticle {
    // var x, y, angle, speed;
    // var test =0;

    constructor() {
        this.x = width / 2;
        this.y = height / 2;
        this.speed = Math.random() * 7;
        this.angle = (Math.PI * 2) * Math.random();
    }
    move() {
        this.x += Math.cos(this.angle) * this.speed;
        this.y += Math.sin(this.angle) * this.speed;
        //angle += .047;
        this.angle += .02;
    }

    show() {
        //   noStroke();
        fill(255, 90);
        ellipse(this.x, this.y/2 + 215, 8, 8);
    }


}



class OddballParticle {
    // var x, y, angle, speed;
    // var test = 0;


    constructor() {
        this.x = 0;
        this.y = 0;
        this.speed = 13;
        //speed = (float)Math.random()*15;
        this.angle = ((Math.PI * 2) * Math.random());
    }
    move() {
        this.x += Math.cos(this.angle) * this.speed;
        this.y += Math.sin(this.angle) * this.speed;
        //angle += .047;
        this.angle += .047;



        if (this.x > 650) {
            this.x = 650;
        } else if (this.x < 70) {
            this.x = 70;
        }

        if (this.y > 650) {
            this.y = 650;
        } else if (this.y < 70) {
            this.y = 70;
        }
    }

    show() {
        //   noStroke();
        //   if(test == 0){
        //     //randColor();
        //     test = 200;
        //   }
        //     test--;
        //     console.(test);
        image(earth, this.x, this.y);
    }
    getX() {
        return this.x;
    }

    getY() {
        return this.y;
    }
}



class JumboParticle {

    //int test =0;

    constructor() {
        //        let a = x;
        //        let b = y;
        // this.x = 0;
        //this.y = 0;

        //  super.move();
        //        let a = super.getX();
        //        let b = super.getY();
        this.x = 0
        this.y = 0

        this.speed = (Math.random() * 200);
        this.angle = ((Math.PI * 2) * Math.random());


    }
    move(earthX, earthY) {
        this.x = (Math.cos(this.angle) * (this.speed)) + earthX;
        this.y = (Math.sin(this.angle) * (this.speed)) + earthY;
        //        console.log(this.x);
        // + opArray[0].this.y
        this.angle += .07;
    }

    show() {
        //     noStroke();

        image(moon, this.x, this.y);

        // console.log("hello")
    }
}
