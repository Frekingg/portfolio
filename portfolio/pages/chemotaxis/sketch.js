'use strict';

var b = new Array();

var wand;
var smile;
var face;
var startX = 475;
var startY = 125;
var endX = 1000;
var endY = 0;
var startTime;
var speed = (Math.random() * 2) + 1;
var blo = false;
var t = 0;
var t2 = 0;
var x = 475;
var y = 125;
var xVel = 0;
var yVel = 0;


function preload() {
    wand = loadImage("../../images/wand.png");
    wand.resize(100, 250);
    smile = loadImage("../../images/smile2.png");
    smile.resize(200, 200);
    face = loadImage("../../images/oface.png");
    face.resize(200, 200);

}

function setup() {
    createCanvas(700, 500);
    for (var i = 0; i < 25; i++) {
        b[i] = new Bacteria(450, height / 2);
    }

}



function draw() {
    background(0);
    wand.resize(100, 250);

    if (!blo) {
        t2++;
        if (t2 > 80) {
            t2 = 0;
            blo = true;
        }
    }
    if (blo) {
        image(face, 125, 125);
        face.resize(200, 200);

        for (var i = 0; i < b.length; i++) {
            b[i].show();
            b[i].move();
        }
        t++;
        if (t > 100) {
            t = 0;
            for (var i = 0; i < b.length; i++) {
                b[i].reset();
            }
            blo = false;
        }
    }

    image(wand, 400, 250);
    if (!blo)
        image(smile, 125, 125);
        smile.resize(200, 200);


}



class Bacteria {


    constructor(x, y) {
        this.x = x;
        this.y = y;
        this.xVel = (Math.random() * 5 + 1);
        //this.yVel=0;
        this.k = Math.random();
        this.yDir=0;
        if (this.k < 0.5) {
            this.yDir = -1;
        } else {
            this.yDir = 1;
        }
        this.yVel = this.yDir * (Math.random() * 5 + 1);
        //this.col=col;
    }
    move() {
        this.x += this.xVel;
        this.y += this.yVel;

    }
    show() {
        fill(130, 184, 201, 60);
        ellipse(this.x, this.y, 40, 40);

    }
    reset() {
        this.x = 450;
        this.y = height / 2;

    }

}
